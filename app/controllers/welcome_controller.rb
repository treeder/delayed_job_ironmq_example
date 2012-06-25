class WelcomeController < ApplicationController

  def self.increment
    @counter ||= 0
    @counter += 1
    @counter
  end

  def index

    user = User.new
    user.delay.background_stuff(WelcomeController.increment)

  end
end