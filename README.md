# The Big Emacs Cheat Sheet

## Rationale

I'm reading the IBM Emacs tutorial (to read it follow the link given
in the following sections) and I feel the need of taking note of what
I'm reading. So I started to write this cheat sheet.

I'm studyng XML and XSLT too, so I preferred to use XML to track down
my Emacs commands.


## How to use this cheat sheet.

The body of the cheat sheet is an XML structure contained into the
file `emacs-cs.xml`; since it's provided a stylesheet for the XML
(`tohtml.xsl`), you can read the cheat sheet directly with the web
browser, just like an HTML page. Just put into the same directory 
the files `emacs-cs.xml`, `tohtml.xsl` and `cheatsheet.css`, then open
`emacs-cs.xml` with your browser.

> **Note**: The font management in the CSS file uses some advanced
> features that are (afaik) only supported by Firefox. The font
> rendering on other browsers is highly unpredictable.

The stylesheet contains directives for printing, so you can print the
cheatsheet with the "print" feature of your web browser (again, it is
tested on firefox, I don't know anything about other browsers).

This is the biggest Emacs cheat sheet I've seen on the web. You can
print it on four sides of sheets in A4 format (landscape), or on two
sides of sheets in A3 format (portrait).


## The simple way

I've added the file `emacs-cs.pdf` as a sample of the printed form of
the cheat sheet. I've printed it with firefox with the following
settings:

    Format: A4
    Orientation: landscape
    Scale: Custom > 104%
    Print on file > ~/Desktop/emacs-cs.pdf
    Options > Header and Footer > Bottom Right: Page #

It takes six sides of A4 sheets.

Notably, I've managed the metadata of the PDF file with Emacs.


## Acknowledgements

* The design style for the card is inspired from the [famous one][1]
  of Stephen Gildea.
* Most of the material and it's organization is taken from
  the IBM's [Emacs tutorial][2].
* The section about the Emacs games is taken mostly from the
  Mickey Petersen's blog [Mastering Emacs][3].
* The paragraph about "nXML mode" is taken and adapted from the
  document "*XML document authoring with emacs nxml-mode*" of the
  [New Mexico Tech][6].
* Regular expressions and some other details are taken from
  the [Emacs Wiki][4].
* The sections about abbreviations (or *abbrev* minor mode) and
  *re-builder* are taken and adapted from the [Emacs
  manual][5]*.

<hr />
<small>* All of the listed links were active on november 2017.</small>

[1]: https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf
[2]: https://www.ibm.com/developerworks/aix/tutorials/au-emacs1/index.html
[3]: https://www.masteringemacs.org/article/fun-games-in-emacs
[4]: https://www.emacswiki.org
[5]: https://www.gnu.org/software/emacs/manual/
[6]: http://www.nmt.edu/tcc/help/pubs/nxml/

