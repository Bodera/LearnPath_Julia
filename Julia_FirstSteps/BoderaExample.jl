#=
Custom module inspired by the Example.jl Julia module
 available at: https://github.com/JuliaLang/Example.jl/blob/master/src/Example.jl
=#
module BoderaExample
export hello, domath

"""
    hello(who::String)

Return "Hello `who`.".
"""
hello(who::String) = "Hello $who.\n"

"""
    domath(x::Number)

Return `x ^ 2`
"""
domath(x::Number) = x ^ 2

end
