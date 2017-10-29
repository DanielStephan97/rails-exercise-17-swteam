class AuthorsController < ApplicationController

  def new
  end

  def index
  end

  def create
    @authors = Authors.new(params[:authors])

    @authors. save
    redirect_to @authors 
  end
end
