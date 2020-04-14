println("Time to practice some data structures!")
println("We're going to study the following:\n -Dictionaries\n -Tuples\n -Arrays", "\n")

# Tuples are immutable and have ordered sequences of elements (index allowed)
tuple_sample = ("gold", "silver", "bronze")
println(tuple_sample[2])

# the line below produces an error
# tuple_sample[1] = "graphene"

# Since Julia 1.0 we've NamedTuples, take a look at them:
named_tuple_sample = (medal1 = "gold", medal2 = "silver", medal3 = "bronze")
println(named_tuple_sample[1], ", ", named_tuple_sample.medal3, "\n")

# Dicts are a set of related data pair, they are mutable but store unordered elements (index not allowed)
# to create a dictionary we use the Dict() function like that:
dict_car_plates = Dict("Volvo_V70" => "W-58917 G", "Volkswagen_Polo" => "77-BT-004", "Toyota_Alphard" => "B-116 OB", )

# Dicts are formed by keys and respective values. To return a value we must pass the associated key.
println(dict_car_plates["Volkswagen_Polo"], "\n")
# The line below produces an error
# println(dict_car_plates["77-BT-004"])

# adding another key/value element to our dictionary
dict_car_plates["Opel_Zafira"] = "77-XG001"
println(dict_car_plates, "\n")

# removing a key/value element of our dictionary
pop!(dict_car_plates, "Volkswagen_Polo")
println(dict_car_plates)

#this won't work: dict_car_plates[2]

# Arrays are ordered collections (index allowed) and also are mutable
array_sample = ["Snake", "Tortoise", "Lizard", "Alligator"]
# Arrays can have more than 1 dimension and store different data types
array_sample[4] = "Crocodile"
println("First element: ", array_sample[1], ", entire array: ", array_sample)
# Notice how Julia is 1-based indexing, not 0-based like other languages?

# adding an element to an array
push!(array_sample, "Chameleon", "Salamandra")
println(array_sample)
# removing an element of an array
pop!(array_sample)
println(array_sample)

array_2D_sample = rand(1, 2)
println(array_2D_sample)
array_3D_sample = rand(2, 1, 2)
println(array_3D_sample)
