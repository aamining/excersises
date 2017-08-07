class MyDemo

  attr_writer :size
  attr_reader :shape

  def initialize()
    @size = 5
    @shape = "square"
  end

  # # getters
  # def size
  #   @size
  # end
  #
  # # setters
  # def size=(new_size)
  #   @size = new_size
  # end

end

mydemo1 = MyDemo.new
puts mydemo1.methods
# puts mydemo1.inspect
# puts mydemo1.size
# mydemo1.size=(100)
# puts mydemo1.inspect
