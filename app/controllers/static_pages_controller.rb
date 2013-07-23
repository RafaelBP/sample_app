class StaticPagesController < ApplicationController

  def home
  	render :home, :layout => "application"
    puts params[:id]
  end

  def help
  	puts params[:variavel] 
  end

  def about
  end

  def contact
  end
end
