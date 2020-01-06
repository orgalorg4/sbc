(deffacts Cuburi
    (pe nimic A)
    (pe C podea)
    (pe A B) 
    (pe B C)
    (pe E F)
    (pe nimic D)
    (pe F podea)
    (pe D E) 
   ;(scop muta A pe D)
    ;(scop muta B pe D)
    ;(scop muta C pe D)
    (scop muta A pe E)
    (este bloc A)
    (este bloc B)
    (este bloc C)
    (este bloc D)
    (este bloc E)
    (este bloc F)
    
    )
    
    (defrule R2
    (pe nimic ?bloc2)
    (pe nimic ?bloc3)
    ;?c <- (pe ?bloc2 podea)
    (este bloc ?bloc2)
    (este bloc ?bloc3)
    (scop muta ?bloc2 pe ?bloc3)
    ?a <- (scop muta ?bloc2 pe ?bloc3)
    ?b <- (pe nimic ?bloc3)
    =>
    (assert (pe ?bloc2 ?bloc3))
    (retract ?a)
    (retract ?b)
    ;(retract ?c)

    (printout t "muta " ?bloc2 " pe " ?bloc3  crlf)

    )
    (defrule R3
    (pe nimic ?bloc1)
    (pe ?bloc1 ?bloc2)
    ?a <- (scop muta ?bloc1 pe podea)
    ?b <- (pe ?bloc1 ?bloc2)
    ?c <- (pe nimic ?bloc1)
    =>
    (assert (pe nimic ?bloc2))
    (assert (pe ?bloc1 podea))
    (retract ?b)
    (retract ?a)
    (retract ?c)
    (printout t "muta " ?bloc1 " pe podea" crlf)

    )
    (defrule R4
    (scop muta ?bloc2 pe ?)
    (pe ?bloc1 ?bloc2)
    (este bloc ?bloc1)
    (este bloc ?bloc2)
    =>
    (assert  (scop muta ?bloc1 pe podea))
    (printout t "adauga scop  " ?bloc1 " pe podea "   crlf)

    )
    (defrule R5
    (scop muta ?bloc2 pe ?bloc)
    (pe ?bloc1 ?bloc)
    (este bloc ?bloc1)
    (este bloc ?bloc2)
    (este bloc ?bloc)
    =>
    (assert  (scop muta ?bloc1 pe podea))
    (printout t "adauga scop  " ?bloc1 " pe podea "   crlf)

    )
   