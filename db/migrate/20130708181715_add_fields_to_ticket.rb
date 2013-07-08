class AddFieldsToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :showing_id, :integer
    add_column :tickets, :seat, :string
  end
end
