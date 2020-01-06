(defrule push-valoare "regula de introducere in stiva"
?adresa <- (push ?valoare)
?stiva <- (stiva $?rest)
=>
(retract ?adresa ?stiva)
(assert (stiva ?valoare $?rest))
(printout t "S-a introdus in stiva valoarea: " ?valoare crlf) )

(defrule pop-stiva-plina "regula de extragere dintr-o stiva ce contine macar un element"
?adresa <- (pop)
?stiva <- (stiva ?valoare $?rest)
=>
(retract ?adresa ?stiva)
(assert (stiva $?rest))
(printout t "Valoarea extrasa din stiva este: " ?valoare crlf) )

(defrule pop-stiva-vida
?adresa <- (pop)
(stiva)
=>
(retract ?adresa )
(printout t "stiva vida : "  crlf) 
)

(defrule push-valoare 
?adresa <- (push ?valoare)
?stiva <- (coada $?rest)
=>
(retract ?adresa ?stiva)
(assert (coada ?valoare $?rest))
(printout t "push coada valoarea: " ?valoare crlf) )


(defrule pop-coada-plina 
?adresa <- (pop)
?stiva <- (coada  $?rest ?valoare)
=>
(retract ?adresa ?stiva)
(assert (coada $?rest))
(printout t "pop coada este: " ?valoare crlf) )

(defrule pop-coada-vida
?adresa <- (pop)
(coada)
=>
(retract ?adresa )
(printout t "coada vida : "  crlf) 
)

(deffacts h
    ;(stiva 1111 1112 55468 12000000)
    ;(push h)
    ;(push xyz)
    ;(pop)
    ;(stiva)
    ;(pop)
    ;(coada 1 0 1)
    ;(pop)
    ;(push 2)
    
    (stiva A B C)
    (stiva D E F)
    ;(muta B pe E)
    ;(muta A pe D)
    (muta B pe D)
    )
    
(defrule mutare1
(muta ?b1 pe ?b2 )
?adr <- (stiva ?b1 $?res1 )
?adr2 <- (stiva ?b2 $?res2 )
=>
(retract ?adr ?adr2)
(assert (stiva $?res1 ) (stiva ?b1 ?b2 $?res2))
)
(defrule mutare15
?adr <- (stiva noua ?b)
(stiva ?b $?res1 )
=>
(assert (stiva ?b))
(assert (stiva $?res1))
(retract ?adr)
)

(defrule mutare2
(muta ?b1 pe ? )
?adr <- (stiva ?extra ?b1 $?res1 )
;?adr2 <- (stiva ?b2 $?res2 )
=>
; (retract ?adr ?adr2)
; (assert (stiva ?extra) (stiva $?res1 ) (stiva ?b1 ?b2 $?res2))
(assert (stiva noua ?extra))

)
;(defrule