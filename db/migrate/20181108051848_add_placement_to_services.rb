class AddPlacementToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :placement, :integer
  end
end
