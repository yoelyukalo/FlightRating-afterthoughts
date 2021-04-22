class CreateEverythings < ActiveRecord::Migration[6.1]
  def change
    create_table :everythings do |t|

      t.timestamps
    end
  end
end
