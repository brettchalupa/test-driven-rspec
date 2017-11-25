class CreateConsoles < ActiveRecord::Migration[5.1]
  def change
    create_table :consoles do |t|
      t.string :name, null: false
      t.string :manufacturer, null: false

      t.timestamps
    end
  end
end
