(defrule R5
    (cadru-didactic ?nume tine disciplina ?obiect)
    (manualul ?obiect aparut in ?an are ca autor pe ?nume)
    =>
)

(deffacts asfg
    (cadru-didactic ion tine disciplina abcd)
    (manualul abcd aparut in 1955 are ca autor pe ion)
    )