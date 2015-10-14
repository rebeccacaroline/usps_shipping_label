class RemoveFieldsFromLabel < ActiveRecord::Migration
  def change
    remove_column :labels, :sender, :text
    remove_column :labels, :recipient, :text
    remove_column :labels, :dimensions, :text
    remove_column :labels, :customs_info, :text
  end
end
