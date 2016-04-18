--festkosten = 2
--grundkosten = 0.01
--kostenProZutat = 0.0025

--flaeche d = pi * d * d / 4
--kosten (d,n) = (festkosten + (grundkosten * f) + (n * kostenProZutat * f))
--	where f = flaeche d
--preis (d,n) = 1.5 * kosten (d,n)

alfredo :: (Float,Float) -> Float

alfredo (d,n) = preis
	where preis   = 1.5 * kosten
	      kosten  = festkosten + (grundkosten * flaeche) + (n * kostenProZutat * flaeche)
	      flaeche = pi * d * d / 4
	      festkosten     = 2
	      grundkosten    = 0.01
	      kostenProZutat = 0.0025
