class AddTechnologiesAndUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies_users, id: false do |t|
      t.belongs_to :technology, index: true
      t.belongs_to :user, index: true
    end
  end
end
