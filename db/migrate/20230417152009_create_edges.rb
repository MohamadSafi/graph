class CreateEdges < ActiveRecord::Migration[7.0]
  def change
    create_table :edges do |t|
      t.references :first_node
      t.references :second_node

      t.timestamps
    end
  end
end
