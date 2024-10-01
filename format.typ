#let heading-font = "Cooper*"
#let body-font = "Hyde"

#let format-modern(doc) = {
    // Set up page
    set page(
        header: context {
            // Reset the footnote counter on each page
            counter(footnote).update(0)
        },
        footer: context {
            // Don't show page number on preamble or end pages
            if (counter(page).get().first() < 2) [
                // Align page numbers to page orientation
            ] else if (calc.rem(counter(page).get().first(), 2) == 0) [
                #counter(page).display(
                    "1"
                )
                #h(1fr)
                Strategos M
                #h(1fr)
            ] else [
                #h(1fr)
                Japanoise
                #h(1fr)
                #counter(page).display(
                    "1"
                )
            ]
        },
        margin: 1cm,
        "us-letter"
    )

    show heading: set text(
        font: heading-font,
        weight: "black"
    )

    set text(font: body-font, 11pt)
    show heading.where(level: 1): set align(center)
    show heading.where(level: 1): set text(18pt)
    show heading.where(level: 2): set text(16pt)
    show heading.where(level: 3): set text(14pt)
    show heading.where(level: 4): set text(12pt)
    show heading.where(level: 3): set heading(outlined: false, bookmarked: true)
    show heading.where(level: 4): set heading(outlined: false, bookmarked: true)

    /*
     * Per docs: https://typst.app/docs/guides/table-guide/
     * "We are using a show rule with a selector for cell
     * coordinates here instead of applying our styles directly
     * to table.header. This is due to a current limitation of
     * Typst that will be fixed in a future release."
     */
    show table.cell.where(y: 0): strong

    set table(
        gutter: auto,
        inset: (x: 3pt, y: 3.7pt),
        fill: (_, y) => (none, none, none, rgb("CFCFCF"), rgb("CFCFCF"), rgb("CFCFCF")).at(calc.rem(y+2, 6)),
        stroke: (x, y) => (
            x: 1pt,
            top: if y <= 1 { 1pt } else { 0pt },
            bottom: 1pt
        ),
    )

    set table.hline(stroke: 1pt)

    doc
}

#let alt-fill(_, y) = (none, none, none, rgb("CFCFCF"), rgb("CFCFCF"), rgb("CFCFCF")).at(calc.rem(y+1, 6))

#let logo(size: 110pt) = text(font: "Old Cupboard", size)[Strategos M]

#let modern-frontispiece = align(center)[
    #align(center)[
        #set block(spacing: 0em)

        #logo()

        #v(1fr)

        #text(font: "Combat", 48pt)[Rules for Medieval Wargaming]

        #v(3fr)

        #image(width: 100%, "img/war.png")

        #v(2fr)

        #text(font: "Old Cupboard", 48pt)[By the Princess Japanoise]
    ]

    #pagebreak()

    #counter(page).update(0)
]

#let subheader(
    rowspan: 1,
    colspan: 1,
    content
) = table.cell(rowspan: rowspan, colspan: colspan, strong(content))

#let frac(
    numerator,
    denominator,
) = text(fractions: true)[#(numerator)/#(denominator)]
