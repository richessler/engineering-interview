class ChangeColumnsInTweetsTable < ActiveRecord::Migration
  def change
    change_column :tweets, :name, :string,  null: false
    change_column :tweets, :created_at, :datetime, null: false
  end
end
