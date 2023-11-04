# Go reloded test
- Разместите содержимое в корневую папку с программой:
```
├── testCases/
│   ├──case1.txt
│   └── ...
├── testOut/
├── testX/
|   ├──case1X.txt
│   └── ...
│  
├── main.go
├── go.mod
└── script.sh

```
- Запустите ./script.sh (возможно, вам потребуется выполнить chmod +x script.sh).

Файлы которые не прошли тесты, сохранятся в папке ./TestOut. В терминале вы увидите ошибки в вашем тексте и ожидаемый вывод:
```
< AN book an apple a dog
\ No newline at end of file
---
> A book an apple a dog
\ No newline at end of file
```

- Чтобы создать свой тест-кейс, разместите входной текст в папке ./testCases, а вывод в папке ./testX. Номер должен совпадать, и в конце названия добавьте "X".
 
Пример :
```
input: ./testCases/case12.txt
output: ./testX/case12X.txt
``` 
## GOOD LUCK


