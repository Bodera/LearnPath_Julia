using Printf

println("JuliaBox notebooks tutorials!")

println("Type \";\" and then you can use shell commands. Like \";pwd\"")

a_simple_int = 245
println(typeof(a_simple_int))

a_simple_float = 0.5772156649
println(typeof(a_simple_float))

a_simple_str = "I'm the goat"
println(typeof(a_simple_str))

println(typeof('1'))

# Now let's understand comments in Julia

#=
Julia allows interpolation into string literals using $, as in Perl
Multi-line comments looks like that.
=#

# Syntax for basic math operations
var_sum = 15 + 18 + 35
println("The value of var_sum is: $var_sum")

var_diff = 101 - 256
println("The value of var_diff is: $var_diff")

var_prod = 8 * 3 * 9
println("The value of var_prod is: $var_prod")

var_quot = 114 / 7
@printf("The value of var_quot is: %.2f\n", var_quot)

var_pow = 2 ^ 12
println("The value of var_pow is: $var_pow")

var_mod = 30 % 5
println("The value of var_mod is: $var_mod")
