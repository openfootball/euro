# Euro / European Championship Cup

## What's `football.db`?

A free open public domain football (soccer) database & schema
for use in any (programming) language
e.g. uses datasets in (structured) text using the football.txt format.
More [`football.db` Project Site »](http://openfootball.github.io)

## Intro

Free open public domain football data for Euro 2008, Euro 2012, Euro 2016, Euro 2020 (2021), Euro 2024,
etc.
Example:

```
= Euro 2024


Group A  |  Germany   Scotland     Hungary   Switzerland
Group B  |  Spain     Croatia      Italy     Albania
Group C  |  Slovenia  Denmark      Serbia    England
Group D  |  Poland    Netherlands  Austria   France
Group E  |  Belgium   Slovakia     Romania   Ukraine 
Group F  |  Turkey    Georgia      Portugal  Czech Republic


 
▪ Group A, Match 1

Fri Jun/14 
   21.00         Germany v Scotland   5-1 (3-0)    @ München Fußball Arena, München
                   (Wirtz 10' Musiala 19' Havertz 45+1'(p) Füllkrug 68' Can 90+3'; 
                    Rüdiger 87'(og))
  Germany:    Neuer - Kimmich, Rüdiger, Tah [Y], Mittelstädt – Andrich [Y] (Groß 46'),
              Kroos (Can 80') – Musiala (Müller 74'), Gündogan, 
              Wirtz (Sane 63') – Havertz (Füllkrug 63')
  Scotland:   Gunn – Porteous [R 44'], Hendry, Tierney (McKenna 78' ) – Ralston [Y], 
              McTominay, McGregor (Gilmour 67'), Robertson – Christie (Shankland 82'), 
              Adams (Hanley 46'), McGinn (McLean 67')

 Sat Jun/15 
    15.00        Hungary v Switzerland   1-3 (0-2)  @ Köln Stadion, Köln
                  (Varga 66'; 
                   Duah 12' Aebischer 45' Embolo 90+3')
  Hungary:     Gulacsi – Lang (Bolla 46' [Y]), Orban, Szalai [Y] (Dardai 79') – Fiola, 
               Nagy (Kleinheisler 67'), Schäfer, Kerkez (Adam 79') – Sallai, Varga, Szoboszlai
  Switzerland: Sommer – Schär, Akanji, Rodriguez – Widmer [Y] (Stergiou 68' ), Xhaka, 
               Freuler [Y] (Sierro 86'), Aebischer – Ndoye (Rieder 86'), Duah (Amdouni 68'), 
               Vargas (Embolo 73')

...


▪ Final
Sun Jul/14 
  21.00   Spain v England   2-1 (0-0)        @ Olympiastadion, Berlin   
            (Williams 47' Oyarzabal 86'; Palmer 73')
```


```
=  England - Euro 2024


  1,  Jordan Pickford,                   GK,     61/0  , b. 1994,  Everton F.C. (ENG)
 13,  Aaron Ramsdale,                    GK,      5/0  , b. 1998,  Arsenal F.C. (ENG)
 23,  Dean Henderson,                    GK,      1/0  , b. 1997,  Crystal Palace F.C. (ENG)

  2,  Kyle Walker,                       DF,     83/1  , b. 1990,  Manchester City F.C. (ENG)
  3,  Luke Shaw,                         DF,     31/3  , b. 1995,  Manchester United F.C. (ENG)
  5,  John Stones,                       DF,     72/3  , b. 1994,  Manchester City F.C. (ENG)
  6,  Marc Guéhi,                        DF,     11/0  , b. 2000,  Crystal Palace F.C. (ENG)
  8,  Trent Alexander-Arnold,            DF,     25/3  , b. 1998,  Liverpool F.C. (ENG)
 12,  Kieran Trippier,                   DF,     48/1  , b. 1990,  Newcastle United F.C. (ENG)
 14,  Ezri Konsa,                        DF,      4/0  , b. 1997,  Aston Villa F.C. (ENG)
 15,  Lewis Dunk,                        DF,      6/0  , b. 1991,  Brighton & Hove Albion F.C. (ENG)
 22,  Joe Gomez,                         DF,     15/0  , b. 1997,  Liverpool F.C. (ENG)

  4,  Declan Rice,                       MF,     51/3  , b. 1999,  Arsenal F.C. (ENG)
 10,  Jude Bellingham,                   MF,     29/3  , b. 2003,  Real Madrid CF (ESP)
 11,  Phil Foden,                        MF,     34/4  , b. 2000,  Manchester City F.C. (ENG)
 16,  Conor Gallagher,                   MF,     13/0  , b. 2000,  Chelsea F.C. (ENG)
 24,  Cole Palmer,                       MF,      4/1  , b. 2002,  Chelsea F.C. (ENG)
 25,  Adam Wharton,                      MF,      1/0  , b. 2004,  Crystal Palace F.C. (ENG)
 26,  Kobbie Mainoo,                     MF,      3/0  , b. 2005,  Manchester United F.C. (ENG)

  7,  Bukayo Saka,                       FW,     33/11 , b. 2001,  Arsenal F.C. (ENG)
  9,  Harry Kane,                        FW,     91/63 , b. 1993,  FC Bayern Munich (GER)
 17,  Ivan Toney,                        FW,      3/1  , b. 1996,  Brentford F.C. (ENG)
 18,  Anthony Gordon,                    FW,      3/0  , b. 2001,  Newcastle United F.C. (ENG)
 19,  Ollie Watkins,                     FW,     12/3  , b. 1995,  Aston Villa F.C. (ENG)
 20,  Jarrod Bowen,                      FW,      8/0  , b. 1996,  West Ham United F.C. (ENG)
 21,  Eberechi Eze,                      FW,      4/0  , b. 1998,  Crystal Palace F.C. (ENG)
```


## Build Your Own `euro.db` Copy

Use the `sportdb` command line tool to build your own `euro.db` copy
from the plain text fixtures. 


### Alternative I - Use the Quick Starter Templates

Use the quick starter datafile templates to start from scratch. Examples:

Build the database for the 2024 tournament:

    $ sportdb new euro2024

[More »](https://github.com/openfootball/quick-starter)


### Alternative II - Do-It-Yourself (DIY) - Downlad and Unpack Zip Archive or Git Clone

Download and unpack the zip archive with the datasets or if you have git installed use the `git clone` command to
get a local copy.

Try in your working folder (that is, `/euro`):

```
$ sportdb build
$ sportdb --verbose build     # or for more (verbose) details incl. debug info
```

This will

- setup a new single-file SQLite database e.g. `./sport.db` and
- read in all datasets in plain text (`.txt`)

That's it.



## Questions? Comments?

Yes, you can. More than welcome.
See [Help & Support »](https://github.com/openfootball/help)


