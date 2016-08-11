module Main exposing (..)
import Html

-- Write the logic necessary to set the `freeQty` of each record using the
-- following logic:

-- Purchases of 5 or more receive 1 free.
-- Purchases of 10 or more receive 3 free.

cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


freeItems item =
  if item.qty >= 10 then
     { item
       | freeQty = 3
     }
  else if item.qty >= 5 then
     { item
       | freeQty = 1
     }
  else
    item

newCart = List.map freeItems(cart)


main =
  newCart
  |> toString
  |> Html.text


