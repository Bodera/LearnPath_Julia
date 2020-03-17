# Now let's work with conditional statements in Julia
# This is how the 'if' syntax looks like
g = 3718
# the '&&' means the logical "AND" operator
# the '||' means the logical "OR" operator
# the symbol '%' computes the remainder after division
# the symbol '!=' means different of
# the symbol '==' means equals to
if (g % 16 == 0) || (g % 8 == 0)
    println("Nice, 16 or 8 are multiples of $g")
elseif (g > 50) && (g <= 3708)
    println("$g is either greater than 50 and less than 3708")
elseif (g % 2 != 0)
    println("$g is an odd number")
else
    println("It seems to me that all of the above conditions for $g have returned false.")
end

println("To learn more about conditional statements consider visit this site:")
println("http://web.engr.oregonstate.edu/~rookert/cs162/ecampus-video/CS161/template/chapter_4/ifelse.html")

# now we will cover ternary operator
h = 23
println((h < 32) ? (h + 32) : (h - 32))
#=
ternary operator is equivalent to:
if a
    b
else
    c
end
=#

# do you know something about short-circuit evaluation?
(h <= 32) && println("Yes $h is less than or equals to 32")

true && (print("Hello"); print(" World \n")) #executed
false && (print("Hello"); print(" World")) #not executed
#(h > 12) && error("h cannot be greater than 12") #returning an error

true || println("Fizz") #will only identify that it's return true
false || println("Buzz") #will return the println
