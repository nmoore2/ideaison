class AddPlacementToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :placement, :integer
  end
end
