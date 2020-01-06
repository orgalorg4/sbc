(deffacts multimi
    (multime A 1 2)
    (multime B 2)
    (multime C)
    )
    
(defrule R1
    (multime A 1 2)
    (multime B 2)
    (multime C)
    =>
    (assert(multimi A B C))
    )