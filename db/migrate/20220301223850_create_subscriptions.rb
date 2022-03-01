class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :reader
      t.references :magazine
      t.integer :price
    end
  end
end


# reader_id = Reader.ids.sample
#   # Get a magazine instance:
#   magazine_id = Magazine.ids.sample
#   # Get a random price between 10 and 100:
#   price = rand(10..100)