#Packages

#=
Julia has over 2000 registered packages. Notably, it has first class function calls
 to other languages, providing excellent foreign function interfaces.
 We can easily call into python or R, for example, with PyCall or Rcall.

Trusted webpages to search for Julia Packages:
 1) https://pkg.julialang.org/docs/
 2) https://juliaobserver.com/packages

Pkg.add("someName") -> Add a package to a given Julia installation.
                        Mandatory when used for the first time.
Pkg is Julia's built-in package manager. The documentation regarding to it can
 be accessed here: https://julialang.github.io/Pkg.jl/v1/

using someName -> Every time that the script runs, load the package as well.
=#

## Importing custom modules in a script
include("./BoderaExample.jl")
#using BoderaExample // see: https://docs.julialang.org/en/v1/manual/modules/index.html#Summary-of-module-usage-1

println(BoderaExample.hello("Gerda. Hope this message finds you well.
 We've visited the Vitale's restauranst yesterday and missed you.
 Please, come back soon to the family that loves you very much"))
println(BoderaExample.domath(13))

## Playing with the Colors package
#Pkg.add("Colors")
using Colors

colors_palette = distinguishable_colors(90) #creating palette of 90 different colors

rand(colors_palette, 3, 3) #creating a random colorized matrix
