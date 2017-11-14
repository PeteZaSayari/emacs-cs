# The Big Emacs Cheat Sheet

## Rationale

I'm studying the IBM Emacs tutorial (you can read the first module at
the IBM Developer Works) and I feel the need of taking note of
what I'm reading. So I started to write this cheat sheet.

I'm studyng XML and XSLT too, so I preferred to use XML to track down
my Emacs commands.


## How to use this cheat sheet.

The body of the cheat sheet is an XML structure contained into the
file `emacs-cs.xml`; since it's provided a stylesheet for the XML
(`tohtml.xsl`), you can read the cheat sheet directly with the web
browser, just like an HTML page. Just put into the same directory both
the files `emacs-cs.xml` and `tohtml.xsl`, then open `emacs-cs.xml`
with your browser. I use firefox and it works; I don't know if other
browsers are good enough.

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
    Scale: Custom > 110%
    Print on file > ~/Desktop/emacs-cs.pdf
    Options > Header and Footer > Right: Page # of #

It takes six sides of A4 sheets.


## Acknowledgements

* The design style for the card is taken from the famous one of
  Stephen Gildea. The TeX source for his card is distributed with
  Emacs in `etc/refcards/`
* The [IBM tutorial][2]
* The section about the Emacs games is taken mostly from the Mickey
  Petersen's blog [Mastering Emacs][3].
* [Emacs Wiki][4]


[2]: https://www.ibm.com/developerworks/aix/tutorials/au-emacs1/index.html
[3]: https://www.masteringemacs.org/article/fun-games-in-emacs
[4]: https://www.emacswiki.org
