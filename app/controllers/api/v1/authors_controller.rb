class Api::V1::AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render json: @authors
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      render json: @author, status: :created, location: api_v1_author_url(@author)
    else
      render json: @author.errors, status: :invalid_creation
    end
  end

  private
  
  def author_params
    params.permit(:author_id, :given_name, :last_name)
  end
end