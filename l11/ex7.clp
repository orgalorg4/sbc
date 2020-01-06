(deffacts h


 )
 (defrule R1

=> (open find.dat fdate)
 (open iesire.txt fiesire "w")
 
    (assert (faza citire))
 ) 
 
(defrule R2
?a <- (faza citire)
=>
(retract ?a)
(assert (valoare-citita (read fdate))) )

(defrule R3

?a <-(valoare-citita EOF)
=>
(retract ?a)
(assert (faza oprire))
)

(defrule R4
?a <- (faza oprire)
=>
(retract ?a) (close fdate) (close fiesire) 
)

(defrule R5
?a <- (valoare-citita ?v&:(and (numberp ?v) (>= ?v 60) ))
=>
(retract ?a)
(printout t "S-a gasit o valoare corecta: " ?v crlf)
(printout fiesire ?v " corect" crlf)
(assert (faza citire) ) )
(defrule R6
?a <- (valoare-citita ?v&:(and (numberp ?v) (< ?v 60)))
=>
(retract ?a)
(printout t "S-a gasit o valoare incorecta: " ?v crlf)
(printout fiesire ?v " incorect" crlf)
(assert (faza citire) ) )
(defrule R7 
?a <- (valoare-citita ?v&:(not (or (numberp ?v) (eq ?v EOF))))
=>
(retract ?a)
(assert (faza citire) ) )