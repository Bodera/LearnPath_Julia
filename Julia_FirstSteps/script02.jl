println("""Don't get scared, I'm just a string presented in a awkward way.""")

var_banana = 0.99
var_orange = 1.55
println("When I went to the market I spent \$$(var_banana + var_orange) in fruits.")

s1 = "That's"
s2 = " all folks!"

println(s1 * s2)

# Strings - Solving exercises

#= 1)
  Create a string that says "hi" 1000 times, first with function repeat
   and then with the exponentiation operator, which can call * under the hood.
  Assign it the variable hi below.

  ?repeat OR "hi" ^ 1000
=#
println(repeat("hi", 1000))
hi = "hi" ^ 1000
println(hi)

#= 2)
  Declare two variables a = 3 and b = 4
   and use them to create two strings:

  "3 + 4" and  "7" then store the results in
  c and d respectively
=#
a = 3
b = 4
c = "$a + $b"
d = "$(a+b)"
println(c, ", ", typeof(c))
println(d, ", ", typeof(d))

# Validation Results
# Assert error :/
