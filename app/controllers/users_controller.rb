class UsersController < ApplicationController
  def new
  	puts params[:id]
  end

  def test
  	render(:new, :layout => 'layout2')
  end
end
