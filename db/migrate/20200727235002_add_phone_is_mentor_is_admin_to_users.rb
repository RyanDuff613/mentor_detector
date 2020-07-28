class AddPhoneIsMentorIsAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :is_admin, :boolean, default: true
  end
end
