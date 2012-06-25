class WelcomeController < ApplicationController

  def index

    user = User.new
    user.delay.bg_stuff

  end
end