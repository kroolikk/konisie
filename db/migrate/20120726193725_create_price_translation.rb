class CreatePriceTranslation < ActiveRecord::Migration
  def up
    Price.create_translation_table!({
      description: :text,
      value: :string
    }, {
      migrate_data: true
    })
  end

  def down
    Price.drop_translation_table! migrate_data: true
  end
end
