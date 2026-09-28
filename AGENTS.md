# Agent instructions

## Project
Single-file Haskell program (Main.hs) for a university assignment. See SPEC.md for requirements.

## Environment
- Compiler: GHC (installed via GHCup)
- Build: `ghc Main.hs`
- Run: `./Main > output.txt`

## Rules
- Follow SPEC.md exactly; ask before deviating from it.
- Do not modify `testSort` or the test cases in `main`.
- Do not add dependencies, packages, or cabal/stack files.
- Prefer clarity over cleverness: no point-free tricks, no advanced language extensions.
- Comment the code so each function's purpose and each recursive case is explained.
- After editing, compile and run the program, then verify output.txt is correct.
- Delete build artifacts (*.hi, *.o) when finished.
