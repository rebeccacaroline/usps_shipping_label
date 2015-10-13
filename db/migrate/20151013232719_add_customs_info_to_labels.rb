class AddCustomsInfoToLabels < ActiveRecord::Migration
  def change
    add_column :labels, :customs_info, :text
  end
end
