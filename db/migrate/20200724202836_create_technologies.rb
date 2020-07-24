class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.column(:technology, :string)
      t.timestamps()
    end
  end
end
