class CreateThingTags < ActiveRecord::Migration[7.0]
  def change
    create_table :thing_tags do |t|
      t.references :thing, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.float :rating

      t.timestamps
    end
  end
end
