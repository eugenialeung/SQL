class AddIndexToDogTable < ActiveRecord::Migration[6.0]
  def change
    # only allows unique true if you lookup by indices
    add_index(:dogs, :name, { unique: true })
  end
end
