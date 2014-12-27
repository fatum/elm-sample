module View where

import Html (Html, Attribute, text, toElement, div, input, nav, a, ul, li)
import Html.Attributes (..)
import Html.Events (..)
import Signal (Channel, send, subscribe, channel)

type Update = NoOp | Add Int

updatesChannel : Channel Update
updatesChannel = channel NoOp

menu : Html
menu =
  nav
    [class "navbar navbar-default"]
    [
      div [class "container-fluid"]
        [
          div [class "navbar-header"]
          [
            a [ onClick (send updatesChannel (Add 1))
              , class "navbar-brand" ]
              [ text "Sample App" ]
          ]
        ]
    ]

body : Html
body =
  div [class "row"] [
    ul [class "nav nav-tabs"]
      [
        li [class "active"]
          [
            a [href "#"] [text "Home"]
          ]
      ]
    ]


renderLayout : List Html -> Html
renderLayout children =
  div [class "container"] children
