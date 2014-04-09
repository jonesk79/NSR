class UpdateSuperheros < ActiveRecord::Migration
  def change
    remove_column :superheros, :city, :string
  end
end
