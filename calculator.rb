
def calculate(f)

    if f[0..2].downcase == "add" || f == "+"
      a = get_nums()
      b = get_nums()
      puts "#{a} + #{b} = #{add(a, b)}"
      return add(a, b)

    elsif f[0..2].downcase == "sub" || f == "-"
      a = get_nums()
      b = get_nums()
      puts "#{a} - #{b} = #{sub(a, b)}"
      return sub(a, b)

    elsif f[0..2].downcase == "mul" || f == "*"
      a = get_nums()
      b = get_nums()
      puts "#{a} * #{b} = #{mult(a, b)}"
      return mult(a, b)

    elsif f[0..2].downcase == "div" || f == "/"
      a = get_nums()
      b = get_nums()
      puts "#{a} / #{b} = #{div(a, b)}"
      return div(a, b)

    elsif f[0..2].downcase == "exp" || f == "^"
      a = get_nums()
      b = get_nums()
      puts "#{a} ^ #{b} = #{exp(a, b)}"
      return exp(a, b)

    elsif f[0..1].downcase == "sq"
      a = get_nums()
      puts "The square root of #{a} = #{sqrt(a)}"
      return sqrt(a)

    else
      abort("That is not a valid operation. Ta-ta!")
    end

end

def new_calc(f, a)

    if f[0..2].downcase == "add" || f == "+"
      b = get_nums()
      puts "#{a} + #{b} = #{add(a, b)}"
      return add(a, b)

    elsif f[0..2].downcase == "sub" || f == "-"
      b = get_nums()
      puts "#{a} - #{b} = #{sub(a, b)}"
      return sub(a, b)

    elsif f[0..2].downcase == "mul" || f == "*"
      b = get_nums()
      puts "#{a} * #{b} = #{mult(a, b)}"
      return mult(a, b)

    elsif f[0..2].downcase == "div" || f == "/"
      b = get_nums()
      puts "#{a} / #{b} = #{div(a, b)}"
      return div(a, b)

    elsif f[0..2].downcase == "exp" || f == "^"
      b = get_nums()
      puts "#{a} ^ #{b} = #{exp(a, b)}"
      return exp(a, b)

    elsif f[0..1].downcase == "sq"
      puts "The square root of #{a} = #{sqrt(a)}"
      return sqrt(a)

    else
      abort("That is not a valid operation. Ta-ta!")
    end

end

def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mult(a, b)
  a * b
end

def div(a, b)
  a = a.to_f
  b = b.to_f
  a / b
end

def exp(a, b)
  a**b
end

def sqrt(a)
  Math.sqrt(a)
end

def eval_number(n)
  if ("0".."9").include? n[0].downcase || n[0].downcase == "-"
    n.chomp.to_i
  elsif n == "\n"
    n.chomp.to_i
  else
    abort("Sorry, you must enter a numeric character. Goodbye.")
  end
end

def get_nums()
  puts "Enter a number:"
  num1 = gets
  num1 = eval_number(num1)
end

puts "Hola!"
puts "Would kind of operation would you like to do?"
input = gets.chomp
stored_number = calculate(input)

while true do
  puts "Would you like to perform an operation on this result?"
  answer = gets.chomp
  if answer[0].downcase == "y"
    puts "What operation would you like to perform?"
    input = gets.chomp

    stored_number = new_calc(input, stored_number)
  else
    abort("Thanks for playing. Goodbye.")
  end
end
