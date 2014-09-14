#If we list all the natural numbers below 10
#that are multiples of 3 or 5, we get 3, 5, 6 and 9.
#The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.


# def one_to_ten_by_fives_array
#     fives_array = []
#     i = 0
#     while i < 16
#         fives_array.push i
#         i += 5
#     end

#     return fives_array
# end

# def one_to_ten_by_threes_array
#     threes_array = []
#     i = 0
#     while i < 16
#         threes_array.push i
#         i += 3
#     end

#     return threes_array
# end

# fives =  one_to_ten_by_fives_array
# threes = one_to_ten_by_threes_array

# answer = fives.push(threes)
# # answer = answer.uniq!

#  #unique_multiples = answer.uniq
#  puts answer#.reduce(:+)

#  #puts unique_multiples

threes = (0..999).step(3).to_a
fives = (0..999).step(5).to_a
all = threes+fives
clean = all.uniq.sort
sum = 0
clean.each { |a| sum+=a }
print sum
