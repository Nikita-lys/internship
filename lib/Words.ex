defmodule Words do
  @moduledoc """
  Нам нужен модуль, который считает количество вхождений слова в текст. Например, для фразы "olly olly in come free" получится вот так: { olly: 2, in: 1, come: 1, free: 1 }

  Примеры для проверки себя:
  Words.count("one fish two fish red fish blue fish") # "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1
  Words.count("car : carpet as java : javascript!!&@$%^&") # "car" => 1, "carpet" => 1, "as" => 1, "java" => 1, "javascript" => 1
  Words.count("testing, 1, 2 testing") # "testing" => 2, "1" => 1, "2" => 1
  Words.count("two_words") # "two" => 1, "words" => 1
  Words.count("go Go GO") # "go" => 3
  ...
  """

  @doc """
  Words.count("car : carpet as java : javascript!!&@$%^&")
  Words.count("one fish two fish red fish blue fish")
  Words.count("testing, 1, 2 testing")
  Words.count("two_words")
  """
  def count(str) do
    str
    # Заменяем все символы кроме букв и цифр на "" и символ _ на " "
    |> String.replace(~r/[\p{P}\p{S}]+/, " ")
    # создаём список из всех слов
    |> String.split(" ")
    # удаляем пустые слова
    |> Enum.reject(fn x -> x == "" end)
    # все слова в нижний регистр
    |> Enum.map(fn x -> String.downcase(x) end)
    # считаем количество каждого элемента списка и засовываем в словарь
    |> Enum.reduce(%{}, fn (el, acc) -> Dict.put(acc, el, Dict.get(acc, el, 0) + 1) end)
  end
end
