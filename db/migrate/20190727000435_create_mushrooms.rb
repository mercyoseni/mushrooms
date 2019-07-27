class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|

      t.timestamps
    end
  end
end
