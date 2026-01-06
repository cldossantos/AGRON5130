
# Mathematical operations

2 + 2
3 * 9
sqrt(16)
(5 + 3) / 2


# Assigning values to objects
x <- 10
x


# Creating a vector
my_vector <- c(2, 4, 6, 8)
my_vector


# Learning more about this vector

length(my_vector)
mean(my_vector)
my_vector * 2

# Matrices

my_matrix <- matrix(my_vector, nrow = 2)
my_matrix

# Functions

mean(my_vector)
sum(my_vector)
length(my_vector)
round(mean(my_vector))

## Optional arguments
round(mean(my_vector), digits = 1)

# Loops

for (i in 1:5) {
  print(i)
}


# Looping over a vector
for (value in my_vector) {
  print(value * 2)
}

