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
  tweet_array = tweet.split(" ")
  short_tweet = []
  tweet_array.map do |word|
    if dictionary.keys.include?(word.downcase)
      short_tweet << dictionary[(word.downcase)]
    else
      short_tweet << word
    end
  end
    short_tweet.join(" ")
end