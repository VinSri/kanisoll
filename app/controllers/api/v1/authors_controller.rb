class Api::V1::AuthorsController < ApplicationController
  before_action :select_author, only: [:show, :update, :delete]

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

  def show
    render json: @author
  end

   def update
    if @author.update(author_params)
      show
    else
      render json: @author.errors, status: :invalid_update
    end
  end

   def delete
    @author.destroy
  end

  private

  def select_author
    @author = Author.find(params[:id])
  end
  
  def author_params
    params.permit(*allowed_params)
  end

  def allowed_params
    [:author_id, :given_name, :last_name, :email_address, :description, :birth_country, :recognition, :useful_links]
  end
end