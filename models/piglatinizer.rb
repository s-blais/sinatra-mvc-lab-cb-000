class PigLatinizer

<<<<<<< HEAD
  # IMHO, this is better than the posted solution. All in one method, one word or multiple, doesn't care. Also doesn't care how many consonants the word starts with. Why write specific code for each possibility of one or two or three consonants? Ugh. What about schnozz? schlock? sphygmomanometer? My code works with those!

  def piglatinize(user_phrase)
    word_array = user_phrase.split(" ").collect do |word|
      word_letters = word.split("")
      leading_consonants = ""
      if word.start_with?(/[aeiouAEIOU]/)
        word += "way"
      else
        while !word_letters[0].match(/[aeiouAEIOU]/)
          leading_consonants << word_letters.shift
          end
        word = word_letters.join("") + leading_consonants + "ay"
      end
    end
    word_array.join(" ")
  end

=======
  attr_accessor :text

  def initialize(user_phrase = nil) #default value here just to satisfy testing is silly, right?
    @text = user_phrase
  end


  def piglatinize
    operated_array = @text.split(" ").collect do |word|
      word_letters = word.split("")
      consonant_cluster = ""
      if word.start_with?(/[aeiou]/)
        word += "way"
      else
        while !word_letters[0].match(/[aeiou]/)
          consonant_cluster << word_letters[0]
          word_letters.shift
          end #ends until
        word = word_letters.join("") + consonant_cluster + "ay"
      end #ends first if else
    end #ends first do
    operated_array.join(" ")
  end #ends method

  def output
    piglatinize
  end



>>>>>>> 26e0be5fc21777243a549959eea1a938776b566f
end
