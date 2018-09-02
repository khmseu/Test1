## Generated from CATS_Call_Associated_Feature_Services.proto for CallAssociatedMessages
require "protobuf"

require "./CATS_Support.pb.cr"

module Apps
  module CallAssociatedMessages
    
    struct CallAssociated
      include Protobuf::Message
      
      contract_of "proto2" do
        required :ca_command, :int32, 1
        optional :set_user_data_argument, SetUserDataArgument, 2
        optional :set_user_data_result, SetUserDataResult, 3
      end
    end
    
    struct SetUserDataArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call, :int64, 2
        required :index, :int32, 3
        required :value, :string, 4
      end
    end
    
    struct SetUserDataResult
      include Protobuf::Message
      
    end
    end
  end
