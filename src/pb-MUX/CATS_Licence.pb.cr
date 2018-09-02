## Generated from CATS_Licence.proto
require "protobuf"

module MUX
  
  struct Licence
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :info, LicenceInfo, 1
    end
  end
  
  struct LicenceInfo
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :current_time, :string, 1
      optional :serial_no, :string, 2
      optional :ws_class, :int32, 3
      optional :monitors, :int32, 4
      optional :clients, :int32, 5
      optional :lines, :int32, 6
      optional :expiration_date, :string, 7
      optional :update_limit, :string, 8
      optional :licensee_short, :string, 9
      optional :licensee, :string, 10
      optional :oem_supplier, :string, 11
      optional :copyright, :string, 12
      optional :client_licence_flags, ClientLicenceFlags, 13
      optional :server_licence_flags, ServerLicenceFlags, 14
    end
  end
  
  struct ClientLicenceFlags
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :partner_list, :bool, 1
      optional :call_operator, :bool, 2
      optional :calls_journal, :bool, 3
      optional :call_history_search, :bool, 4
      optional :chat, :bool, 5
      optional :call_back, :bool, 6
      optional :call_actions, :bool, 7
      optional :first_screean, :bool, 8
      optional :specials, :bool, 9
      optional :contact_search, :bool, 10
      optional :highlight, :bool, 11
    end
  end
  
  struct ServerLicenceFlags
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :demo, :bool, 1
      optional :dial_only, :bool, 2
      optional :dial_only_with_acd, :bool, 3
      optional :oem, :bool, 4
      optional :stop_line_client, :bool, 5
    end
  end
  end
