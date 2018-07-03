class CreateOnes < ActiveRecord::Migration[5.0]
  def change
    create_table :ones do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
