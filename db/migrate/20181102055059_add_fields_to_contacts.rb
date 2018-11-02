class AddFieldsToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :first_name, :string
    add_column :contacts, :last_name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :message, :text
  end
end
