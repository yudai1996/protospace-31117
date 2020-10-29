class PrototypesController < ApplicationController

  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype.create(prototype_params)
    
    if @prototype.save
      render :index
    else
      redirect_to new_prototype_path
    end

  end

  private
    def prototype_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    end

end
