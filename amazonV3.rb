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

# class Library
#   def initialize(Book)
#     @Book =Book
#   end
#   attr_accessor :Book
# end




#################################### process
#CONSTANTS#######
###########GENRES
action =  Genre.new("Action")
biography =  Genre.new("Biography")
mystery = Genre.new("Mystery")
sci_fi = Genre.new("Science Fiction")
romance = Genre.new("Romance")
###########TYPE
paper_back = Type.new("Paper Back")
hard_cover = Type.new("Hard Cover")
audio_book = Type.new("Audio Book")
###########AUTHOR
ian_flemming = Author.new("Ian Flemming")
alastair_reynolds = Author.new("Alastair Reynolds")
arthur_doyle = Author.new("Arthur Conan Doyle")
emilia_ferguson = Author.new("Emilia Ferguson")
nicole_elliot = Author.new("Nicole Elliot")
daphne_du_maurier=Author.new("daphne_du_maurier")
steve_jobs=Author.new("steve_jobs")
andrew_morton=Author.new("andrew_morton")
anne_frank=Author.new("Anne Frank")
gillian_flynn=Author.new("Gillian Flynn")
wilkie_collins=Author.new("Wilkie Collins")
paul_woodruff=Author.new("Paul Woodruff")
luke=Author.new("Luke")
ray_bradbury=Author.new("Ray Bradbury")

#Book
thunderBall = Book.new("Thunderball -007",ian_flemming ,action, 1968, paper_back, "The ninth novel in Ian Fleming’s James Bond series, Thunderball marks the beginnings of one of the most iconic villains in history, and the only match for the wits of James Bond", 4.50, 0.80)
revelationSpace = Book.new("Revelation Space",alastair_reynolds ,sci_fi, 2000, paper_back, "a huge magnificent space opera that ranges across the known and unknown universe", 11.50, 0.90)
sherlockHolmes = Book.new("Sherlock Holmes - The Hound of the Baskervilles",arthur_doyle ,mystery, 1902, hard_cover, "The story of an attempted murder inspired by the legend of a fearsome, diabolical hound of supernatural origin.", 7.0, 0.5)
highlander = Book.new("Heart Of A Highlander (Lairds of Dunkeld Series) (A Medieval Scottish Romance Story)", emilia_ferguson, romance, 2017, paper_back, "A Medieval Scottish Romance Story", 0.98, 0.96)
heat = Book.new("2X The Heat", nicole_elliot, romance, 2017, paper_back, "2X The Heat is a super steamy menage firefighter romance. There are MF and MFM scenes in this book. It has a HEA and NO Cliffhanger. TherBoke are a few bonus Book for your reading pleasure (Including an EXCLUSIVE Book, Deflowered). Enjoy!", 3.0, 1)
Book.new("Rebecca",daphne_du_maurier,mystery,1938,paper_back,"Story of a young woman who marries a fascinating widower only to find out that she must live in the shadow of his former wife, Rebecca, who died mysteriously several years earlier.", 4.50,0.85)
Book.new("Steve Jobs",steve_jobs,biography,2011,paper_back,"Steve Jobs is the authorized self-titled biography book of Steve Jobs. The book was written at the request of Jobs by Walter Isaacson, a former executive at CNN and TIME who has written best-selling",6.0,0.9)
Book.new("Diana",andrew_morton,biography,1992,paper_back,"A reissue of this classic title brought up to date with never-before-published material from the original taped interviews and a new introduction by Andrew Morton.",7.0,0.80)
Book.new("The diary of Young girl",anne_frank,biography,1947,paper_back,"The Diary of a Young Girl, also known as The Diary of Anne Frank, is a book of the writings from the Dutch language diary kept by Anne Frank while she was in hiding for two years with her family during the Nazi occupation of the Netherlands",3.5,0.5)
Book.new("Sharp Objects",gillian_flynn,mystery,2006,paper_back,"Sharp Objects is a 2006 novel by American author Gillian Flynn and her debut novel. The book was first published through Shaye Areheart Book on September 26, 2006, and has subsequently been re-printed through Broadway Book.",4.0,0.5)
Book.new("The woman in white",wilkie_collins,mystery,1860,paper_back,"The Woman in White is Wilkie Collins' fifth published novel, written in 1859. It is considered to be among the first mystery novels and is widely regarded as one of the first in the genre of",3.0,0.6)
reverent = Book.new("Be Reverent",paul_woodruff,romance,2000,paper_back,"The modern church has become a comfortable place, as congregations focus on creating warm and welcoming environments.",4.0,0.75)
Book.new("The Acts Of The Apostles",luke,romance,1876,audio_book,"he Diocese of Parramatta is offering you the opportunity to attend Study of Paul's Journeys in",5.0,0.8)
Book.new("Fahrenheit 451",ray_bradbury,sci_fi,1953,audio_book,"Fahrenheit 451 is a dystopian novel by American writer Ray Bradbury, published in 1953. It is regarded as one of his best works. The novel presents a future American society where Book are outlawed and firemen burn any that are found.",3.0,0.7)
#USERS
amazon = Book.all
#START

