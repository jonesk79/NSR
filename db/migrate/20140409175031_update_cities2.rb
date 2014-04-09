class UpdateCities2 < ActiveRecord::Migration
  def change
    remove_column :cities, :city_id, :integer
  end
end
