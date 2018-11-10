class AddFieldsToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :people, :text
    add_column :portfolios, :ideas, :text
    add_column :portfolios, :proud_of, :text
    add_column :portfolios, :cherry_on_top, :text
  end
end
