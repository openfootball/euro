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

Matchday 1 | Fri Jun/14 - Tue Jun/18   
Matchday 2 | Wed Jun/19 - Sat Jun/22   
Matchday 3 | Sun Jun/23 - Wed Jun/26        


Group A:

 (1) Fri Jun/14 21:00         Germany   -   Scotland     @ Fußball Arena München, Munich
 (2) Sat Jun/15 15:00         Hungary   -   Switzerland  @ Cologne Stadium, Cologne

(14) Wed Jun/19 18:00         Germany   -   Hungary      @ Stuttgart Arena, Stuttgart
(13) Wed Jun/19 21:00         Scotland   -   Switzerland  @ Cologne Stadium, Cologne

(25) Sun Jun/23 21:00         Switzerland - Germany       @ Frankfurt Arena, Frankfurt
(26) Sun Jun/23 21:00         Scotland     - Hungary       @ Stuttgart Arena, Stuttgart

...



Final
(51) Sun Jul/14 21:00     Winner Match 49 - Winner Match 50    @ Olympiastadion, Berlin
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


