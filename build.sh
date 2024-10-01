#!/usr/bin/env bash

# This program is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see
# <https://www.gnu.org/licenses/>.

# I'm not using a makefile because it's easier to write a shell script.
# Leave me alone.

GITROOT="$(git rev-parse --show-toplevel)"
outdir="${GITROOT}/output"
mkdir -pv "$outdir"

error() {
    echo "$@" >&2
}

typst_wrapper() {
    typst "$@" --font-path "$GITROOT/fonts"
}

build_source() {
    f="$1"
    bn=$(basename -s.typ "$f")
    target="${outdir}/$bn.pdf"

    if ! [ -f "$target" ] || \
            [[ "$(stat -c "%Y" "$f")" > "$(stat -c "%Y" "$target")" ]]
    then
        color_pdf="${outdir}/$bn.pdf"
        color_book="${outdir}/$bn-book.pdf"

        echo "compile $f -> $(basename "$color_pdf")"
        typst_wrapper compile "$f" "$color_pdf" || return 1

        if ! grep -q '^// no booklet' "$f"
        then
            echo "Compiling $color_pdf -> $color_book"
            pdfbook2 --paper=letterpaper -n -s \
                     "$color_pdf" || return 1
        fi
    else
        echo "$bn.pdf already built"
    fi
}

op_build() {
    mkdir -pv "$outdir"
    failures=""
    f=strategos-m.typ
#    for f in strategos-m.typ
#    do
        if ! build_source "$f"
        then
            if [ -z "$failures" ]
            then
                failures="$f"
            else
                failures="$failures, $f"
            fi
        fi
#    done
    if [ -n "$failures" ]
    then
        error "Failed to build: $failures"
        return 1
    fi
}

op_clean() {
    rm -rfv "$outdir"
}

startup_errors=""

essential_command() {
    if ! command -v "$1" >/dev/null
    then
        error "$1 not found - $2"
        startup_errors="$startup_errors
$1 not found"
    fi
}

optional_command() {
    if ! command -v "$1" >/dev/null
    then
        error "$1 not found - $2"
    fi
}

essential_command typst "no typesetting system"
essential_command pdfbook2 "booklets cannot be created"
essential_command exiftool "metadata cannot be edited"

optional_command pdftk "no post-processing available, some optional commands won't work"

if [ -n "$startup_errors" ]
then
    error "cannot build: $startup_errors"
    exit 1
fi

case "$1"
in
    build )
        op_build
        ;;
    clean )
        op_clean
        ;;
    cleanbuild )
        op_clean
        op_build
        ;;
    pages )
        op_pages
        ;;
    watch )
        bn=$(basename -s.typ "$2")
        typst_wrapper watch "$2" "${outdir}/$bn.pdf"
        ;;
    fonts )
        typst_wrapper fonts
        ;;
    * )
        error "Unknown command: $1"
        ;;
esac
