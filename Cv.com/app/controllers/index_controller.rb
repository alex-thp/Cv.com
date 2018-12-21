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

  	@personnal = Personnal.new
  	@personnal.user_id = current_user.id
  	@personnal.name = @name
  	@personnal.title = @title
  	@personnal.telephone = @telephone
  	@personnal.siteweb = @siteweb
  	@personnal.presentation = @presentation
  	@personnal.save

  	@experience2 = Experience.new
  	@experience2.user_id = current_user.id
  	@experience2.content = @experience
  	@experience2.save

  	@formation2 = Formation.new
  	@formation2.user_id = current_user.id
  	@formation2.content = @formation
  	@formation2.save
  end
end
