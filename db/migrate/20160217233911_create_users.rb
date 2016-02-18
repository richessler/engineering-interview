class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :handle,              limit: 100,  null: false
      t.string    :email,               limit: 100,  null: false
      t.string    :encrypted_password,  limit: 100
      t.datetime  :created_at,                 null: false
    end
  end
end
