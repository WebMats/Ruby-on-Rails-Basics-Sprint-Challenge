class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :body
      t.timestamp :published_at

      t.timestamps
    end
  end
end
