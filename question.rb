class question
  def initialize
    @num_1 = rand(1..30)
    @num_2 = rand(1..30)
    @sum = @num_1 + @num_2
  end

  def ask_ques(name)
    puts "#{name}: What is #{@num_1} plus #{num_2}?"
  end

  def check_ans(input)
     @sum == input
end