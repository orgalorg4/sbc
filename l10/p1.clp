(deffacts h
(faza informare-operator)
(alarma apa)

(numar 7)
(numar 5)
(numar 4)
(numar 2)

(lista 5 4 8 3 7 2 1)

(fapt 2)
(fapt 10)

)

(defrule R44
?x <- (tensiune on)
(or 
    (alarma apa)
    (and
        (alarma foc)
        (incendiu tip_C) )
        (alarma explozie) )
=>
(retract ?x)
(assert (tensiune off))
)

(defrule R48
(faza informare-operator)
(not (alarma ?) )
=>
(printout t "Nu exista in sistem nici o alarma" crlf) )


(defrule R49
(numar ?x)
(not (numar ?y&:(> ?y ?x)))
=>
(printout t "Maximum = " ?x crlf)
)

(defrule R49-2
(numar ?x)
(not (numar ?y&:(< ?y ?x)))
=>
(printout t "Mim = " ?x crlf)
)

(defrule R49-3
(lista $? ?x $? )
(not (lista $? ?y&:(> ?y ?x) $?))
=>
(printout t "Max list = " ?x crlf)
)

(defrule R49-4
(lista $? ?x $? )
(not (lista $? ?y&:(< ?y ?x) $?))
=>
(printout t "Mim list = " ?x crlf)
)



;(defrule R49-5
;(lista $? ?x $? )
;(not (lista $? ?y&:(and(< ?y ?x) (> ?x 4)) $?))
;
;=>
;(printout t "Min list (dar mai mare decat 4 ) = " ?x crlf)
;)
(defrule R56 (not (fapt ?x)) (fapt ?x&:(> ?x 4)) => )