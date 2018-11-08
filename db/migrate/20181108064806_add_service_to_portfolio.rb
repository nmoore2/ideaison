class AddServiceToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_reference :portfolios, :service, foreign_key: true
  end
end
