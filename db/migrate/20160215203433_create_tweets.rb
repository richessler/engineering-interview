class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :name
      t.text :body
      t.references :user

      t.timestamps null: false
    end
  end
end
