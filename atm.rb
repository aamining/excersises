# time = link 'https://www.timeanddate.com/time/zone/australia/sydney'
def fileopen
File.new("account.txt", 'a')
File.open('account.txt')
end
fileopen
j= File.read('account.txt').to_i

puts("-----------------------------------------")
puts ("       Hello Dear Customer ")
puts                Time.now
puts("------------------------------------------")
puts("your account Balance is:")
print j

i= 0

while i!= 4


  File.open('account.txt')
  j= File.read('account.txt').to_i
  puts("$")
  puts ("1- Withdraw                   2- Check Balance   ")
  puts ("3- Deposit                    4- Exit")

  i = gets.chomp.to_i
  case i
    when 1
      # open and write to a file with ruby
      puts("**** Withdraws ****")
      puts ("How much cash you want to withdraw? ($)")
      k = gets.chomp.to_i
      j=j-k
      if j>= 0
        open('account.txt', 'w') { |f| f.puts j}
      else
        puts ("Sorry you do not have enough money in your account")
        puts ("***********************************************")
      end
    when 2
      puts("**** Check Balance ****")
      puts("-------------")
      puts("Your Account Balance is :")
      File.open('account.txt')
      j= File.read('account.txt')
      print j
    when 3
      puts("**** Deposit ****")
      puts("How much cash you want to Deposit?")
      k = gets.chomp.to_i
      j=j+k
      open('account.txt', 'w') { |f|
        f.puts j}
      when 4
        puts ("Thank you")

    end
end
