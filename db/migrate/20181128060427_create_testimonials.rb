class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string :quote
      t.string :author
      t.integer :placement

      t.timestamps
    end
  end
end
