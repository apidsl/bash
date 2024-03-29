
![logo.apidsl.com](https://logo.apidsl.com/1/cover.png)

# [Sourcecode - bash.apidsl.com](https://bash.apidsl.com/) [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/MENU.md) 

+ [Examples - examples.apidsl.com](http://examples.apidsl.com)
+ [Documentation - docs.apidsl.com](https://docs.apidsl.com/)
+ [Blog - www.apidsl.com](https://www.apidsl.com/)
+ [Logotyp - logo.apidsl.com](https://logo.apidsl.com/)

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


## APIfoundation [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/APIFOUNDATION.md)

Here are 3 levels of apifoundation solutions
+ apifork
+ apibuild
+ apidsl

**apifork** to bring dependencies,packagages to the project

**apibuild** - to build it over composer, maven, npm, ...

**apidsl** - to use it over hi level domain language 


## Contribution [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/inframonit/bash/edit/main/DOCS/CONTRIBUTION.md)


Solutions for development:

Install dependencies after created project
```bash
curl https://raw.githubusercontent.com/apifork/bash/main/apifork.sh -o apifork
echo "https://github.com/flatedit/bash.git flatedit" > "apifork.dev.txt"
./apifork install apifork.dev.txt
```

Edit documentation with flatedit
```bash
echo "#!/bin/bash" > "readme"
echo "./flatedit/readme.sh readme.txt" > "readme"
echo "./DOCS/MENU.md" >> "readme.txt"
echo "./DOCS/ABOUT.md" >> "readme.txt"
echo "./DOCS/FOOT.md" >> "readme.txt"
```

### Update documentation

```bash
 ./readme
```

Config project file

The config file: **.apifork** can be another, e.g. **projects.txt**

Just change the first line in  **.apifork** on **projects.txt**
```bash
projects.txt
```


### install

[minsungson/GitHub-cURL: A guide to installing files from GitHub repos in terminal using cURL](https://github.com/minsungson/GitHub-cURL)

```bash
./apifork install
```
OR

```bash
./apifork
```

### update

```bash
./apifork update
```


### remove

```bash
./apifork remove
```


## About flatedit [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/FLATEDIT.md)


### Dependencies

projects list [**readme1.txt**](readme1.txt)
```
./DOCS/MENU.md
../bash/DOCS/TODO.md
./DOCS/FOOT.md
```
[**readme.sh**](readme.sh)
```bash
./flatedit/readme.md readme1.txt
```

### Comments

With comments not to load this file

projects list [**readme2.txt**](readme2.txt)
```
./DOCS/MENU.md
../bash/DOCS/TODO.md
./DOCS/FOOT.md
```
[**readme.sh**](readme.sh)
```bash
./flatedit/readme.md readme2.txt
```


### Logs

Show not- & working/existing files


projects list [**readme3.txt**](readme3.txt)
```
./DOCS/MENU.md
../bash/DOCS/TODO.md
./DOCS/FOOT.md
```
[**readme.sh**](readme.sh)
```bash
./flatedit/readme.md readme3.txt
```


## Docs [<span style='font-size:20px;'>&#x270D;</span>](https://github.com/apidsl/bash/edit/main/DOCS/DOCS.md)




### Zalezności ładowane z github

+ zamiast xpath - ładowanie zalezności przez skrypt github
+ letPath - przygotować
  https://github.com/letpath/bash


### Another examples

get options
https://reposhub.com/linux/system-utilities/ko1nksm-getoptions.html

https://github.com/ko1nksm/getoptions



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

### Mapowanie

#### mapowanie funkcji z linuxa:
curl().grep("ri",)

#### mapowanie funckji uslug w linux

#### mapowanie API
+ Skąd pobierać dane autoryzacyjne?
 


### Praktyczne przykłady
+ Example with plainedit
+ more loop options
+ many loop in one sentence

install
https://github.com/apidsl/ultimate-nmap-parser


### Inframonit

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




### Preprocessing

Każdy z tych jest w fodlerze ze skryptami, gdzie kolejno podaje sie wartosci
+ values
+ context - before, next command


---

+ [edit](https://github.com/apidsl/bash/edit/main/README.md)
+ [apidsl/bash](https://github.com/apidsl/bash)
