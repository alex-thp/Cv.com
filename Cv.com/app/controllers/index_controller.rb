class IndexController < ApplicationController
  def home
  end

  def cv
  end

  def show
  	@name = params[:name]
  	@title = params[:title]
  	@telephone = params[:telephone]
  	@siteweb = params[:siteweb]
  	@presentation = params[:presentation]
  	@experience = params[:experience]
  	@formation = params[:formation]
  	@email = current_user.email
  end
end
