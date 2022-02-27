class ChangeDataTypeValue < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :value, :integer
  end
end
