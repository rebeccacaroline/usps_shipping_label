class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.text :sender
      t.text :recipient
      t.float :weight
      t.text :dimensions

      t.timestamps
    end
  end
end
