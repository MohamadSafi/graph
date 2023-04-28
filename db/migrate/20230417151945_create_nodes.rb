class CreateNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :nodes do |t|
      t.string :label
      t.string :data

      t.timestamps
    end
  end
end
