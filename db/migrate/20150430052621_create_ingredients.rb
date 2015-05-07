class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      # Let's just store money as an integer number of cents. That will make it easier to change around later.
      # Actually I just found there's a library for money. Let's use that!
      t.money :cost
      t.timestamps
    end
  end
end
