class CreateArtistsGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :artists_gigs, :id => false do |t|
      t.integer :artist_id
      t.integer :gig_id
    end
  end
end
