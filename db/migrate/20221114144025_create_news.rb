class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :header
      t.text :body
      t.string :link
      t.integer :types

      t.timestamps
    end
  end
end
