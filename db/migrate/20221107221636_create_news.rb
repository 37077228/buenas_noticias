class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :header
      t.text :body
      t.string :link
      t.string :types

      t.timestamps
    end
  end
end
