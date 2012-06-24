class AddLabelToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :label, :string

  end
end
