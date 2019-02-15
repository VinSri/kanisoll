class Api::V1::AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render json: @authors
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      render json: @author, status: :created, location: api_v1_author_url(@author)
    end
  end

  private
  
  def author_params
    params.require(:author).permit(:author_id, :author_given_name, :author_last_name)
  end
end