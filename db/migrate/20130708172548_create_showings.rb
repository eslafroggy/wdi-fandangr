class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|

      t.timestamps
    end
  end
end
