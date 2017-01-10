class Recipe
	include HTTParty

 hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
   ENV['FOOD2FORK_KEY']='70e6115696461bc1dd49485155991dd6'

	base_uri "http://#{hostport}/api"
	default_params key: ENV['FOOD2FORK_KEY']
	format :json

	def self.for term
get("/search",query:{q: term})["recipes"]
	end
end