amazon.each{|i| puts i.title}
puts "******************"

def select_genre
  puts "Please choose from below"
  genres=[]
  Genre.all.each_with_index{|i,index|
    genres << i
    puts "#{index+1}| #{i.name}"
  }
  choice =  gets.chomp.to_i
  return genres[choice-1].name
  # Book.all.each{|a|
  #   if choice == a.genre.name.downcase
  #     puts a.title
  #   end
  # }
  # book_choice =  gets.chomp.downcase
end

def show_genre_book(genre_choice)
  array = []
  count = 0
  Book.all.each_with_index{|i,index|
    if genre_choice == i.genre.name
      array << i.title
      count +=1
      puts "#{count}| #{i.title}"
    end
  }
  return array[(gets.chomp.to_i)-1]

end

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

def add_to_library(user, book_title)
  Book.all.each{|i|
    if i.title == book_title
      @book_choice = i
    end}
  user.library << @book_choice
end

# def count_genre(user, genre)
#   user.library.select{ |v| v.genre.name.include?(genre) }
# end
# genres= []
# user.library.each{|book|
#   genres<< book.genre.name
# }
# genres.uniq!
# genres.each{|i|
#   a = count_genre(ric, i).count
#   puts "#{i} #{a}"
# }

def fav_genre(user)
  arr=[]
  j=user.library.length
  for i in 0..j-1
    arr <<user.library[i].genre.name
  end
  freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  recommended_genre=arr.max_by { |v| freq[v] }
  recommended_genre
end

def recommended_book(chosen_genre)
  array = []
  Book.all.each{|i|
    array << i.title if i.genre.name == chosen_genre
  }
  array.sample
end

#A search function that search for the title
def search
  array = []
  Book.all.each{|i|
    array << i
  }
  puts "Please enter your search term"
  user_input = gets.chomp
  array.each{|s|
    #change .title to another class attributes to search for that instead
    if s.title.include?(user_input)
      puts s.title, s.description
    end
  }
end

def return_three_recs_by_rating(chosen_genre)
  array = []
  Book.all.each{|i|
    array << i if i.genre.name == chosen_genre
  }
  array.sort_by! { |f| [-f.rating, f.title] }
  puts "Your reccomendation in order of relevance and price are:"
  array.each{|i|
    puts "#{i.title} - Rating: #{i.rating*100}%"
  }
end

def return_three_recs_by_price(chosen_genre)
  array = []
  Book.all.each{|i|
    array << i if i.genre.name == chosen_genre
  }
  array.sort_by! { |f| [f.price.to_i, f.title] }
  puts "Your reccomendation in order of relevance and price are:"
  array.each{|i|
    puts "#{i.title} - Price: $#{i.price}"
  }
end
################################################################################
user = User.new("Ric", 28, [thunderBall,revelationSpace,sherlockHolmes, highlander, heat, reverent])
###select the genre
myGenre = select_genre
###select a book from that genre
mySelection = show_genre_book(myGenre)
#show more information on that book
display_book(mySelection)
puts "*" * 20
puts "Would you like to add this book to your library?"
puts "[y] yes or [n] return to genre list "
choice = gets.chomp.downcase
case choice
when "y"
  add_to_library(user, mySelection)
when "n"
  show_genre_book(myGenre)
else
  puts "error"
end
puts "*" * 20
puts "#{mySelection} has been added to your library"
puts "*" * 20
return_three_recs_by_rating(fav_genre(user))
#puts "We think that you would like #{recommended_book(fav_genre(user))}"
puts "*" * 20



#puts user.library.each{|book| puts book.title}


abort

# display_book(book_choice)
###test user



add_to_library(ric, heat)
#ric.library.each{|book|puts book.title}

#counts the genres in the users library, orders them most to least popular

#######################################


puts recommended_book(fav_genre(ric))
