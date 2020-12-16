class Blogger < ApplicationRecord
    has_many :posts 
    has_many :destinations, through: :posts 
    validates_uniqueness_of :name
    validates :age, numericality: {greater_than_or_equal_to: 1 }
    validates :bio, length: {minimum: 30}


    def total_likes
        likes = 0 

        self.posts.each do |post|
            likes += post.likes 
        end
        likes 
    end 

    def featured_post 
        featured_post_likes = 0 
        featured_post = nil
        self.posts.each do |post|
            if post.likes > featured_post_likes
                featured_post = post 
                featured_post_likes = post.likes 
            end
        end
        featured_post.title 
    end 


end
