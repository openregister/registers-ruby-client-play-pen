require 'registers_client'

registers_client = RegistersClient::RegistersClientManager.new({ cache_duration: 3600 })
register_data = registers_client.get_register 'country', 'beta'
puts register_data.get_records.first[:item]

germany = register_data.get_records_with_history.select { |r|  r[:key] == 'DE'  }
puts germany.to_json
