
![logo.apidsl.com](https://logo.apidsl.com/1/cover.png)

# [bash.apidsl.com](https://bash.apidsl.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/MENU.md) 

+ [Strona informacyjna: www.apidsl.com](https://www.apidsl.com/)
+ [Dokumentacja - docs.apidsl.com](https://docs.apidsl.com/)
+ [Logotyp: logo.apidsl.com](https://logo.apidsl.com/)
+ [Przykłady - examples.apidsl.com](http://examples.apidsl.com)

+ [LICENSE](../LICENSE)



## About [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/ABOUT.md)

I did last time some wrapper for bash, python, ... with such format: load("domains.txt")

```apidsl
load("domains.txt")
.split("/n")
.http()
.xpath("title")
.appendToFile("titles.txt")
```

I am using it to build multiplatform scripts, where the same sentence will be executed on PHP, Python, JS, ...

### The Inspiration was coming from such projects:

+ [jQuery, DOM Traversal and Manipulation](https://jquery.com/)
+ [Apache Camel uses a Java Domain Specific Language or DSL for creating Enterprise Integration Patterns or Routes in a variety of domain-specific languages (DSL)](https://camel.apache.org/manual/dsl.html)



## Supported technologies  [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/SUPPORTED.md)


### Languages:
+ js
+ php
+ bash
+ python

### Environment
+ docker
+ logs

## Data formats

+ ini
+ json
+ yaml
+ csv
+ html
+ xml


## Docs [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/DOCS.md)


### Co robi apidsl?

Parsuje skrypty zapisywane w formacie: funkcja("parametr") i uruchamia w shellu

### Parsowanie

Parsowanie następuje na dwie zmienne:

key: funkcja
value: parametr

W rezultacie zmiast pisać:

    grep -ri "$FIND" "$WHOIS_FILE"

piszemy:

    grep("ri","$FIND", "$WHOIS_FILE").print()


### Komentarze

remove comments tags
+ //
+ #

### Korzyści
+ uniwersalny format zapisu niezależnie od środowiska
+ wykorzystywanie bibliotek i używanie tylko wybranych funkcji
+ uruchamianie usług dostępnych w środowisku lokalnym 
+ uruchamianie API dostępnych na zewnątrz
+ możliwość zmiany uprawnień dla każdego skryptu zależnie od użytkownika
+ możlwiość dodawania własnych funkcji



## EXAMPLES [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/EXAMPLES.md)

### git

git("clone","https://github.com/laurivan/simpleargs.git")
.cd("simpleargs")
.nano("filename.txt","content")
.git("commit","-m","nowy plik")
.git("push");


### xpath

.get("https://web.com")
.xpath("title")


## TODO [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/TODO.md)

### Zalezności ładowane z github
+ zamiast xpath - ładowanie zalezności przez skrypt github 
+ letPath - przygotować
  https://github.com/letpath/bash

### Mapowanie

+ mapowanie projektów z git
+ mapowanie funkcji z linuxa
+ mapowanie funckji uslug w linux
+ mapowanie API
  + Skąd pobierać dane autoryzacyjne?
 


### Praktyczne przykłady
+ Example with plainedit
+ more loop options
+ many loop in one sentence

install
https://github.com/apidsl/ultimate-nmap-parser

skanuje hosty
git clone https://github.com/desecsecurity/parsing_html_bash
./parsing_html.sh www.google.com


+ skrypty do detekcji
+ skrypty do naprawy
+ schematy naprawy / template w zalezności od sytuacji



http.get("https://web.com")

$('#cliente').click(function(){$('#container').load('/clienti/cliente.html');});

js.
import("https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js")
.get("https://web.com")
.xpath("title")
.print()


js.
console.log("clone")
jquery.get("simpleargs")
.nano("filename.txt","content")
.git("commit","-m","nowy plik")
.git("push");


curl().grep("ri",)



kazdy z tych jest w fodlerze ze skryptami, gdzie kolejno podaje sie wartosci
+ values
+ context - before, next command



convert camel to .sh bash file
and execute
each time is ;



---

get options
https://reposhub.com/linux/system-utilities/ko1nksm-getoptions.html

https://github.com/ko1nksm/getoptions



---

+ [edit](https://github.com/apidsl/bash/edit/main/README.md)
+ [apidsl/bash](https://github.com/apidsl/bash)
