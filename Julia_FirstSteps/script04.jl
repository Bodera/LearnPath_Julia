println("Let's move on and start the study of loops in Julia!")

# while loop syntax
n = -10
while n <= 0
    if n == 0
        print("$n", "\n")
    else
        print("$n", ", ")
    end
    global n = n + 1
end
println()

# Fibonacci series
a = 0
b = 1
sum = 0
count = 0
while count <= 15
    if count == 15
        print(sum, "\n")
    else
        print(sum, ", ")
    end
    global a = b
    global b = sum
    global sum = a + b
    global count += 1
end
println()

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

# for loop syntax
for n in 0:10
    if n == 10
        print("$n", "\n")
    else
        print("$n", ", ")
    end
end
println()

# an example using for with an array
flowers = ["AK-47", "Sour Diesel", "Hawaiian", "Ice", "OG-Kush", "Grapefruit", "Trainwreck", "Super Skunk"]
for flower in flowers
    println("I really like the taste of $flower")
end
println()
