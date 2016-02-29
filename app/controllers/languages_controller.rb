class LanguagesController < ApplicationController

  def change_language
    session[:language] = params[:language].to_sym
    redirect_to root_url
  end

end
