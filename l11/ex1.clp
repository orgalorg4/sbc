(deffacts data
(data a1 a2 a4)
(data a1 a5 a)
(data a2)
(data a4))

(defrule R65 (data a1 | ~a2&~a3) => )
(defrule R68 (data ?x ?y ?x&?y) => )
(defrule R69 (data ?x ~a ?y&~a) => )