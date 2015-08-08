class HomeController < ApplicationController
  def welcome
    if Ticket.active.any?
      @waiting_count = Ticket.active.count
      @current_ticket = Ticket.active.first
      @new_ticket = Ticket.new
      @new_ticket.ticket_no = Ticket.count + 1
      @seconds_left = 54      
    else
      @seconds_left = 0
    end
  end
end