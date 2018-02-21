require 'double_entry'

DoubleEntry.configure do |config|
  config.define_accounts do |accounts|
    user_scope = accounts.active_record_scope_identifier(User)
    accounts.define(:identifier => :savings,  :scope_identifier => user_scope)
    accounts.define(:identifier => :checking, :scope_identifier => user_scope)
  end

  config.define_transfers do |transfers|
    transfers.define(:from => :checking, :to => :savings,  :code => :deposit)
    transfers.define(:from => :savings,  :to => :checking, :code => :withdraw)
  end
end
