class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :msg

      t.timestamps
    end
  end
end
