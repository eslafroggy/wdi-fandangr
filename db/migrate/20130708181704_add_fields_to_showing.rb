class AddFieldsToShowing < ActiveRecord::Migration
  def change
    add_column :showings, :film_id, :integer
    add_column :showings, :showing_on, :datetime
  end
end
