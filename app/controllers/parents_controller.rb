class ParentsController < ApplicationController

  def edit
  end

  def update
    if current_parent.update(parent_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :email)
  end

end
