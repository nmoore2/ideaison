class AddImagesToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :image_1, :string
    add_column :portfolios, :image_2, :string
    add_column :portfolios, :image_3, :string
    add_column :portfolios, :image_4, :string
    add_column :portfolios, :image_5, :string
    add_column :portfolios, :video_url, :string
  end
end
