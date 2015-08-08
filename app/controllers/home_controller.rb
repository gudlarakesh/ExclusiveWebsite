class HomeController < ApplicationController
  def welcome
    if User.any?
      token_time = User.first.created_at + User.count.minutes
      @seconds_left = (token_time - Time.now).to_i
    else
      @second_left = 0
    end
    @ticket_no = User.count + 1
    @user = User.new
  end

  def waiting
    
  end
end
