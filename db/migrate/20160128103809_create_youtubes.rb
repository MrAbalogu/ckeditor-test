class CreateYoutubes < ActiveRecord::Migration
  def change
    create_table :youtubes do |t|
      t.string :link
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
