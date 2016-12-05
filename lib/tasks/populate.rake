namespace :db do
	task :populate => :environment do
		require 'populator'
		require 'faker'
		
		Post.populate 100 do |post|
       			post.post    = Faker::Lorem.words(4)        
 		end

		Author.populate 100 do |author|
       			author.name = Faker::Name.name        
 		end
		
	end
end
