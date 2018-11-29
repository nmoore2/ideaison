class AddPrivateToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :private, :boolean
  end
end
