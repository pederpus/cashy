module Messages exposing (Msg(..))

import Navigation
import Model exposing (Transaction)
import Http exposing (..)


type Msg
    = NewUrl String
    | UrlChange Navigation.Location
    | Signout
    | CategoryInput String
    | AmountInput String
    | LoadTransactions
    | LoadedTransactions (Result Http.Error (List Transaction))
    | SaveTransaction
    | SavedTransaction (Result Http.Error Transaction)
    | DeleteTransaction String
    | DeletedTransaction (Result Http.Error String)
