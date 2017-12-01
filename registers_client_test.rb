require 'registers_client'

registers_client = RegistersClient::RegistersClientManager.new({ cache_duration: 3600 })
register_data = registers_client.get_register 'country', 'beta'
puts register_data.get_records[0][:item]
