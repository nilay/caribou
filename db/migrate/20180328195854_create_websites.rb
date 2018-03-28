class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
    	t.string :url, index: { unique: true }, null: false
    	t.text :content

      t.timestamps
    end
  end
end
