class DestinationsController < ApplicationController

    def show 
        @destination = Destination.find(params[:id])
        @posts = @destination.posts.order("created_at desc").limit(5)
    end 
end 