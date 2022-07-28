class AddEventdateToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :eventdate, :date
  end
end
