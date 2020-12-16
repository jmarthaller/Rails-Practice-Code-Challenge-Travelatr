class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    


    def average_age
        total_age  = 0
        blogger_array = []
        self.posts.each do |post|
            blogger_array << post.blogger 

        end 
        blogger_array.each do |blogger|
            total_age += blogger.age 
        end
        total_age / blogger_array.size
    end
end
