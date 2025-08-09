#let homework(
  title: none,
  author: [],
  class: [],
  date: datetime.today(),
  doc
) = {
  set page(
    paper: "us-letter",
    header: context {
      set align(left)

      if counter(page).get().first() > 1 [
        #author
        #h(1fr)
        #class
        #h(1fr)
        #title
      ]
    },
    footer: context [
      #set align(center)
      #set text(10pt)
      #counter(page).display(
        "1 of 1",
        both: true,
      )
    ]
  )
  set par(justify: true)
  set text(
    font: "Libertinus Serif",
    size: 12pt,
  )

  let display_style = "Due: [weekday], [month repr:long] [day padding:none], [year]"
  let display_date = date.display(display_style)

  set align(center)
  text(17pt, smallcaps(title))
  v(15pt, weak: true)
  author
  v(15pt, weak: true)
  class
  v(15pt, weak: true)
  display_date
  v(15pt, weak: true)

  set align(left)
  doc
}


#show: homework.with(
  title: [Title],
  author: [First Last],
  class: [Class],
  date: datetime.today(),
)

