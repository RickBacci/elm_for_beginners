module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    , { name = "Banana", qty = 35, freeQty = 0 }
    ]


freeItems : Int -> Int -> Item -> Item
freeItems quantity amount item =
    if item.qty >= quantity then
        { item
            | freeQty = item.qty // quantity * amount
        }
    else
        item


newCart : List Item
newCart =
    List.map ((freeItems 5 1) >> (freeItems 10 3)) cart


main : Html.Html msg
main =
    newCart
        |> toString
        |> Html.text
