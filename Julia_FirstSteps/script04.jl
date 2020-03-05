println("Let's move on and start the study of loops in Julia!")

# while loop syntax
n = -10
while n <= 0
    if n == 0
        println("$n", "\n")
    else
        print("$n", ", ")
    end
    global n = n + 1
end

# Fibonacci series
a = 0
b = 1
sum = 0
count = 0
while count <= 15
    if count == 15
        println(sum, "\n")
    else
        print(sum, ", ")
    end
    global a = b
    global b = sum
    global sum = a + b
    global count += 1
end

# an example using while with an array
flowers = ["Cherry blossom", "Lotus", "Orchid", "Dandelion", "Chrysanthemum", "Water lily", "Sunflower", "Tulip"]
count = 1
while count <= length(flowers)
    flower = flowers[count]
    if flower == "Lotus"
        println("I really like the smell of $flower")
    else
        println("I really like the smell of $flower", "s")
    end
    global count += 1
end
println()

# for loop syntax. The in keyword can be substituted by '=' and '∈'
for n = 0:10 #in
    if n == 10
        println("$n", "\n")
    else
        print("$n", ", ")
    end
end

# an example using for with an array
flowers = ["AK-47", "Sour Diesel", "Hawaiian", "Ice", "OG-Kush", "Grapefruit", "Trainwreck", "Super Skunk"]
for flower ∈ flowers #in
    print("I really like the taste of $flower", "\n")
end
println()

# using for loops to create an addition table
# 1st stp - initialize an array with zeros
c, r = 5, 5 #five columns, five rows
print("Matrix A:", "\n")
A = fill(0, (c, r)) # A = zeros(c, r) will fill with 0.0(float)
display(A)
# now let's iterate over this array via column-major loops in order to get the best performance.
println()
for m ∈ 1:c
    for n ∈ 1:r
        A[m,n] = m + n
    end
end
display(A) # this I've learned here: http://julia.cookbook.tips/doku.php?id=arraysmatrix
# let's practice more this stuff
println("\n", "\n", "Matrix B:")
B = zeros(c, r)
display(B)
println()
for m ∈ 1:c, n ∈ 1:r
    B[m,n] = m * n
end
display(B)
# see the way we've created a multiplication table?
println("\n", "\n", "Matrix C:")
C = [m * n for m ∈ 1:c, n ∈ 1:r]
display(C)
# array comprehension. Is cool it isn't?
# now let's mix loops and array comprehension
println("\n", "Matrix D:")
for count ∈ 1:10
    D = [m * n for m ∈ 1:count, n ∈ 1:count]
    display(D)
    println()
end
println("\n", "(munjaz bibaraea) .منجز ببراعة")
println("\n", " Well done, in arabic أحسنت", " ", '\U1F63A')
