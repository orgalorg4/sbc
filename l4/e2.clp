(defrule R8
    ?adresa <- (a 1)
    =>
    (retract ?adresa)
    (printout t ?adresa crlf)
)

(deffacts asfg
    (a 1 )
    (a 2 )
    (b 1 )
    (b 2 )
    )
