class CodesController < ApplicationController
  def index
    @codes = Code.all

  end

  def show
    @code = Code.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
