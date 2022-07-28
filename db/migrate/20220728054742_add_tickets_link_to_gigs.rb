class AddTicketsLinkToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :tickets_link, :text
  end
end
