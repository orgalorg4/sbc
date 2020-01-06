(deffacts se
    (se  0 1 0 1 1 1 0 1 0 1)
    )
(defrule R
    (declare (salience 3))
    ?adr <- (se  $?a 0 $?b 0 $?c 0 $?d )
    
    =>
    (printout t "alarma"  crlf)
    (retract ?adr)
    )
    