(defrule R17
    (multime ?nume 2 $?m )
=>
(printout t "nume: " ?nume " elemente:" $?m crlf)
)

(deffacts multimi
    (multime A 4 1 2 3 2)
    (multime B 2 123 55587)
    (multime C 2 666 000)
    (multime D 3 0 0 0)
    (multime E 2 6 6)
    (multime F 5 77 11 33 55 77)
    (multime G 1 123456789)
    (multime H 4 10000000 2000000 300000 400000)
    (multime I 0)
    (multime J 0)
    (multime K 0)
    (multime L 9 0 0 0)
    (multime M 2)
    (multime N 2)
    (multime O 2)
    (multime P 2)
    
)

(defrule R118
    (multime ?nume ?numar $?el)
    (multime ?nume2 ?numar2 $?el)
    =>
    
(printout t "nume: " ?nume  crlf)
)