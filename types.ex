# Arithmetics
IO.puts 1 + 2
IO.puts 10 / 2 # / returns float, if integer is needed, might need either trunc or round functions
IO.puts 10 * 37
IO.puts round 10 / 2 #Closest integer to 10 / 2, 5
# It can be written like this as well
IO.puts(round(10 / 2))

IO.puts 17 / 4 # 4.25
IO.puts round 17 / 4 # 4
IO.puts trunc 4.99 # 4, integer
IO.puts round 4.99 #

# We can check for certain types
IO.puts is_integer(10.5)
IO.puts is_float(10)
IO.puts is_number(89.9)

# Elixir has 3 boolean operators: "and", 'or' and 'not'
# They strictly expect a value that results in a boolean as the first argument

# This will short circuit to 10
IO.puts(true and 10)
# Whereas this will raise a BadBoolean exception
#IO.puts(10 and true)

IO.puts(is_boolean(10) and false) # false

# More examples of short circuiting (or, and)
true or raise("This error will never be raised")
false and raise("This will also never be raised")
false or raise("This should raise")

# Elixir has nill for representing the absence of a value
# Also it provides three *logical operators* that can manipulate nil, !, && and ||
# For these, false and nil are falsy, all other values are truthy
IO.puts 1 || true # 1
IO.puts 1 && false # false, due to short circuiting
IO.puts !1 # false
IO.puts !true # false
IO.puts !nil # true cuz nil is falsy, so we're setting it to a truthy value

# As a rule of thumb, use and, or and not when you are expecting booleans. If any of the arguments are non-boolean, use &&, || and !.

#Atoms are constants whose values are their own names
IO.puts :apple
IO.puts :ok
IO.puts :ok === :error
# Both booleans are also atoms
IO.puts true === :true
IO.puts is_atom(true)
IO.puts is_boolean(:false)

#Strings are surrounded by double quotes and encoded in UTF-8
IO.puts "Hello" <> ", " <> "world!"
# String concatenation requires both sides to be strings, interpolation does not
ex1 = "world!"
:world!
IO.puts "Hello, #{ex1}"
IO.puts "Hello, #{:world!}"

# Escape sequences allow for line breaks
IO.puts "Hello, \n world!"

#Strings in Elixir are represented internally by contiguous sequences of bytes known as binaries
IO.puts is_binary("Hello world!")

#Getting the numbers of bytes in a string
IO.puts byte_size("Olá")

# Getting the actual length of a string
IO.puts String.length("Olá")
IO.puts String.upcase("Olá")

# Comparison operators

IO.puts 1 > 2
IO.puts "foo" == "foo" # true
IO.puts "foo" === "foo" #true
IO.puts "foo" == "bar"

# If we must distinguish integers and floats, we should use the strict comparison one, just like in JS
IO.puts 1.0 == 1 # true
IO.puts 1.0 === 1 # false
IO.puts 1.0 != 1 # false
IO.puts 1.0 !== 1 # true
