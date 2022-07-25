class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :website
      t.text :fb_link
      t.text :ig_link
      t.text :other_link
      t.text :image
      t.text :rating
      t.timestamps
    end
  end
end
