//lucrarea 2 ex 2

(defrule R0
    (x 0)
    (y 0)
    (z 0)
    =>
    (printout t "F=0" crlf)
    )
(defrule R1
    (x 0)
    (y 0)
    (z 1)
    =>
    (printout t "F=1" crlf)
    )
(defrule R2
    (x 0)
    (y 1)
    (z 0)
    =>
    (printout t "F=0" crlf)
    )
(defrule R3
    (x 0)
    (y 1)
    (z 1)
    =>
    (printout t "F=0" crlf)
    )
(defrule R4
    (x 1)
    (y 0)
    (z 0)
    =>
    (printout t "F=0" crlf)
    )
(defrule R5
    (x 1)
    (y 0)
    (z 1)
    =>
    (printout t "F=0" crlf)
    )
(defrule R6
    (x 1)
    (y 1)
    (z 0)
    =>
    (printout t "F=1" crlf)
    )
(defrule R7
    (x 1)
    (y 1)
    (z 1)
    =>
    (printout t "F=0" crlf)
    )
