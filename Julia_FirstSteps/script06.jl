#Functions

# declaring functions
function echoName(name)
    println("All hail your highness $name.")
end

function g(x)
    x ^ 2 + 4 * x
end

# evoking functions
echoName("Bodera")
println(g(13))

# inline function declaration
inlineEchoName(name) = println("All hail your highness $name, the berseker of Eldora.")
inlineG(x) = x ^ 2 + 4 * x

# evoking inline functions
inlineEchoName("Bouc")
println(inlineG(22))

# declaring anonymous functions (associated with a variable)
anonymousEchoName = name -> println("All hail your highness $name, the humble one.")
anonymousG = x -> x ^ 2 + 4 * x

# evoking anonymous functions
anonymousEchoName("Sami")
println(anonymousG(18))


# Duck-Typing
#=
This style point is especially relevant to function arguments.
For example, don't declare an argument to be of type `Int` or `Int32` if it really
 could be any integer, expressed with the abstract type Integer.
In fact, in many cases you can omit the argument type altogether, unless
 it is needed to disambiguate from other method definitions, since a `MethodError`
 will be thrown anyway if a type is passed that does not support any of the
 requisite operations. (This is known as duck typing.)

For example, consider the following definitions of a function `addone`
 that returns one plus its argument:

addone(x::Int) = x + 1                 # works only for Int
addone(x::Integer) = x + oneunit(x)    # any integer type
addone(x::Number) = x + oneunit(x)     # any numeric type
addone(x) = x + oneunit(x)             # any type supporting + and oneunit

The last definition of addone handles any type supporting oneunit (which returns
 1 in the same type as x, which avoids unwanted type promotion) and the `+`
 function with those arguments. The key thing to realize is that there is no
 performance penalty to defining only the general addone(x) = x + oneunit(x),
 because Julia will automatically compile specialized versions as needed.
 For example, the first time you call addone(12), Julia will automatically
 compile a specialized addone function for x::Int arguments, with the call to
 `oneunit` replaced by its inlined value 1. Therefore, the first three definitions
 of addone above are completely redundant with the fourth definition.
=#

# let's explore it using meaningless examples
echoName(3.141592653589793) # we do not have specified that arg `name` must be a String

Mtx_A = rand(4,4)
display(Mtx_A) # instantiating a matrix 4x4
print("\n")
display(g(Mtx_A)) # the same way g(x) accept a matrix as an argument
print("\n")

#println(g("Buzz-fizz")) # g(x) will not work with Strings, although `*` is a concatenation operator

Vct_A = [73, 59, 44, 16, 60, 38, 10, 27, 99]
display(Vct_A)
print("\n")
#print(g(Vct_A)) # will also failed, because vectors has problems with well-defined algebraic operations


# Mutating vs non-mutating functions
# mutating functions change the input they receive, non-mutating functions do not alter the input at all.
# by convention, append `!` to mutating functions

println(sort(Vct_A))
println(Vct_A) # the original vector order still remains

println(sort!(Vct_A))
println(Vct_A) # the order of elements in the vector was changed


# Higher-order Functions
# functions that takes as an argument a function or returns another function.

# map()
# map(function, collection) -> transform the collection by applying the function for each element
# http://www.jlhub.com/julia/manual/en/function/map

println(map(g, Vct_A)) # is doing: g(73), g(59), g(44), g(16), g(60), g(38), g(10), g(27), g(99)
println(map(x -> ((x * (-1) - 41) * 5) / 2, Vct_A))

# Broadcasting
#=
~~ Whenever the sound of u in any word is (yu) we use `a` before that noun. ~~
A useful resource when your intention is to perform an operation on all elements
 included in the entry, instead of treating the input as a whole, single object.
=#

println(g.(Vct_A)) # ^ 2 + 4 * x
# is the same as
println(broadcast(g, Vct_A)) # we can work algebraic with vector elements, but not with the vector itself!
