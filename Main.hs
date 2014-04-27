module Main where

import Debug.Trace

main :: IO()
main = do putStrLn "What the hell yo"
          putStrLn "This is a thing"
          dothatreducething

data Direction = North | South | West | East
               deriving Show


reducefn :: Integer -> Integer -> Integer
reducefn x y | trace ("zomg" ++ show x ++ " " ++ show y) False = undefined
reducefn x y = x + y


dothatreducething :: IO()
dothatreducething = do putStrLn $ "Zomg: " ++ show (foldl (reducefn) 0 [1,2,3,4,5])
                       print "zomg"
                       putStrLn "Zomg"

whatever :: IO()
whatever = do putStrLn "WTF"
              putStrLn $ "Foo" ++ "Bar" ++ (show (filter (>3) [1,2, 3, 4, 5, 6]))




foobar :: [Integer] -> Integer
foobar = sum . map (\x -> 7*x + 2) . filter (>3)

