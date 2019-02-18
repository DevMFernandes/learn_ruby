#write your code here

firstNumber = 0
secondNumber = 0
sumArray = []
entry = ''
operation = ''

while operation != 'exit'
    puts 'Operation: (add, subtract, sum, exit)'
    operation = gets.chomp

    if operation == 'add' or operation == 'subtract'
    puts 'First number:'
    firstNumber = gets.chomp

    puts 'Second number:'
    secondNumber = gets.chomp

    elsif operation == 'sum'
        while entry != 'done'
            puts 'Enter a number: (enter done when ready)'
            entry = gets.chomp
            sumArray.push entry.to_i
        end
        sumResult = 0
        sumArray.each do |num|
        sumResult = sumResult.to_i + num.to_i
        end
        puts sumResult
    end

    def add num1,num2
        num1.to_i + num2.to_i
    end

    def subtract num1,num2
        num1.to_i - num2.to_i
    end

    if operation == 'add'
        puts add(firstNumber,secondNumber)
        
    elsif operation == 'subtract'
        puts subtract(firstNumber,secondNumber)
    end
end