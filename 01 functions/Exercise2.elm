import Html
import String

-- Create a function that uppercases names **longer than** 10 characters
-- Display the name in appropriate uppercased form with the length of the name
-- right next to it like the following:
-- "JAMES MOORE - name length: 11" or "foo bar - name length: 7"

string1 =
  "Foo Bar Baz"

string2 =
  "FooFoo"

newString string =
  if String.length string <= 10 then
     string ++ " - name length: " ++ toString (String.length string)
  else
     String.toUpper string ++ " - name length: " ++ toString (String.length string)




main =
 -- Html.text (newString string1)
  Html.text (newString string2)
