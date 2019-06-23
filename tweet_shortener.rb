# Write your code here.
def dictionary
  {
"hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
'be' => "b",
'you' => "b",
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
  tweet_array = tweet.split
  tweet_array.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word = word
    end
    tweet_array.join(" ")
end
end