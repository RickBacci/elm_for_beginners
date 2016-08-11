module Main exposing (..)

import Html
import String

-- 1. Using function composition, create a function named `wordCount` that returns the number of words in a sentence.
-- 2. Call the `wordCount` function with any sentence and display the result on the page.

sentence =
  "Foo Bar Baz"

wordCount =
  String.words >> List.length

main =
  sentence
  |> wordCount
  |> toString
  |> Html.text


