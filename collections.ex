# According to Elixir's docs, linked lists and tuples are the most common collection data-types
# Used in the lang, I assume tuples are kind of like arrays, cuz theyre contiguous
# While lists are, well, (linked) lists!

# Linked lists

# Values can be of any type
list1 = [1, 2, 3, true]

# Inspect will print a human readable version of the list, puts expects strings only
IO.puts(inspect(list1))
IO.puts(inspect(([1, 2, 3] -- [1, 2]) ++ [4, 5, 6]))

# Getting the length of a list
IO.puts(length([1, 2, 3, 5]))

# Data structrures are immutable in Elixir, all these operations will simply return a new one
list2 = list1 -- [true]
# list1 stays the same
IO.puts(inspect(list1))
IO.puts(inspect(list2))

# The head of a list is the 1st element
IO.puts(hd(list1))

# The tail are the remaining elements
IO.puts(inspect(tl(list1)))

# Getting the head or the tail of an empty list'll raise an error
# IO.puts(hd([]))


# Tuples, like lists hold any value
# They, however are stored contiguously in memory, so they're kind of like arrays (real ones)
tuple1 = {:hi, "hello"}
IO.puts(inspect(tuple1))

# Getting the size of a tuple
IO.puts(tuple_size(tuple1))

# Putting an element at a certain index of the tuple
tuple2 = put_elem(tuple1, 1, "heyyy")
IO.puts(inspect(tuple2))

# List cuz number words are unknown
IO.puts(inspect(String.split("Hello, Elixir World")))
# Tuple cuz it's always gonna be two
IO.puts(inspect(String.split_at("Hello Elixir World", 4)))

# IO.puts(File.read("abc.txt")) {:error, :enoent}
File.write("abc.txt", "abc")

# Since the number of elems is known in tuples, we can access them via index, this won't happen in lists
IO.puts(elem(tuple2, 1))
