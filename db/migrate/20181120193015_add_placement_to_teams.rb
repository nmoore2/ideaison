class AddPlacementToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :placement, :integer
  end
end
