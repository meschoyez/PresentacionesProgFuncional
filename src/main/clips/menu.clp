(defrule jugo-naranja
    (ingr naranjas)
=>
    (assert (hay jugo-naranja))
)

(defrule submarino
    (ingr leche)
    (ingr chocolate)
=>
    (assert (hay submarino))
)

(defrule te-con-leche
    (ingr agua)
    (ingr leche)
    (ingr te)
=>
    (assert (hay te-con-leche))
)

((defrule menu
    (hay ?bebida)
=>
    (printout t ?bebida crlf)
))