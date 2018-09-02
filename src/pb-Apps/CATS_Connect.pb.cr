## Generated from CATS_Connect.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Apps
  
  struct Connect
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :to_app, ToApp, 1
      optional :from_client, FromClient, 2
      optional :connected, Connected, 3
      optional :accepted, Accepted, 4
      optional :disconnect, Disconnect, 5
    end
  end
  
  struct ToApp
    include Protobuf::Message
    
    contract_of "proto2" do
      required :appname, :string, 1
    end
  end
  
  struct FromClient
    include Protobuf::Message
    
    contract_of "proto2" do
      required :new_conn, :int32, 1
      required :client, :string, 2
      required :version, Version, 3
      required :agent_name, :string, 4
      required :pc_name, :string, 5
    end
  end
  
  struct Accepted
    include Protobuf::Message
    
    contract_of "proto2" do
      required :new_conn, :int32, 1
    end
  end
  
  struct Connected
    include Protobuf::Message
    
    contract_of "proto2" do
      required :new_conn, :int32, 1
      required :version, Version, 2
    end
  end
  
  struct Disconnect
    include Protobuf::Message
    
    contract_of "proto2" do
      required :conn_id, :int32, 1
    end
  end
  end
