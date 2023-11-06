class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :label
      t.float :amount

      t.timestamps
    end
  end
end
