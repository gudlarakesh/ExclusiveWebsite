class AddTicketNoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ticket_no, :string
    add_column :users, :integer, :string
  end
end
