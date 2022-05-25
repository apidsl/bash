
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
