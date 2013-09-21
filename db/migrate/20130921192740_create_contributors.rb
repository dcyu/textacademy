class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.boolean :is_admin

      t.timestamps
    end
  end
end
