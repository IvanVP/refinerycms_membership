class AddProfileFieldsToUsers < ActiveRecord::Migration

  def self.up
    add_column Refinery::User.table_name, :first_name, :string
    add_column Refinery::User.table_name, :last_name, :string
    add_column Refinery::User.table_name, :member_until, :datetime
    add_column Refinery::User.table_name, :membership_level, :string, :default => 'Refinery::User'
  end

  def self.down
    remove_column Refinery::User.table_name, :first_name
    remove_column Refinery::User.table_name, :last_name
    remove_column Refinery::User.table_name, :member_until
    remove_column Refinery::User.table_name, :membership_level
  end

end
