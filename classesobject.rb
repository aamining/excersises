# creat a person app
# class Personfactory
#     # How do we describe it
#     def initialize(name, personality, age, haircolor)
      # @name = name
#       @personality =personality
#       @age = age
#       @haircolor = haircolor
#     end
#     # what can i do
#
#     def age
#       @age
#     end
#
#     def name
#       @name
#     end
#     def name=(name)
#       @name=name
#     end
#     def talk(sentence)
#       puts sentence
#     end
#
#     def say_hello
#       puts "hello, my name is  " + @name + ", I am  " + @age.to_s
#     end

    # def say_age
    #   puts "I am" + @age.to_s
    # end
# end
# trent = Personfactory.new("Trent","Prety coll",27,"brown")
# jamie = Personfactory.new("Jamie","German",18,"Ginger")
#
# puts trent.say_hello
# puts jamie.say_hello

# puts trent.say_age
# puts jamie.say_age
#-----------------------------------------------------
# ATM class
# class Atm
#   def initialize(address,brand,current_cash)
#     @address = address
#     @brand=brand
#     @current_cash=brand
#   end
#
#   def address
#     @address
#   end
#
#   def greeting
#     puts "Hello and welcome to the atm at #{@address}"
#   end
# end
#
#
# broadway_Atm = Atm.new("Broadway shop","commbank", 0)
# ultimo_Atm = Atm.new("Ultimo", "ANZ", 1000)
# hornsby_Atm = Atm.new("Hornsby","Commbank",2000)
#
# puts " Which area are you in? .. 1- Broadway 2- Ultimo 3- Hornsby"
# area = gets.chomp.to_i
#
# case area
#   when 1
#   broadway_Atm.greeting
#   puts broadway_Atm.address
#
#   when 2
#   ultimo_Atm.greeting
#   puts ultimo_Atm.address
#
#   when 3
#   hornsby_Atm.greeting
#   puts hornsby_Atm.address
# end
#*******************************************************************
# ATM class
class Atm
  def initialize(address,brand,current_cash)
    # address, brand and current_cash call arguments
    @address = address
    @brand = brand
    @current_cash = current_cash
  end

  attr_accessor :address, :current_cash
  # attr_accessor use for both getters and setters

# getters
  # def address
  #   @address
  # end
# setters
  # def size=(new_size)
  #   @size = new_size
  # end
  def balance
    puts " Your Available Balance is:" +  @current_cash.to_s
  end

  def greeting
    puts "Hello and welcome to  #{@brand}"
  end
end


broadway_Atm = Atm.new("Broadway shop","commbank", 0)
puts broadway_Atm.methods

ultimo_Atm = Atm.new("Ultimo", "ANZ", 1000)
hornsby_Atm = Atm.new("Hornsby","westbank",2000)

puts " Which area are you in? .. 1- Broadway 2- Ultimo 3- Hornsby"
area = gets.chomp.to_i

case area
  when 1
    broadway_Atm.greeting
    puts broadway_Atm.address
    puts " Your Available Balance is:" +  broadway_Atm.current_cash.to_s
    # the available balance will work because of Attribute accesor, defined in line 91
  when 2
    ultimo_Atm.greeting
    puts ultimo_Atm.address
    puts " Your Available Balance is:" +  @current_cash.to_s
    # the available balance would not work because @current_cash just work inside class
  when 3
    hornsby_Atm.greeting
    puts hornsby_Atm.address
    hornsby_Atm.balance
    # the available balance will work because had been reffered to a methode (def)
end
