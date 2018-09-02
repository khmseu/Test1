## Generated from CATS_ExtServices.proto
require "protobuf"

module Apps
  
  struct ExtServices
    include Protobuf::Message
    
    contract_of "proto2" do
      required :messagetype, :int32, 1
      optional :call_register, CallRegister, 2
      optional :call_register_result, CallRegisterResult, 3
    end
  end
  
  struct CallRegister
    include Protobuf::Message
    
  end
  
  struct CallRegisterResult
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :reference, :string, 1
    end
  end
  end
