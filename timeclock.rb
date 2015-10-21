class Employee
  def initialize (name)
    @name = name
    puts "Your name is #{@name}"
  end

  def name
    @name
  end

  def email= (email_address)
    @email = email_address
    puts "You have set #{@name}'s email address to #{@email}."
  end

  def email
    @email
  end

  def in
    @timein = Time.now
    puts "You punched in at #{@timein}"
    puts "Writing to log."
    lf = File.new("timelog.txt", "a")
    lf.puts "#{@name.capitalize} clocked IN at #{@timein}."
    lf.puts "============================="
    lf.close
    puts "Finished writing to log."
  end

  def out 
    @timeout=Time.now
    puts "You punched out at #{@timeout}"
    puts "Writing to log."
    lf = File.new("timelog.txt", "a")
    lf.puts "#{@name.capitalize} clocked OUT at #{@timeout}."
    lf.puts "============================="
    lf.close
    puts "Finished writing to log."
  end
end


