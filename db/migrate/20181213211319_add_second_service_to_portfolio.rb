class AddSecondServiceToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :service_id_2, :integer
  end
end
