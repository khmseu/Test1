## Generated from CATS_Logical_Device_Feature_Services.proto for LogDevFeatureMessages
require "protobuf"

require "./CATS_Helper.pb.cr"
require "./CATS_Support.pb.cr"

module Apps
  module LogDevFeatureMessages
    enum AgentState
      AsNull = 0
      AsLoggedOn = 1
      AsLoggedOff = 2
      AsNotReady = 3
      AsReady = 4
      AsBusy = 5
      AsWorkingAfterCall = 6
    end
    
    struct LogDevFeature
      include Protobuf::Message
      
      contract_of "proto2" do
        required :ld_command, :int32, 1
        optional :query_my_extension_argument, QueryMyExtensionArgument, 2
        optional :query_my_extension_result, QueryMyExtensionResult, 3
        optional :set_agent_state_argument, SetAgentStateArgument, 4
        optional :set_agent_state_result, SetAgentStateResult, 5
        optional :get_forwarding_argument, GetForwardingArgument, 6
        optional :get_forwarding_result, GetForwardingResult, 7
        optional :set_forwarding_argument, SetForwardingArgument, 8
        optional :set_forwarding_result, SetForwardingResult, 9
        optional :query_device_list_argument, QueryDeviceListArgument, 100
        optional :query_device_list_result, QueryDeviceListResult, 101
      end
    end
    
    struct QueryMyExtensionArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
      end
    end
    
    struct QueryMyExtensionResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :extension, Support::Device, 1
        optional :agent, Support::Device, 2
        repeated :other_info, Attribute, 3
      end
    end
    
    struct SetAgentStateArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :device, :string, 1
        optional :requested_agent_state, AgentState, 2
        optional :agent_id, :string, 3
        optional :password, :string, 4
        optional :group, :string, 5
        optional :auto_work_on, :bool, 6
        optional :auto_work_interval, :string, 7
      end
    end
    
    struct SetAgentStateResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :pending_agent_state, AgentState, 1
      end
    end
    
    struct GetForwardingArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
      end
    end
    
    struct GetForwardingResult
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :forward_list, Support::ForwardStateOut, 1
      end
    end
    
    struct SetForwardingArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :new_state, Support::ForwardStateIn, 2
      end
    end
    
    struct SetForwardingResult
      include Protobuf::Message
      
    end
    
    struct QueryDeviceListArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 2
        optional :from_lc, :bool, 3
        optional :to_lc, :bool, 4
        repeated :device_list, :string, 1
      end
    end
    
    struct QueryDeviceListResult
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :device_list, Support::Device, 1
      end
    end
    end
  end
