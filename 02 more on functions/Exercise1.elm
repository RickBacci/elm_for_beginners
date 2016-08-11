module Main exposing (..)

import Html
import String

-- 1. Create a new file named `Exercise1.elm`
-- 2. Install the Html module
-- 3. Write an infix function named `~=` that takes two Strings
--    and returns True when the first letter of each string is the same.
-- 4. Call your new `~=` function on 2 strings of your choosing and display the results on the page.

(~=) string1 string2 =
  String.left 1 string1 == String.left 1 string2


main =
  "Bar"
  ~= "Baz"
  |> toString
  |> Html.text

