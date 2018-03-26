require 'pry'
def dictionary
  dictionary =
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end



def word_substituter(tweet_string)
  tweet_array = tweet_string.split
  tweet_array.collect do |string|
    if dictionary.keys.include?(string.downcase)
        dictionary[string.downcase]
    else
        string
    end
  end.join(" ")
end

# def bulk_tweet_shortener(tweet_array)
#   y = tweet_array.join
#   z = y.split
#   x = z.collect do |string|
#     if dictionary.include?(string.downcase)
#         dictionary[string.downcase]
#     else
#         string
#     end
#   end
#   puts x.join(" ")
# end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_array)
  if tweet_array.length > 140
    tweet_array.each do |tweet|
      puts word_substituter(tweet)
    end
  else
    tweet_array
  end
end

def shortened_tweet_truncator(tweet_array)
    if tweet_array.length > 140
    x = tweet_array.each do |tweet|
        word_substituter(tweet)
        end
