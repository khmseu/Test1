## Generated from CATS_Monitor.proto for Monitor
require "protobuf"

module Apps
  module Monitor
    
    struct Property
      include Protobuf::Message
      enum State
        GREEN = 1
        YELLOW = 2
        RED = 3
      end
      
      contract_of "proto2" do
        optional :application, :string, 1
        optional :stat_change_time, :string, 2
        required :prop_name, :string, 3
        required :prop_state, Property::State, 4
        required :prop_message, :string, 5
      end
    end
    
    struct SetProperties
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :property, Property, 1
        optional :reset_app, :bool, 2, default: false
      end
    end
    
    struct PropertyTable
      include Protobuf::Message
      
      struct Server
        include Protobuf::Message
        
        struct App
          include Protobuf::Message
          
          contract_of "proto2" do
            required :name, :string, 1
            required :last_reset, :uint64, 2
            repeated :properties, Property, 3
          end
        end
        
        contract_of "proto2" do
          repeated :path, :string, 1
        end
      end
      
      contract_of "proto2" do
        repeated :servers, PropertyTable::Server, 1
      end
    end
    end
  end
