class Company < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string  :name     ,:null => false
      t.string  :memo
      t.string  :address
      t.float   :lat
      t.float   :lng
      t.integer :zoom
      t.string  :url1
      t.string  :url2
      t.timestamps
    end
  end
end
