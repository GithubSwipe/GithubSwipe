class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.integer :githubId
      t.integer :stars
      t.integer :forks
      t.string :summary
      t.string :title
      t.string :url
      t.integer :issues
      t.string :language

      t.timestamps null: false
    end
  end
end
