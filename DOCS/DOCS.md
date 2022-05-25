
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

