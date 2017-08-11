
def read_qa() # read all questions and answers in to arrays
  questions=[]
  answers=[]
  File.read('qruby.txt').each_line {|line| questions.push line.chomp}
  File.read('aruby.txt').each_line {|line| answers.push line.chomp}
  response = {
    :q => questions,
    :a => answers
  }
  return response
  end

# call read_qa()method and run Quiz
  res = read_qa()

  questions_count = res[:q].length
  puts "We have #{questions_count} questions available"
  random_q_index = rand(0..res[:q].length-1)
  puts random_q_index

  puts "Here's a question for you: \n\tQuestion: #{res[:q][random_q_index]}"
  puts "\nEnter your answer: "
  input = gets.chomp.to_s

  # puts ".#{res[:a][random_q_index]}."
  # puts ".#{input}."

  if input == res[:a][random_q_index]
    puts true
  else
    puts false
  end
# end

#                          Input Question and answers
# def write_q()
#   puts "Please type quesion "
#   que=gets.to_s
#   open('qruby1.txt', 'a+') { |f| f.puts que}
# end
#
# def write_a()
#   puts "Please type answer"
#   ans=gets.to_s
#   open('aruby1.txt', 'a+') { |f| f.puts ans}
# end
#
# def write_qa()
#   puts "How many question do you intent to add?"
#   j=0
#   i= gets.to_i
#   while j<i
#     write_q()
#     write_a()
#     j=j+1
#   end
# end
