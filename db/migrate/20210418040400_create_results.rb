class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.string :title
      t.string :string
      t.text :body
      t.string :image_id

      t.timestamps
    end
  end
end
