class PostsController < ApplicationController
    def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @place = Place.find(parans["place_id"])
    @post.place_id = @place.id
  end

  def create
    @post = Post.new(parans["post"])
    @post.save
    redirect_to "/places/#{@post.place_id}"
  end

  def show
    @post = Post.find(parans["id"])
  end
end
