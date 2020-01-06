(deffacts se
    (pe nimic A)
    (pe A B)
    (pe B C)
    (pe C podea)
    
    (pe nimic D)
    (pe D E)
    (pe E F)
    (pe F podea)
    
    ;(scop muta A pe D)
    ;(scop muta A pe podea)
    (scop muta B pe D)
    )
(defrule R
    (scop muta ?bloc1 pe ?bloc2)
    (pe nimic ?bloc1)
    (pe nimic ?bloc2)
    
    
    ?a <- (pe ?bloc1 ?bloc3)
    ?a1 <- (pe nimic ?bloc2)
    
    =>
    (assert (pe ?bloc1 ?bloc2))
    (retract ?a)
    (retract ?a1)
    (assert (pe nimic ?bloc3))
    (printout t "A fost mutat "?bloc1 " pe "?bloc2  crlf)
    )
(defrule R2
    (scop muta ?bloc1 pe podea)
    (pe nimic ?bloc1)
    
    ?a <- (pe ?bloc1 ?bloc2)
    (test (not(eq ?bloc2 podea)))
    =>
    (assert (pe ?bloc2 nimic))
    (assert (pe ?bloc1 podea))
    (retract ?a)
    (printout t "A fost mutat pe " ?bloc1 " podea" crlf)
    )
(defrule R3
    (scop muta ?bloc1 pe ?bloc2)
    (pe ?bloc1 ?h)
    (test (not(eq h nimic)))
    =>
    (assert (scop muta ?h pe podea))
    )