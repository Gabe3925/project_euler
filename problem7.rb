# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10,001st prime number?


# 10001_primes_array = [2, 3, 5, 7, 11, 13]
# n = 14

# while 10001_primes_array.length < 10002
#   if n


n = 2
first_10000_numbers = []

while first_10000_numbers.length < 11000
  first_10000_numbers.push(n)
  n = n+1
end

# print first_10000_numbers

not_prime = []
n = 2

while n < 6000
  first_10000_numbers.each do |number|
    not_prime.push(number*(n))
  end
  n = n+1
end

not_prime = not_prime.sort.uniq

# print not_prime
primes_list = first_10000_numbers.zip(not_prime).flatten.compact.sort
# print primes_list

counts = Hash.new(0)
primes_list.each { |v| counts[v] += 1 }
primes = counts.select { |v, count| count == 1 }.keys

puts "ten-thousandth prime : " + primes[10001].to_s
puts "length of primes list:"
puts primes.length

