module Main exposing (..)

import Html
import String

-- 1. Call your new function `~=` as a prefix function.
-- 2. Display the result on the page

(~=) string1 string2 =
  String.left 1 string1 == String.left 1 string2


main =
  (~=) "Foo" "Bar"
    |> toString
    |> Html.text

