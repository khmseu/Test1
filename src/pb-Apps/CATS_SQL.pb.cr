## Generated from CATS_SQL.proto for RemoteSQL
require "protobuf"

module Apps
  module RemoteSQL
    
    struct SQLop
      include Protobuf::Message
      
      contract_of "proto2" do
        required :sql_command, :int32, 1
        optional :connect_argument, ConnectArgument, 2
        optional :connect_result, ConnectResult, 3
        optional :execute_argument, ExecuteArgument, 4
        optional :execute_result, ExecuteResult, 5
        optional :close_argument, CloseArgument, 6
        optional :close_result, CloseResult, 7
      end
    end
    
    struct ConnectArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        required :dsn, :string, 1
      end
    end
    
    struct ConnectResult
      include Protobuf::Message
      
      contract_of "proto2" do
        required :conn, :int32, 1
      end
    end
    
    struct ExecuteArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        required :conn, :int32, 1
        required :cmd, :string, 2
      end
    end
    
    struct ExecuteResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :data, Data, 1
      end
    end
    
    struct CloseArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        required :conn, :int32, 1
      end
    end
    
    struct CloseResult
      include Protobuf::Message
      
    end
    
    struct Data
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :head, Header, 1
        repeated :rows, RowDB, 2
      end
    end
    
    struct Header
      include Protobuf::Message
      
      contract_of "proto2" do
        required :name, :string, 1
        required :type, :string, 2
      end
    end
    
    struct RowDB
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :val, ValueDB, 1
      end
    end
    
    struct ValueDB
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :str, :string, 1
      end
    end
    end
  end
