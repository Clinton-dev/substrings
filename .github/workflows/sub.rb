 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts "enter word(s)"
  words = gets.chomp

  def subString(word,arrOfSubs)
  wordsArr = word.downcase.split(' ')

  subStringFreq = Hash.new(0)
  
  wordsArr.select do |word|
    arrOfSubs.each do |char|
      if (word.include? char)
        subStringFreq[word] += 1
      end
    end
  end

  subStringFreq.each do |word,frequency|
    puts word + ' ' + frequency.to_s
  end
end

subString(words,dictionary)
