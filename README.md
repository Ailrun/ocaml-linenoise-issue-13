# Prerequisites

1. [Dune build system](https://dune.readthedocs.io/en/stable/overview.html)
1. [ocaml-linenoise](https://github.com/ocaml-community/ocaml-linenoise)

# To Reproduce

1. Clone this repository
   ```
   $ git clone https://github.com/Ailrun/ocaml-linenoise-issue-13
   # or
   $ git clone git@github.com:Ailrun/ocaml-linenoise-issue-13
   ```
1. Build the executable `issue13` with `dune`
   ```
   $ dune build
   ```
1. Execute it
   ```
   $ ./bin/issue13
   ```
1. See broken positions of the cursor
   ```
   λ a _
      ^ where you actually modify
       ^ where the terminal displays the cursor
   λ ab _         # type 'b'
   λ ab  _        # type ' '
   λ ab d _       # type 'd'
   λ ab de _      # type 'e'
   λ ab de_       # go left
   λ ab e_        # delete a character
   ```
