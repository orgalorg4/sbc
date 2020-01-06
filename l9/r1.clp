(deffacts data
(data 4 2)
(data 4 4)
(data 3 7)
(data # #)
(data 4 #)
(data # 5)
)

(defrule R1
(data ?val1 ?val2)
(test ( or
(and (numberp ?val1)
     (numberp ?val2)
     (= 0(mod ?val1 ?val2)))
(and (symbolp ?val1)
     (symbolp ?val2)
     (eq ?val1 ?val2))))
=> 
(assert (modd (mod ?val1 ?val2)))
(printout t "aaa" crlf))

(defrule R3
(data ?x1 ?y1)
(date ?x2&:(and (not (numberp ?y1 ) (eq ?y1 ?x2))) ?y2&:(and(numberp ?x1)(neq ?x1 ?y2)))
=> 
(printout t "aaa" crlf))

(defrule R2
(data ?x ?y)
(data ?a ?b)
(test ( and ( numberp ?x)
(neq ?x ?b)
(not (numberp ?y)) (eq ?y ?a)))
=>
 (printout t "aaa" crlf))