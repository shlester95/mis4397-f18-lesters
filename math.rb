# input a, b
# output a * b

def multiply(a, b)
    a * b
end

def ask_user_sum
    a = gets.chomp.to_i # ask the user for input a
    b = gets.chomp.to_i # ask the user for input b
    puts multiply(a, b)
end

ask_user_sum