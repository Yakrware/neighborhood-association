class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :url
      t.datetime :expires
      t.integer :sequence

      t.timestamps null: false
    end

    add_attachment :advertisements, :banner
  end
end
