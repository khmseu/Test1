## Generated from CATS_Capability_Exchange_Services.proto for CapExchangeMessages
require "protobuf"

require "./CATS_Support.pb.cr"

module Apps
  module CapExchangeMessages
    
    struct CapExchange
      include Protobuf::Message
      
      contract_of "proto2" do
        required :ce_command, :int32, 1
        optional :query_support_argument, QuerySupportArgument, 2
        optional :query_support_result, QuerySupportResult, 3
      end
    end
    
    struct QuerySupportArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
      end
    end
    
    struct QuerySupportResult
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :supported, :int32, 1, packed: true
      end
    end
    end
  end
