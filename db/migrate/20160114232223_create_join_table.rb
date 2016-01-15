class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :repos do |t|
      t.index :user_id
      t.index :repo_id
      t.boolean :like, default: false
      t.boolean :display, default: true
      t.boolean :fork, default: false
      t.boolean :star, default: false
    end
  end
end
