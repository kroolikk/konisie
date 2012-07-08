class AddPriorityToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :priority, :integer, :default => 0

  end
end
