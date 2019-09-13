class AddIndexToDogTable < ActiveRecord::Migration[6.0]
  def change
    add_index(:dogs, :name, { unique: true })
  end
end
