class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :what_you_do
      t.text :what_musical_artist
      t.text :best_concert
      t.text :coolest_experience
      t.text :consume_cannabis
      t.text :which_instrument
      t.text :beauty_product
      t.text :unique_place
      t.string :photo

      t.timestamps
    end
  end
end
