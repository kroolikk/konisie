class ChangeValueOnPrice < ActiveRecord::Migration
  def up
  	change_column :prices, :value, :string
  end

  def down
  	change_column :prices, :value, :float
  end
end
