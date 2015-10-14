class AddFieldsToLabel < ActiveRecord::Migration
  def change
    add_column :labels, :sender_name, :string
    add_column :labels, :sender_street1, :string
    add_column :labels, :sender_street2, :string
    add_column :labels, :sender_city, :string
    add_column :labels, :sender_state, :string
    add_column :labels, :sender_zip, :string
    add_column :labels, :recipient_name, :string
    add_column :labels, :recipient_street1, :string
    add_column :labels, :recipient_street2, :string
    add_column :labels, :recipient_city, :string
    add_column :labels, :recipient_state, :string
    add_column :labels, :recipient_zip, :string
    add_column :labels, :width, :float
    add_column :labels, :length, :float
    add_column :labels, :height, :float

  end
end
