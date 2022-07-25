class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.text :name
      t.text :image
      t.text :genre
      t.text :rating
      t.text :location
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
