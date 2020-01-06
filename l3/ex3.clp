//lucrare 2 ex 4

(defrule R1
    (x 0)
    (S 0)
    =>
    (assert (S 1))
    (printout t "S1" crlf)
    )
(defrule R2
    (x 0)
    (S 1)
    =>
    (assert (S 2))
    (printout t "S1" crlf)
    )
(defrule R3
    (x 0)
    (S 2)
    =>
    (assert (S 3))
    (printout t "S3" crlf)
    )
(defrule R4
    (x 0)
    (S 3)
    =>
    (assert (S 3))
    (printout t "S3" crlf)
    )
(defrule R5
    (x 1)
    (S 0)
    =>
    (assert (S 1))
    (printout t "S2" crlf)
    )
(defrule R6
    (x 1)
    (S 1)
    =>
    (assert (S 2))
    (printout t "S0" crlf)
    )
(defrule R7
    (x 1)
    (S 2)
    =>
    (assert (S 3))
    (printout t "S2" crlf)
    )
(defrule R8
    (x 1)
    (S 3)
    =>
    (assert (S 0))
    (printout t "S0" crlf)
    )
