---
## Front matter
title: "Отчёт по лабораторной работе №6"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Толстых Александра Андреевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение арифметических инструкций языка ассемблера NASM.

# Задание

1. Символьные и численные данные в NASM.
2. Выполнение арифметических операций в NASM.
3. Выполнение задания для самостоятельной работы (16 вариант).

# Выполнение лабораторной работы

Создаю каталог для программ лабораторной №6. Перехожу в него и создаю файл lab6-1.asm (рис. [-@fig:001]).

![Создание каталога и файла](img1.jpeg){#fig:001 width=70%}

Ввожу в созданный файл текст программы из листинга (рис. [-@fig:002]).

![Написание программы](img2.jpeg){#fig:002 width=70%}

Копирую файл in_out.asm в каталог для программ лабораторной работы №6 (рис. [-@fig:003]).

![Копирование файла](img3.jpeg){#fig:003 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:004]).

![Выполнение программы](img4.jpeg){#fig:004 width=70%}

Изменяю текст программы, вместо символов записывая в eax, ebx числа (рис. [-@fig:005]).

![Изменение программы](img5.jpeg){#fig:005 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:006]).

![Выполнение программы](img6.jpeg){#fig:006 width=70%}

На экране ничего не отображается. Это связано с тем, что символ с кодом 10 - это символ перевода строки. 

Создаю файл lab6-2.asm в каталоге для программ лабораторной №6. Ввожу в него текст программы из листинга 6.2 (рис. [-@fig:007]).

![Создание файла и написание программы](img7.jpeg){#fig:007 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:008]).

![Выполнение программы](img8.jpeg){#fig:008 width=70%}

Аналогично предыдущей программе заменяю символы на числа (рис. [-@fig:009]).

![Изменение программы](img9.jpeg){#fig:009 width=70%} 

Создаю исполняемый файл и запускаю его (рис. [-@fig:010]).

![Выполнение программы](img10.jpeg){#fig:010 width=70%}

Теперь программа складывает не коды, соответствующие символам, а сами числа. Поэтому выводит число 10 - сумму чисел 4 и 6.

Заменяю функцию iprintLF на iprint (рис. [-@fig:011]).

![Изменение программы](img11.jpeg){#fig:011 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:012]).

![Выполнение программы](img12.jpeg){#fig:012 width=70%}

Вывод функции iprintLF от вывода функции iprint отличается тем, что в последнем случае после вывода не добавляется переход на новую строку.

##  Выполнение арифметических операций в NASM

С помощью утилиты touch создаю файл lab6-3.asm. Ввожу в него текст программы для вычисления значения указанного выражения (рис. [-@fig:013]).

![Создание файла и написание программы](img13.jpeg){#fig:013 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:014]).

![Выполнение программы](img14.jpeg){#fig:014 width=70%}

Изменяю текст программы для вычисления нового выражения (рис. [-@fig:015]).

![Изменение программы](img15.jpeg){#fig:015 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:016]).

![Выполнение программы](img16.jpeg){#fig:016 width=70%}

С помощью утилиты touch создаю файл variant.asm. Ввожу в него текст программы для вычисления варианта (рис. [-@fig:017]).

![Создание файла и написание программы](img17.jpeg){#fig:017 width=70%}

Создаю исполняемый файл и запускаю его (рис. [-@fig:018]).

![Выполнение программы](img18.jpeg){#fig:018 width=70%}

Проверяю результат работы программы, вычисляя номер варианта аналитически. Также получаю число 16. Значит программа работает корректно.

Ответы на вопросы по программе:
1. За вывод сообщения "Ваш вариант" отвечают строки кода:
```
mov eax,rem
call sprint
```
2. Инструкция `mov ecx, x` выполняется для того чтобы положить адрес вводимой строки x в регистр ecx.
Инструкция `mov edx, 80` выполняется для записи длины вводимой строки в регистр edx.
Инструкция `call sread` выполняется для вызова подпрограммы из внешнего файла, обеспечивающей ввод сообщения с клавиатуры.
3. Инструкция `call atoi` используется для вызова подпрограммы из внешнего файла, которая преобразует ascii-код символа в целое число и записывает результат в регистр eax.
4. За вычисление варианта отвечают строки:
```
xor edx, edx
mov ebx, 20
div ebx
inc edx
```
5. При выполнении инструкции `div ebx` остаток от деления записывается в регистр edx.
6. Инструкция `inc edx` увеличивает значение регистра edx на 1.
7. За вывод на экран результата вычислений отвечаю следующие строки: 
```
mov eax,edx
call iprintLF
```

## Выполнение задания для самостоятельной работы

Создаю файл lab6-4.asm и записываю в него программу для вычисления выражения 16 варианта. (рис. [-@fig:019]).

![Создание файла и написание программы](img19.jpeg){#fig:019 width=70%}

Создаю исполняемый файл и проверяю его работу для указанных значений (рис. [-@fig:020]).

![Выполнение программы](img20.jpeg){#fig:020 width=70%}

# Выводы

При выполнении данной лабораторной работы я освоила арифметические инструкции языка ассемблера NASM.
