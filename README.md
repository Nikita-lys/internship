# Internship

## Квест #1: Бизнес-логика HR-бота

**HrBot.hello(string, string)**

Мы радуемся приходу каждого нового сотрудника и представляем его команде в главном канале корпоративного чата. Тебе нужно написать модуль/класс, который будет получать на вход два параметра (имя, должность) и выдавать сообщение вида: “Поприветствуйте Андрея, нашего нового UX/UI-дизайнера!”. Если должность пока что неизвестна, то вместо неё должно выводиться слово “сотрудника”. Вызов пусть выглядит вот так: HrBot.hello(string, string)


## Квест #2: Поздравления для очень удачливого сотрудника

**Year.leap?(integer)**

У нас есть сотрудник, у которого день рождения 29 февраля. Чтобы поздравить его чётко в этот день, нам нужен модуль, который будет определять – високосный нынешний год или нет. Метод должен иметь следующую сигнатуру: `Year.leap?(2015)`. В ответ мы будем получать `true` или `false`. Помни, что високосный год - это каждый год, номер которого делится на 4 кроме тех случаев, когда он делится на 100 или на 400.


## Квест #3: Двигаем науку вперёд!

**RNATranscription.to_rna(charlist)**

Получив цепочку ДНК, верните ее РНК-комплемент (согласно транскрипции РНК). Обе цепи ДНК и РНК представляют собой последовательность нуклеотидов. Четыре нуклеотида, обнаруженные в ДНК, представляют собой аденин (A), цитозин (C), гуанин (G) и тимин (T). Четыре нуклеотида, обнаруженные в РНК, представляют собой аденин (А), цитозин (С), гуанин (G) и урацил (U).

Учитывая цепь ДНК, ее транскрибируемая цепь РНК формируется путем замены каждого нуклеотида его комплементом:

  * G -> C
  * C -> G
  * T -> A
  * A -> U
  
Примеры вызовов, чтобы себя проверить:

  * RNATranscription.to_rna('G') вернет 'C'
  * RNATranscription.to_rna('T') вернет 'A'
  * RNATranscription.to_rna('ACGTGGTCTTAA') вернет 'UGCACCAGAAUU'
  

## Квест #4: Цифровая трансформация Эллочки-людоедочки

**Ella.say(String)**

Возможно, ты помнишь Эллочку из романа “Двенадцать стульев”. Шутки ради, нам захотелось сделать бота, который будет вести диалоги, как она. Вызвать бота очень просто: Ella.say('что-то')

  * Бот отвечает «Мрак», - если вы зададите ему вопрос.
  * Он отвечает: «Хамите, парниша!», - если вы кричите на него (используя капс-лок).
  * Он отвечает: «Не учите меня жить!», - если вы кричите на его вопрос.
  * Он говорит: «Подумаешь!», - если ты обратишься к нему, ничего не сказав.
  * Он отвечает «Хо-хо!», - на всё остальное.


## Квест #5: Подсчёт вхождений слова в текст

**Words.count(string)**

Нам нужен модуль, который считает количество вхождений слова в текст. Например, для фразы "olly olly in come free" получится вот так: { olly: 2, in: 1, come: 1, free: 1 }

Примеры для проверки себя:

  * Words.count("one fish two fish red fish blue fish") # "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1
  * Words.count("car : carpet as java : javascript!!&@$%^&") # "car" => 1, "carpet" => 1, "as" => 1, "java" => 1, "javascript" => 1
  * Words.count("testing, 1, 2 testing") # "testing" => 2, "1" => 1, "2" => 1
  * Words.count("two_words") # "two" => 1, "words" => 1
  * Words.count("go Go GO") # "go" => 3
