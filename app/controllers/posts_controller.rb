class PostsController < ApplicationController

    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def show
        @post = Post.find_by({ "id" => params["id"] })
    end

    def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/posts"
    end

    def edit
        @post = Post.find_by({ "id" => params["id"] })
    end
    
    def update
        @post = Post.find_by({ "id" => params["id"] })
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/posts"
    end
    
    def destroy
        @post = Post.find_by({ "id" => params["id"] })
        @post.destroy
        redirect_to "/posts"
    end

end
