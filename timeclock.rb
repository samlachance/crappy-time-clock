class Employee
  
  # Creates name variable and greets the user.
  def initialize (name)
    @name = name
    puts "Yo, #{@name.capitalize}!"
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
  def in(project)
    @timein = Time.now.asctime
    lf = File.new("/home/sam/Dropbox/timeclock/timelog.txt", "a")
    lf.puts "#{@name.capitalize} clocked INto #{project} at #{@timein}."
    lf.puts "============================="
    lf.close
    puts "You punched in at #{@timein}"
    puts "Have a productive day!"
  end

  # Obtains current time and date and writes it to a log file.
  def out(project)
    @timeout=Time.now.asctime
    lf = File.new("/home/sam/Dropbox/timeclock/timelog.txt", "a")
    lf.puts "#{@name.capitalize} clocked OUT of #{project} at #{@timeout}."
    lf.puts "============================="
    lf.close
    puts "You punched out at #{@timeout}"
    puts "Enjoy your day off!"
  end

  # Beer
  def beer
    @beertime=Time.now.asctime
    lf = File.new("/home/sam/Dropbox/timeclock/timelog.txt", "a")
    lf.puts "#{@name.capitalize} had a beer on #{@beertime}!"
    lf.puts "============================="
    lf.close
    puts "Please code responsibly."
  end
end

# Asks the user what their name is.
print "Who are you? "
user_name = gets.chomp

# Creates new employee object with name that the user provided
user_name = Employee.new("#{user_name}")

# Asks the user what project they are working on.
print "What project are you working on? "
project = gets

# Asks the user if they would like to clock in or out.
print "In which direction would you like to clock? "
direction = gets.chomp

# Calls method to record clock in or clock out time... Or beer.
if direction == "in"
  user_name.in(project)
elsif direction == "out"
  user_name.out(project)
elsif direction == "beer"
  user_name.beer
else
  puts "Invalid entry"
end

