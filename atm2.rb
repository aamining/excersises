# how to work with time and date in our code"
# time = Time.new
#
# # Components of a Time
# puts "Current Time : " + time.inspect
# puts time.year    # => Year of the date
# puts time.month   # => Month of the date (1 to 12)
# puts time.day     # => Day of the date (1 to 31 )
# puts time.wday    # => 0: Day of week: 0 is Sunday
# puts time.yday    # => 365: Day of year
# puts time.hour    # => 23: 24-hour clock
# puts time.min     # => 59
# puts time.sec     # => 59
# puts time.usec    # => 999999: microseconds
# puts time.zone    # => "UTC": timezone name

# This will produce the following result −
#
# Current Time : Mon Jun 02 12:03:08 -0700 2008
# 2008
# 6
# 2
# 1
# 154
# 12
# 3
# 8
# 247476
# UTC
time= Time.new
if time.hour < 12
  greeting = "Good Morining"
elsif
  greeting = "Good Afternoon"
end
puts("-------------------------------------------------")
puts "       #{greeting} Dear Customer "
puts "     Today is #{Time.new}"
puts("-------------------------------------------------")

account = Array.new # account=[]
ballance = 0
account<< ballance

# How to do While loop and Case-When
i=0
while i!= 4

puts ("1- Withdraw                   2- Check Balance   ")
puts ("3- Deposit                    4- Exit")
i = gets.chomp.to_i


# puts "your account Balance is: #{ballance} $"


  case i
    when 1
      #write and read from an array with ruby
      puts("**** Withdraws ****")
      puts ("How much cash you want to withdraw? ($)")
      k = gets.chomp.to_i
      ballance=ballance-k
      if ballance>0
        account<< ballance
      else
        puts ("Sorry you do not have enough money in your account")
        puts ("**************************************************")
        ballance=ballance + k
      end
    when 2
      puts("**** Check Balance ****")
      puts("-----------------------")
      puts("Your Account Balance is : #{ballance}")

    when 3
      puts("**** Deposit ****")
      puts("How much cash you want to Deposit?")
      k = gets.chomp.to_i
      ballance = ballance + k
      account << ballance


      when 4
        puts ("Thank you")

    end
end
