class CreateProverbes < ActiveRecord::Migration[5.1]
  def change
    create_table :proverbes do |t|
      t.string :citation
      t.string :auteur

      t.timestamps
    end
  end
end
