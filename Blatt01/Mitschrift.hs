pizzaCalc :: (Float, Float) -> Float
pizzaCalc (d,n) = fromInteger(round (pizzaPreis * 100))/100
 where pizzaPreis = 1.5 * kosten
       flaeche = (pi * d * d / 4)
       kosten = 2 + (0.01 * flaeche) + (n * 0.0025 * flaeche)

-- euklid :: Integer -> Integer -> Integer
euklid a b = if a == 0 then b
                else if a > b then euklid b (a-b)
                else euklid a (b-a)

hanoi n a z h = putStr (unlines (lege n a z h))
-- a: Ausgangspflock
-- z: Zielpflock
-- h: Hilfspflock

lege 1 a z h = zug a z
lege n a z h = lege (n-1) a h z ++ zug a z ++ lege (n-1) h z a
zug a z = ["von " ++ a ++ " nach " ++ z]


-- take 100 (liste) Nimmt nur die ersten 100 Elemente einer Liste oder eines Ergebnisses
-- functionsname [] TRUE gibt für leere Listen TRUE aus
-- functionsname [_] TRUE gibt für einstellige Listen TRUE aus *Haskel speziefisch*
-- map (+2) [2..5] addiert 2 auf alle lemente der Liste 2 - 5 
-- map odd [2..5] zeigt die Wahrheitswerte der elemente der Liste 2 - 5 bedinung: gerade
-- and (map odd [2..5]) and =  allquantor, zeigt ob alle der vorher berechneten wahrheitswerte TRUE sind
-- not(and(map odd [2..5]) negierung 

fibo 0 = 1

fibo 1 = 1

fibo n = fibo (n-1) + fibo (n-2) 





