class CreateVisaruns < ActiveRecord::Migration
  def change
    create_table :visaruns do |t|

      t.timestamps null: false
    end
  end
end
