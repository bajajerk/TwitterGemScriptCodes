require 'twitter'

# //Simple Script to it twitter api , post tweets and  get latest tweets for analysis

client = Twitter::REST::Client.new do |config|

  config.consumer_key        = consumer_key
  config.consumer_secret     = consumer_secret
  config.access_token        = access_token
  config.access_token_secret = access_token_secret

end 

# To tweet from here 
# client.update("I'm tweeting with Twitter gem!")

count=0
search_result = client.search("ParmeeshVerma", lang: "en")
search_result.each do |a|
	puts a.text
	puts " "
	puts "the count is #{count}"
	count = count + 1
end


puts "the count is #{count}"
# puts search_result.second.text




