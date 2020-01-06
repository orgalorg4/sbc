;(cerc <raza> <perimetru>)
;(patrat <latura> <arie>)
(deffacts multimi
    (cerc 4 9)
    (patrat 7 14)
    (cerc 8 21)
    (patrat 24 846)
    (a 1)
    (b 2)
    (a)
    (b)
    (c)
    
)


(defrule R "acesta este un exemplu"
    (a 1)
    (b 2)
    =>
    (assert(c 3))
    )
    

(defrule S "acesta este un exemplu"
    (a)
    (b)
    (c)
    =>
    (assert(d))
    )
    
(defrule R1 ""
    (patrat 24 846)
    (b 2)
    =>
    (assert(h))
    )
    

(defrule R2 ""
    (cerc 4 9)
    (patrat 7 14)
    (patrat 24 846)
    =>
    (assert(h5))
    )
    
(defrule R3 ""
    
    (patrat 7 14)
    =>
    (assert(h3))
    )
    
    

(defrule lkaflkjsadf "dddd"
    
    =>
    
    )
    