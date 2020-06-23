class Players
  attr_reader : name, :lives
  def initalize(name)
    @name = name
    @lives = 3
  end

  def take_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def new_ques
    new_ques = Question.new
    new_ques.ask_ques(name)
    print '>'
    @userchoice = $stdin.gets.chomp
    if new_ques.check_answer?(@userchoice.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      take_life
    end
end

