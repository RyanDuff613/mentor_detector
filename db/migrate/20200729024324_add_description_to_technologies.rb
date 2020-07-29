class AddDescriptionToTechnologies < ActiveRecord::Migration[5.2]
  def change
    add_column(:technologies, :description, :string)
  end
end
