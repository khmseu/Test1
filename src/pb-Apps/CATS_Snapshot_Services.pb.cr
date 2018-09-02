## Generated from CATS_Snapshot_Services.proto for SnapshotMessages
require "protobuf"

require "./CATS_Support.pb.cr"

module Apps
  module SnapshotMessages
    
    struct Snapshot
      include Protobuf::Message
      
      contract_of "proto2" do
        required :s_command, :int32, 1
        optional :snapshot_device_argument, SnapshotDeviceArgument, 2
        optional :snapshot_device_result, SnapshotDeviceResult, 3
      end
    end
    
    struct SnapshotDeviceArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
      end
    end
    
    struct SnapshotDeviceResult
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :calls, :int64, 1
        repeated :states, Support::ConnectionState, 2
      end
    end
    end
  end
