class UpdateSuperheros2 < ActiveRecord::Migration
  def change
    add_column :superheros, :city_id, :integer
  end
end
