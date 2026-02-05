# RSSSF 

Yes, you can. Convert RSSSF pages to the (structured) Football.TXT format 
(for easy parsing and exporting to JSON, CSV, SQL and friends).
Samples include:

- [European Championship 1960](60e.txt)
- [European Championship 1964](64e.txt)




## Notes

RSSSF (Before):

```
QUALIFYING ROUND

05.04.1959 in Dublin (Dalymount Park)
Ireland          	2-0 Czechoslovakia
  [22 Tuohy, 42pen Cantwell]
10.05.1959 in Bratislava (Tehelné Pole)
Czechoslovakia   	4-0 Ireland
  [4pen Stacho,  52 Bubernik, 66 Pavlovic, 75 Dolinsky]
```

What's changed? <br>
-  Start round lines with a round marker `▪`; optional - no need to UPCASE for emphasis.
-  Start geo names, that is,  city/location and ground/stadium/venue with
   the geo marker `@`.
-  Enclose goal lines with parentheses, that is, `()` instead of square brackets `[]`
   - Move the goal minutes e.g. `22`, `42pen` after the player name; for own goals (og)
     change from `85og (Marche)` to `Marche 85og` without enclosing the player name in parentheses.  


Football.TXT:

```
▪ Qualifying Round

05.04.1959 @ Dublin (Dalymount Park)
Ireland          	2-0 Czechoslovakia
  (Tuohy 22, Cantwell 42pen)
10.05.1959 @ Bratislava (Tehelné Pole)
Czechoslovakia   	4-0 Ireland
  (Stacho 4pen, Bubernik 52, Pavlovic 66, Dolinsky 75)
```




