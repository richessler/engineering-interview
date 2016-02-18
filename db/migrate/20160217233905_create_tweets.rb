class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text        :content
      t.datetime    :created_at

      t.references  :user
    end
  end
end
