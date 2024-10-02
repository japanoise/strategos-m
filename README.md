# Strategos M

A medieval wargame inspired by Dave Wesely's "Valley Forge" and "Strategos N",
and the [Twin Cities group's use of Charles A. L. Totten's
Strategos][twincities] in the pre-historic days of the fantasy roleplaying
hobby.

[twincities]: https://playingattheworld.blogspot.com/2013/01/strategos-in-twin-cities.html

## Downloads

Pre-built PDFs are available [in the releases section of this repository][tags].

[tags]: https://github.com/japanoise/strategos-m/releases

## Building a PDF

- Software: You will need [the typst compiler](https://github.com/typst/typst)
  and a POSIX-compatible /bin/sh installed
- Font: Fonts are provided in `fonts/` directory.

These pre-requisites taken care of, `./build.sh` will build the PDF.  If you
want to work on the PDF with live updates, `./build.sh watch` will instruct
typst to compile the file incrementally.

## License

See LICENSE; LICENSE-FONTS; and COPYING.

Strategos M © 2024 by japanoise is licensed under [CC BY-SA 4.0][ccbysa]

The code in `build.sh` is Copyright © 2024 japanoise licensed under the GNU GPL
Version 3; or, at your option, any later version.

### Fonts

- Balkara - Copyright (c) 2016, Svetlin Balezdrov & Ventsislav Yordanov (<npoekmu.me|npoekmume@gmail.com>).
- Combat Font - By Martin Desinde, 2015.
- Copyright 2024 The Cooper* Project Authors (https://github.com/indestructibletype/Cooper)
- Hyde Copyright 2008 by Andrew Berry
- Old Cupboard - Copyright 2019 Cecil Howe (https://www.coneofnegativeenergy.com)
- TT2020 Font - Copyright (c) 2020 Fredrick R. Brennan (<copypaste@kittens.ph>)

[ccbysa]: https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1
