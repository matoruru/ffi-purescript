module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log, logShow)
import MyFFI (add1, add10, add2, add3, alert, prompt)

main :: Effect Unit
main = do
  alert "Hello, world"
  prompt "Input something" "default text" >>= log
  logShow $ add1  1
  logShow $ add2  1 2
  logShow $ add3  1 2 3
  logShow $ add10 1 2 3 4 5 6 7 8 9 10
