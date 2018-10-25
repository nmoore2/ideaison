class AddFieldsToImage < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :photo, :string
    add_column :images, :portfolio_id, :integer
    add_column :images, :caption, :text
    add_column :images, :placement, :integer
    add_column :images, :image_type, :string
    add_column :images, :video_url, :string
  end
end
