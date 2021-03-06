import Html

-- Write the logic necessary to set the `freeQty` of each record using the
-- following logic:
-- Purchases of 5 or more receive 1 free.
-- Purchases of 10 or more receive 3 free.

cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    , { name = "Banana", qty = 35, freeQty = 0 }
    ]


freeItems quantity amount item =
    if item.qty >= quantity then
        { item
          -- | freeQty = amount
            | freeQty = item.qty // quantity * amount
        }
    else
        item


newCart =
    List.map ((freeItems 5 1) >> (freeItems 10 3)) cart


main =
    newCart
        |> toString
        |> Html.text
