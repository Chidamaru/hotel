class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :room_name
      t.string :introduction
      t.numeric :price
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
