def dictionary
  dictionary = {
  'hello' => 'hi',
  'to' => '2',
  'two' => '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
}
end



def word_substituter(string)
  tweet = string.split

  tweet.map! do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  tweet.join(' ')

end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)

  end
end


def selective_tweet_shortener(string)

  if string.length <= 140
    return string
  else word_substituter(string)
  end
end


def shortened_tweet_truncator(string)
  if string.length > 140
    return "#{string[1...133]} + '...'"
  else string.length < 140
    return string
  end
end











#oldtweet = string.split
#newtweet = []
#counter = 0
#index = oldtweet[counter].downcase

#while counter < oldtweet.length do
#  if dictionary.keys.include?(index)
#    newtweet.push(dictionary[index])
#  else
#    newtweet.push(index)
#    counter += 1
#  end
#end
#return newtweet.join(' ')
