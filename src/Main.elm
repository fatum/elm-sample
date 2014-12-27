import Graphics.Element (Element)
import Html (Html, Attribute, toElement)
import View
import Signal
import Debug

--process : Signal View.Update
--process update =
--  case update of
--    View.Add id -> Debug.log ("Value: " ++ id)

scene : Html
scene =
  View.renderLayout [View.menu, View.body]

main : Element
main =
  toElement 1024 768 scene

--main : Signal Element
--main =
--    scene <~ Window.dimensions
