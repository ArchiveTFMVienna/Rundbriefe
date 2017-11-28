## error (Janina)

cannot push or pull, but can commit, the following error appears:

"git did not exit cleanly (exit code 1) (2047 ms @ 28.11.2017 14:39:58)"

# some place to take notes...

## linebreaks

e.g. `data/editions/Rundbrief_002.xml`

```
uschbibliothek, einer thea-
tergeschichtlichen Leihgabe der Stadt Münster, im Umlauf von
```

will render into
> uschbibliothek, einer thea- tergeschichtlichen Leihgabe der Stadt Münster, im Umlauf von

because linebreaks introduced by pressing `enter` are interpreded as simple whitespace

## pagebreaks

here we want whitespaces introduces by pressing `enter` otherwise

e.g. `data/editions/Rundbrief_001.xml`

`Zunächst wird der Verfasserkatalog<pb n="2"/>angelegt,`

will render into
> Zunächst wird der Verfasserkatalogangelegt

## dates

e.g. `data/editions/Rundbrief_002.xml`

` von <date>1800</date> bis <date>1943</date>`

* this encoding 'simply' tells us that `1800` is some kind of date
* in case we want to process this information, we'd need some standard date format like e.g.
  `<date when="01.01.1800">`
  * problem here, as usual in humanities is that we often don't know a precise date - TEI has something like `<date from="..." to="...">`


## well formed and valid

we don't want any red underlines in oXygen because then we have a non valid (or even a not well formed document)

## entities

e.g. `data/editions/Rundbrief_005.xml`

``` xml
Da aber die <orgName type="university" subtype="faculty"
   >Philosophische Fakutltät</orgName> der <orgName type="university">Wiener
   Universität</orgName> weiter <!-- Kategorisierung? Uni > Fakultät > Institut? -->
aufrecht erhalten wurde,
```

To decide: where to store which information and what level of detail


## conventions

formal denomination of the archive: `<institution>`Archiv und Sammlungen des Instituts für Theater-, Film- und Medienwissenschaft der Universität Wien</institution>

signature of the "Rundbriefe" is currently not steady, final `<idno>` will follow
