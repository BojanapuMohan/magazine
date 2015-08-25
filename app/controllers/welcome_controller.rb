class WelcomeController < ApplicationController
  def index
  	@articles = Article.all
  end

  def dashboard
  end
end
