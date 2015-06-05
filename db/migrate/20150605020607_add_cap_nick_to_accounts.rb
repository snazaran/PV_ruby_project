class AddCapNickToAccounts < ActiveRecord::Migration
  def change
add_column :Accounts, :cap_nick, :string
  end
end
