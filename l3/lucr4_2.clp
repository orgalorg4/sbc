(defrule R2 (fapt ?x) => (assert (a ?x) ) )
(defrule R3 (fapt ?x 12) => (assert (b ?x) ) )

(deffacts h (fapt 5)
    (fapt 4444 12 ))
    
(defrule R4 (este-in-stare-de-functiune calculatorul ?nume-calculator) =>
(assert (poate fi utilizat ?nume-calculator) )
(printout t “Gata de lucru “ ?nume-calculator crlf ) )

(deffacts sd (este-in-stare-de-functiune calculatorul ion))

(defrule R5 "determinare-autor-curs - se determina daca un cadru didactic
are curs tiparit"
(cadrul-didactic ?nume tine disciplina ?obiect)
(manualul ?obiect aparut in anul ?an are ca autor pe ?nume)
=>
(printout t "cadrul didactic " ?nume " a realizat un manual la disciplina "
?obiect " in anul " ?an crlf) )

(deffacts sdfsdf
    (cadru-didactic ion1 tine disciplina ion2)
    (manualul ion2 aparut in anul ion3 are ca autor pe ion1)
    )