defmodule Tests do
  use ExUnit.Case

  test "HrBot.hello(string, string)" do
    assert HrBot.hello("Александр") == "Поприветствуйте Александра, нашего нового сотрудника!"
    assert HrBot.hello("Александра", "Разработчик Ruby on Rails") == "Поприветствуйте Александру, нашего нового разработчика Ruby on Rails!"
    assert HrBot.hello("Игорь", "Младший бизнес-аналитик") == "Поприветствуйте Игоря, нашего нового младшего бизнес-аналитика!"
    assert HrBot.hello("Скайуокер", "QA-инженер") == "Поприветствуйте Скайуокера, нашего нового QA-инженера!"
  end

  test "Year.leap?(integer)" do
    refute Year.leap?(2100)
    assert Year.leap?(2104)
    refute Year.leap?(1900)
    assert Year.leap?(2000)
    assert Year.leap?(1996)
    refute Year.leap?(2019)
  end

  test "RNATranscription.to_rna(charlist)" do
    assert RNATranscription.to_rna('ACGTGGTCTTAA') == 'UGCACCAGAAUU'
    assert RNATranscription.to_rna('G') == 'C'
    assert RNATranscription.to_rna('T') == 'A'
    assert RNATranscription.to_rna('AAAAAAA') == 'UUUUUUU'
  end

  test "Ella.say(string)" do
    assert Ella.say() == "Подумаешь!"
    assert Ella.say("") == "Подумаешь!"
    assert Ella.say("A") == "Хамите, парниша!"
    assert Ella.say("GHBDПРАА") == "Хамите, парниша!"
    assert Ella.say("!1!!F&!") == "Хамите, парниша!"
    assert Ella.say("Г?") == "Не учите меня жить!"
    assert Ella.say("A?") == "Не учите меня жить!"
    assert Ella.say("GHBDПРАА?") == "Не учите меня жить!"
    assert Ella.say("!1!!F&!?") == "Не учите меня жить!"
    assert Ella.say("h?") == "Мрак"
    assert Ella.say("sfdfsf?") == "Мрак"
    assert Ella.say("sfdFFFsf?") == "Мрак"
    assert Ella.say("!1!!f&!?") == "Мрак"
    assert Ella.say("h") == "Хо-хо!"
    assert Ella.say("?") == "Хо-хо!"
    assert Ella.say("!1!&!") == "Хо-хо!"
    assert Ella.say("!1&!?") == "Хо-хо!"
    assert Ella.say("111123456") == "Хо-хо!"
  end

  test "Words.count(string)" do
    assert Words.count("go Go GO") == %{"go" => 3}
    assert Words.count("one fish two fish red fish blue fish") == %{"blue" => 1, "fish" => 4, "one" => 1, "red" => 1, "two" => 1}
    assert Words.count("car : carpet as java : javascript!!&@$%^&") == %{"as" => 1, "car" => 1, "carpet" => 1, "java" => 1, "javascript" => 1}
    assert Words.count("testing, 1, 2 testing") == %{"1" => 1, "2" => 1, "testing" => 2}
    assert Words.count("two_words") == %{"two" => 1, "words" => 1}
  end
end
