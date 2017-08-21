class Author
  def initialize(name)
    @name = name
  end
  attr_accessor :name

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Genre
  def initialize(name)
    @name = name
  end
  attr_accessor :name

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Year
  def initialize(name)
    @name = name.to_i
  end
  attr_accessor :name

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Type
  def initialize(name)
    @name = name
  end
  attr_accessor :name

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Rating
  def initialize(name)
    @name = name
  end
  attr_accessor :name

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Price
  def initialize(name)
    @name = name
  end
  attr_accessor :name

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class User
  def initialize(name, age, library)
    @name = name
    @age= age
    @library = library
  end
  attr_accessor :name, :age, :library

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end


class Book
  def initialize(title, author,  genre, year, type, description, price, rating)
    @title = title
    @author = author
    @genre = genre
    @year  = year
    @type  = type
    @description = description
    @price = price
    @rating = rating
  end
  attr_accessor :title,:author,  :genre, :year, :type, :description, :price, :rating
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Library
  def initialize(books)
    @books =books
  end
  attr_accessor :books
end

###########genres
action =  Genre.new("Action")
biography =  Genre.new("Biography")
mystery = Genre.new("Mystery")
sci_fi = Genre.new("Science Fiction")
romance = Genre.new("Romance")
###########type
paper_back = Type.new("Paper Back")
hard_cover = Type.new("Hard Cover")
audio_book = Type.new("Audio Book")
###########type
ian_flemming = Author.new("Ian Flemming")
alastair_reynolds = Author.new("Alastair Reynolds")
arthur_doyle = Author.new("Arthur Conan Doyle")
emilia_ferguson = Author.new("Emilia Ferguson")
nicole_elliot = Author.new("Nicole Elliot")


thunderBall = Book.new("Thunderball -007",ian_flemming ,action, 1968, paper_back, "The ninth novel in Ian Fleming’s James Bond series, Thunderball marks the beginnings of one of the most iconic villains in history, and the only match for the wits of James Bond", 4.50, 0.80)
revelationSpace = Book.new("Revelation Space",alastair_reynolds ,sci_fi, 2000, paper_back, "a huge magnificent space opera that ranges across the known and unknown universe", 11.50, 0.90)
sherlockHolmes = Book.new("Sherlock Holmes - The Hound of the Baskervilles",arthur_doyle ,mystery, 1902, hard_cover, "The story of an attempted murder inspired by the legend of a fearsome, diabolical hound of supernatural origin.", 7.0, 0.5)
highlander = Book.new("Heart Of A Highlander (Lairds of Dunkeld Series) (A Medieval Scottish Romance Story)", emilia_ferguson, romance, 2017, paper_back, "A Medieval Scottish Romance Story", 0.98, 0.96)
heat = Book.new("2X The Heat", nicole_elliot, romance, 2017, paper_back, "2X The Heat is a super steamy menage firefighter romance. There are MF and MFM scenes in this book. It has a HEA and NO Cliffhanger. TherBoke are a few bonus Book for your reading pleasure (Including an EXCLUSIVE Book, Deflowered). Enjoy!", 3.0, 3.5)

def select_genre
  puts "Please choose from below"
  Genre.all.each_with_index{|i,index|
    puts "#{index+1}| #{i.name}"
  }
  choice =  gets.chomp.downcase
  Book.all.each{|a|
    if choice == a.genre.name.downcase
      puts a.title
    end
  }
  book_choice =  gets.chomp.downcase
end

# select_genre
book_choice ="Thunderball -007"
def display_book(book_choice)
  Book.all.each{|book|
    if book.title.include? (book_choice)
      puts book.type.name
      puts book.author.name
      puts "$#{book.price}"
      puts "#{book.rating*100}%"
      puts book.description
    end
  }
end

#####amazon
amazon = Book.all
# display_book(book_choice)
###test user
ric = User.new("Ric", 28, [thunderBall,revelationSpace,sherlockHolmes,highlander])


current_user = ric
def add_to_library(user, book_choice)
  user.library << book_choice
end
add_to_library(ric, heat)
#ric.library.each{|book|puts book.title}

#counts the genres in the users library, orders them most to least popular
def count_genre(user, genre)

  # user.library.group_by{|x| x}.map{|k,v| [k.genre.name,v.count]}
  user.library.select{ |v| v.genre.name.include?(genre) }
end
genres= []
ric.library.each{|book|
  genres<< book.genre.name
}
genres.uniq!
genres.each{|i|
  a = count_genre(ric, i).count
  puts "#{i} #{a}"
}
#######################################
arr=[]
j=ric.library.length
for i in 0..j-1
  arr <<ric.library[i].genre.name
end
freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
recomanded_genre=arr.max_by { |v| freq[v] }
puts"-"*10
puts "recommended genre for you:"
puts recomanded_genre
puts "-"*10

# puts "Romance : #{count_genre(ric, "Romance").count}"
