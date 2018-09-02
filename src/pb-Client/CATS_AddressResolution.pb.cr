## Generated from CATS_AddressResolution.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Client
  
  struct AddressResolution
    include Protobuf::Message
    
    contract_of "proto2" do
      required :action_command, :int32, 1
      optional :resolve_number, ResolveNumber, 2
      optional :resolve_result, ResolveResult, 3
      optional :find_telnumber, FindTelNumber, 4
      optional :result_find_telnumber, ResultFindTelNumber, 5
      optional :resolve_email, ResolveEmail, 6
      optional :create_script, DataScript, 7
      optional :resolve_number2, ResolveNumber, 8
      optional :resolve_result2, ResolveResult, 9
    end
  end
  
  struct ResolveNumber
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :tel_number, :string, 1
      optional :customer_id, :string, 2
      optional :vnst, :string, 3
      optional :filter, :string, 4
    end
  end
  
  struct ResolveResult
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :data_set, CATSDataSet, 1
    end
  end
  
  struct FindTelNumber
    include Protobuf::Message
    
    contract_of "proto2" do
      required :search_fields, CATSDataSet, 1
      repeated :result_fields, :int32, 2
      optional :use_or_search, :bool, 3
      optional :sorted_by, :int32, 4
      optional :count, :int32, 5
    end
  end
  
  struct ResultFindTelNumber
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :result_data_set, CATSDataSet, 1
    end
  end
  
  struct ResolveEmail
    include Protobuf::Message
    
    contract_of "proto2" do
      required :email, :string, 1
    end
  end
  end
