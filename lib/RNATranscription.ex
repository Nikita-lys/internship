defmodule RNATranscription do
  # use ExUnit.Assertions
  @moduledoc """
  Получив цепочку ДНК, верните ее РНК-комплемент (согласно транскрипции РНК). Обе цепи ДНК и РНК представляют
  собой последовательность нуклеотидов. Четыре нуклеотида, обнаруженные в ДНК, представляют собой аденин (A),
  цитозин (C), гуанин (G) и тимин (T). Четыре нуклеотида, обнаруженные в РНК, представляют собой аденин (А),
  цитозин (С), гуанин (G) и урацил (U).

  Учитывая цепь ДНК, ее транскрибируемая цепь РНК формируется путем замены каждого нуклеотида его комплементом:
  G -> C
  C -> G
  T -> A
  A -> U
  Примеры вызовов, чтобы себя проверить:
  RNATranscription.to_rna('G') вернет 'C'
  RNATranscription.to_rna('T') вернет 'A'
  RNATranscription.to_rna('ACGTGGTCTTAA') вернет 'UGCACCAGAAUU'
  ...
  """

  @doc """
  1 решение
  """
  # def to_rna(str) do
  #   # map ключ => значение
  #   dna_to_rna = %{?G => ?C, ?C => ?G, ?T => ?A, ?A => ?U}
  #   # Применяем к каждому элементу map
  #   str |> Enum.map(fn x -> dna_to_rna[x] end)
  # end

  defp transcribe(?G), do: ?C
  defp transcribe(?C), do: ?G
  defp transcribe(?T), do: ?A
  defp transcribe(?A), do: ?U

  @doc """
  2 решение (функциональное)
  По цепочке ДНК, возвращает её РНК-комплемент (согласно транскрипции РНК).
  """
  def to_rna(str) do
    Enum.map(str, fn letter -> transcribe(letter) end)
  end
end
