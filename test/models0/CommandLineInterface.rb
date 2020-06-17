class CommandLineInterface
def run
    greet
    answer = gets_user_input
    search(answer)

    finished
end

def finished
 puts "If finished enter 1. Else enter any other key."
 finish = gets.chomp
 if finish.to_i == 1
   puts "Goodbye!"
   exit
 else
   run
 end
end

def select

end

  def greet
    puts 'Welcome to Dogwalker, the command line solution to for lonely dogs!'
  end

  def gets_user_input
    puts "Enter 1 to search for walkers. Enter 2 to add dog. "
    answer= gets.chomp
  end

  def search(answer)
    if answer.to_i == 1
      puts "Enter name"
      a = gets.chomp
      Walker.find_walker_by_name(a)

      elsif answer.to_i == 2
        puts "Enter Dog name"
        ans = gets.chomp
        puts "Enter breed"
        ans1 = gets.chomp
      puts "Has been walked? Enter true or false"
        ans2 = gets.chomp
        new_dog = Dog.create(name: ans, breed: ans1, walked: ans2)
        puts "#{new_dog.name} has been added to the waitlist!"
      else
        puts "Please enter the correct number"
end
end



end
