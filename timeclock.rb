class Employee
  
  # Creates name variable and greets the user.
  def initialize (name)
    @name = name
    puts "yo, #{@name.capitalize}"
  end

  # Displays current name.
  def name
    @name
  end

  # Allows user to assign an email address.
  def email= (email_address)
    @email = email_address
    puts "You have set #{@name}'s email address to #{@email}."
  end

  # Displays email address.
  def email
    @email
  end

  # Obtains current time and date and writes it to a log file.
  def in
    @timein = Time.now.asctime
    lf = File.new("/home/sam/Dropbox/timeclock/timelog.txt", "a")
    lf.puts "#{@name.capitalize} clocked IN at #{@timein}."
    lf.puts "============================="
    lf.close
    puts "You punched in at #{@timein}"
    puts "Have a productive day!"
  end

  # Obtains current time and date and writes it to a log file.
  def out 
    @timeout=Time.now.asctime
    lf = File.new("/home/sam/Dropbox/timeclock/timelog.txt", "a")
    lf.puts "#{@name.capitalize} clocked OUT at #{@timeout}."
    lf.puts "============================="
    lf.close
    puts "You punched out at #{@timeout}"
    puts "Enjoy your day off!"
  end
end

# Asks the user what their name is.
print "Who are you? "
user_name = gets.chomp

# Creates new employee object with name that the user provided
user_name = Employee.new("#{user_name}")

# Asks the user if they would like to clock in or out.
print "In which direction would you like to clock? "
direction = gets.chomp

# Calls method to record clock in or clock out time
if direction == "in"
  user_name.in
elsif direction == "out"
  user_name.out
else
  puts "Invalid entry"
end

