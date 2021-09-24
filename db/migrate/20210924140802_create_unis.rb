class CreateUnis < ActiveRecord::Migration[5.2]
  def change
    create_table :unis do |t|
      t.string :name

      t.timestamps
    end
  end
end
