# Create a Celsius class, that takes the temperature as a parameter.
#
# Remember to use the `initialize` method
# Define a method that returns the temperature in Fahrenheit. For the conversion we can use the formula `temperature*1.8 + 32`. Round up the result so it doesn’t contain any decimal values.
#
# Use the round method
#
# Create a script that prompts you to fill in the temperature for each day of the week (Monday - Sunday) and for the inputs 16, 17 18, 18, 21, 16, 19 prints out the following output:
#
# ```Mon | 16 degrees C  | 61 degrees F
# Tue | 17 degrees C  | 63 degrees F
# Wed | 18 degrees C  | 64 degrees F
# Thu | 18 degrees C  | 64 degrees F
# Fri | 21 degrees C  | 70 degrees F
# Sat | 16 degrees C  | 61 degrees F
# Sun | 19 degrees C  | 66 degrees F```



require 'artii'
a= Artii::Base.new:font=> 'slant'
puts a.asciify('C=>F')



days=["mon","tue","wed","thu","fri","sat","sun"]
list=[]
i=0

while i<7
  dayss = days[i]
  puts "please enter Temperatur(C) for  " + dayss.to_s
  ctemp = gets.chomp.to_i
  ftemp = ((ctemp)*1.8)+32
  ftemp =  ftemp.round

  listt = [dayss.to_s + "|" + ctemp.to_s + "c"+ "|" + ftemp.to_s + "F"]
  list << listt
  i+=1  # i=i+1
end
puts list
# table = Terminal::Table.new :listt => list


# class Day
#   def initializing (name, temperature)
#     @name=name
#     @temperature=temperature
#   end
# end
#
# class Temperature
#   def initializing
#     @celsious=celsious
#   end
# end
#
# def to_f
#   @celsious*1.8 + 32
# end
# monday=Day.new("Monday",Temperature.new(16))
# puts monday.temperature.celsious
