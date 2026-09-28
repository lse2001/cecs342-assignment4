# Spec: Merge sort in Haskell (CECS 342 Assignment 4)

## Goal
Implement `msort :: Ord a => [a] -> [a]` in Main.hs using the merge sort algorithm,
completing the provided template.

## Requirements
- Use merge sort (split list in half, recursively sort both halves, merge the results).
  NOT quick sort, despite the wording in step 1 of the assignment.
- Implement it with plain recursion and pattern matching. Only the Prelude is allowed; no imports
  except Data.List.splitAt-equivalents already in Prelude (splitAt, length).
- Use a separate helper `merge :: Ord a => [a] -> [a] -> [a]`.
- Handle the base cases: empty list and single-element list.
- The sort must be stable and work for any Ord type (Int and String are tested).
- Code must be short, readable, and commented so a student can explain every line in class.

## Program output
- Header lines: "CECS 342 Assignment 4", "Name: <MY NAME>",
  "Algorithm: merge sort, Language: Haskell"
- Keep `testSort` and the five test cases from the template unchanged
  (including -43 in the fourth test).

## Deliverables
- Main.hs with a header comment listing all tools and websites used.
- output.txt produced by: ./Main > output.txt

## Done when
- `ghc Main.hs` compiles with no errors.
- output.txt matches the expected format and every "Sorted" line is correctly sorted.
