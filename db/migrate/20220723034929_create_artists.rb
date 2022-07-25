class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.text :name
      t.text :image
      t.text :social
      t.text :work
      t.text :bio
      t.integer :gig_id
      t.timestamps
    end
  end
end
