
## How it works? [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/HOW.md)


skrypt **apidsl.sh** Parsuje skrypty zapisywane w formacie: **funkcja("parametr")** i uruchamia w shellu przygotowane skrypty odnoszące się do nazyw plików:

/apidsl/bash/*.sh

**load** -> /apidsl/bash/**load.sh**

load(**"plik.txt"**) -> ./apidsl/bash/load.sh **"plik.txt"**

The lines with comments such: "**//**" , "**#**" are removed.



### Zależności 
Mapowanie projektów z git

ładowane z repozytoriów git, jak github, gitlab, bitbucket
+ zamiast xpath - ładowanie zalezności przez skrypt github
+ letPath - przygotować
  https://github.com/letpath/bash
