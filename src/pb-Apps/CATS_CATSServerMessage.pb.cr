## Generated from CATS_CATSServerMessage.proto
require "protobuf"

module Apps
  
  struct CATSServerMessage
    include Protobuf::Message
    
    contract_of "proto2" do
      required :line, :string, 1
    end
  end
  end
