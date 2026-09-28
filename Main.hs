-- Main.hs
--
-- CECS 342 Assignment 4
-- Merge sort in Haskell
-- Tools used: Zed, Ollama, Qwen3.5 9B, GHC

module Main where

-- merge :: Ord a => [a] -> [a] -> [a]
-- Merges two sorted lists into one sorted list.
-- Repeatedly picks the smaller (or equal) head element from either list.
-- Uses <= for comparison so equal elements keep their original order (stable sort).
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys                     -- Base case: first list empty, return second list
merge xs [] = xs                     -- Base case: second list empty, return first list
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)  -- Recursive case: x is smaller or equal, pick x and continue
    | otherwise = y : merge (x:xs) ys  -- Recursive case: y is smaller, pick y and continue

-- msort :: Ord a => [a] -> [a]
-- Sorts a list using the merge sort algorithm.
-- Splits the list in half, recursively sorts both halves, then merges them together.
msort :: Ord a => [a] -> [a]
msort [] = []                                 -- Base case: empty list is already sorted
msort [x] = [x]                               -- Base case: single element is already sorted
msort xs                                      -- Recursive case: more than one element
    = merge (msort firstHalf) (msort secondHalf)
  where
    mid = length xs `div` 2                    -- Calculate midpoint to split list in half
    firstHalf = take mid xs                    -- Take the first half of the list
    secondHalf = drop mid xs                   -- Drop the first mid elements for the second half

-- Call a sort function and print input and output.
testSort sort input = do
  putStr "Input:  "
  print input
  putStr "Sorted: "
  print (sort input)

-- Call some tests.
main = do
  putStrLn "CECS 342 Assignment 4"
  putStrLn "Name: _____"
  putStrLn "Algorithm: merge sort, Language: Haskell"

  testSort msort ([]::[Int])
  testSort msort [1]
  testSort msort [3, 2, 1]
  testSort msort [102, -43, 5, 645, 4, 34, -6, 776, 445, 45]
  testSort msort ["the",  "quick",  "brown", "fox",
                  "jumps", "over", "the", "lazy", "dog"]
