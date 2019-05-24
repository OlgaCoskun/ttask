class CreateCommits < ActiveRecord::Migration[5.2]
  def change
    create_table :commits do |t|
      t.datetime :date
      t.references :user, index: true, foreign_key: true
      t.string :sha
      t.string :message

      t.timestamps
    end
  end
end
