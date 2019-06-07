module MyFFI
   ( alert
   , prompt
   , add1
   , add2
   , add3
   , add10
   ) where

import Prelude

import Data.Function.Uncurried (Fn1, Fn10, Fn2, Fn3, runFn1, runFn10, runFn2, runFn3)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)

foreign import alertImpl :: EffectFn1 String Unit
alert :: String -> Effect Unit
alert = runEffectFn1 alertImpl

foreign import promptImpl :: EffectFn2 String String String
prompt :: String -> String -> Effect String
prompt = runEffectFn2 promptImpl

foreign import add1Impl :: Fn1 Int Int
add1 :: Int -> Int
add1 = runFn1 add1Impl

foreign import add2Impl :: Fn2 Int Int Int
add2 :: Int -> Int -> Int
add2 = runFn2 add2Impl

foreign import add3Impl :: Fn3 Int Int Int Int
add3 :: Int -> Int -> Int -> Int
add3 = runFn3 add3Impl

foreign import add10Impl :: Fn10 Int Int Int Int Int Int Int Int Int Int Int
add10 :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int
add10 = runFn10 add10Impl
