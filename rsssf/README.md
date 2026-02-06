# RSSSF 

Yes, you can. Convert RSSSF pages to the (structured) Football.TXT format 
(for easy parsing and exporting to JSON, CSV, SQL and friends).
Samples include:

- [European Championship 1960](60e.txt)
- [European Championship 1964](64e.txt)
- [European Championship 2024](2024e.txt)




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

1/8 FINALS

28.09.1958 in Moskva (Luzhniki)
Soviet Union     	3-1 Hungary
  [4 Ilyin, 20 Metreveli, 32 Ivanov; 84 Göröcs]
27.09.1959 Budapest (Nép)
Hungary          	0-1 Soviet Union
  [58 Voinov]
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

▪ 1/8 Finals

28.09.1958 @ Moskva (Luzhniki)
Soviet Union     	3-1  Hungary
  (Ilyin 4, Metreveli 20, Ivanov 32; Göröcs 84)
27.09.1959 @ Budapest (Nép)
Hungary          	0-1  Soviet Union
  (Voinov 58)
```


Let's try the final.


RSSSF (Before):

```
FINAL

Paris, Parc des Princes, July 10
Soviet Union     2-1 Yugoslavia      [aet]
  [Metreveli 49, Ponedelnik 114; Galic 41]
  [ref: Ellis (England); att: 18,000]
Soviet Union: Yashin, Tchekeli, Maslenkin, Kroutikov, Voinov, Netto,
              Metreveli, V.Ivanov, Ponedelnik, Bubukin, Meskhi
Yugoslavia: Vidinic, Durkovic, Jusufi, Zanetic, Miladinovic, Perusic,
            Jerkovic, Sekularac, Galic, Matus, Kostic
```


What's changed? <br>
Same as above:
-  Start round lines with a round marker `▪`; optional - no need to UPCASE for emphasis
-  Enclose goal lines with parentheses, that is, `()` instead of square brackets `[]`.
   - Move the goal minutes e.g. `49`, `114` after the player name.
-  Start geo names, that is,  city/location and ground/stadium/venue with
   the geo marker `@`.

Plus:
-  Start a match header ALWAYS with a date e.g. `July 10` followed by the geo names, that is,  city/location and ground/stadium/venue with
   the geo marker `@`.
- Enclose the right-hand-side part of a split-up score e.g. `aet` with parentheses, that is, `()` instead of square brackets `[]`. 
- Remove the the enclosing square brackets from the props `ref:, att:`; optional - move the att(endance) prop into the match header; separate by two spaces (or use a comma).


NOTE - the comma `,` is reserved as a separator, thus, in numbers use the underscore `_`
as (optional) thousands separator e.g. change `18,000` to `18_000` or `18000`. 

Football.TXT:

```
▪ Final 
July 10 @ Paris, Parc des Princes    att: 18_000    
Soviet Union     2-1  Yugoslavia      (aet)
  (Metreveli 49, Ponedelnik 114; Galic 41)
Soviet Union: Yashin, Tchekeli, Maslenkin, Kroutikov, Voinov, Netto,
              Metreveli, V.Ivanov, Ponedelnik, Bubukin, Meskhi
Yugoslavia: Vidinic, Durkovic, Jusufi, Zanetic, Miladinovic, Perusic,
            Jerkovic, Sekularac, Galic, Matus, Kostic
  ref: Ellis (England)
```




### More Football.TXT Format Notes

#### Byes

Change byes - that is, teams that automatically advance 
to the next round without competing - in literal "comment-style" ...

RSSSF (Before):
```
Austria bye.
Luxembourg bye.
Soviet Union bye.
```

... to a byes prop line.


Football.TXT:

```
Byes:   Austria, Luxembourg, Soviet Union
```

or if you don't care about parsing the byes (into structured data) 
to comment lines e.g:

```
# Austria bye.
# Luxembourg bye.
# Soviet Union bye.
```




#### Replays

Change match replays with a `[Play-off]` tag...

RSSSF (Before):
```
23.01.1963 in Roma, Italy (Olimpico)
Bulgaria         	1-0 Portugal			[Play-off]
  [87 Asparuchov]
```

... to an inline round header addition (`▪ Replay`) in the match header.
Note - the inline round header will (automagically) get concat(entated)
with the "top-level" round header e.g. `▪ First Round`, thus, resulting in
`▪ First Round, Replay`.

Football.TXT:

```
23.01.1963 @ Roma, Italy (Olimpico) ▪ Replay
Bulgaria         	1-0 Portugal		
  (Asparuchov 87)
```


