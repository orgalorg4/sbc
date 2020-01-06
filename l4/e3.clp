    
(defrule R12
    ?a <- (a ?x)
    ?b <- (b ?y ?x)
    =>
    (retract ?b) (assert (fapt ?a)) )
(defrule R13
    ?ad <- (a ?x)
    (fapt ?ad)
    =>
    (printout t ?x " " ?ad crlf)
)
(deffacts sf
    (a 1)
    (b 2 1)
)
