## Generated from CATS_Call_Control_Services.proto for CallControlMessages
require "protobuf"

require "./CATS_Support.pb.cr"

module Apps
  module CallControlMessages
    
    struct CallControl
      include Protobuf::Message
      
      contract_of "proto2" do
        required :cc_command, :int32, 1
        optional :alternate_call_argument, AlternateCallArgument, 4
        optional :alternate_call_result, AlternateCallResult, 5
        optional :answer_call_argument, AnswerCallArgument, 6
        optional :answer_call_result, AnswerCallResult, 7
        optional :call_back_argument, CallBackArgument, 8
        optional :call_back_result, CallBackResult, 9
        optional :call_back_message_argument, CallBackMessageArgument, 10
        optional :call_back_message_result, CallBackMessageResult, 11
        optional :camp_on_call_argument, CampOnCallArgument, 12
        optional :camp_on_call_result, CampOnCallResult, 13
        optional :clear_call_argument, ClearCallArgument, 14
        optional :clear_call_result, ClearCallResult, 15
        optional :clear_connection_argument, ClearConnectionArgument, 16
        optional :clear_connection_result, ClearConnectionResult, 17
        optional :conference_call_argument, ConferenceCallArgument, 18
        optional :conference_call_result, ConferenceCallResult, 19
        optional :consultation_call_argument, ConsultationCallArgument, 20
        optional :consultation_call_result, ConsultationCallResult, 21
        optional :deflect_call_argument, DeflectCallArgument, 22
        optional :deflect_call_result, DeflectCallResult, 23
        optional :directed_pickup_call_argument, DirectedPickupCallArgument, 26
        optional :directed_pickup_call_result, DirectedPickupCallResult, 27
        optional :group_pickup_call_argument, GroupPickupCallArgument, 28
        optional :group_pickup_call_result, GroupPickupCallResult, 29
        optional :hold_call_argument, HoldCallArgument, 30
        optional :hold_call_result, HoldCallResult, 31
        optional :intrude_call_argument, IntrudeCallArgument, 32
        optional :intrude_call_result, IntrudeCallResult, 33
        optional :join_call_argument, JoinCallArgument, 34
        optional :join_call_result, JoinCallResult, 35
        optional :make_call_argument, MakeCallArgument, 36
        optional :make_call_result, MakeCallResult, 37
        optional :park_call_argument, ParkCallArgument, 40
        optional :park_call_result, ParkCallResult, 41
        optional :reconnect_call_argument, ReconnectCallArgument, 42
        optional :reconnect_call_result, ReconnectCallResult, 43
        optional :retrieve_call_argument, RetrieveCallArgument, 44
        optional :retrieve_call_result, RetrieveCallResult, 45
        optional :single_step_conf_argument, SingleStepConfArgument, 46
        optional :single_step_conf_result, SingleStepConfResult, 47
        optional :single_step_trans_argument, SingleStepTransArgument, 48
        optional :single_step_trans_result, SingleStepTransResult, 49
        optional :transfer_call_argument, TransferCallArgument, 50
        optional :transfer_call_result, TransferCallResult, 51
      end
    end
    
    struct NewCallOptions
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_code, :string, 1
        optional :auth_code, :string, 2
        optional :auto_originate, :bool, 3
        optional :line_access_code, :string, 4
        optional :as_transfer, :bool, 5
      end
    end
    
    struct AlternateCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :held_call, :int64, 2
        optional :active_call, :int64, 3
      end
    end
    
    struct AlternateCallResult
      include Protobuf::Message
      
    end
    
    struct AnswerCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call_to_be_answered, :int64, 2
      end
    end
    
    struct AnswerCallResult
      include Protobuf::Message
      
    end
    
    struct CallBackArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :callback_connection, :int64, 2
      end
    end
    
    struct CallBackResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :target_device, Support::Device, 1
      end
    end
    
    struct CallBackMessageArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :callback_message_connection, :int64, 2
      end
    end
    
    struct CallBackMessageResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :target_device, Support::Device, 1
      end
    end
    
    struct CampOnCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :campon_connection, :int64, 2
      end
    end
    
    struct CampOnCallResult
      include Protobuf::Message
      
    end
    
    struct ClearCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call_to_be_cleared, :int64, 2
      end
    end
    
    struct ClearCallResult
      include Protobuf::Message
      
    end
    
    struct ClearConnectionArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :connection_to_be_cleared, :int64, 2
      end
    end
    
    struct ClearConnectionResult
      include Protobuf::Message
      
    end
    
    struct ConferenceCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :held_call, :int64, 2
        optional :active_call, :int64, 3
      end
    end
    
    struct ConferenceCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :conference_call, :int64, 1
        repeated :connections, Support::Device, 2
      end
    end
    
    struct ConsultationCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :existing_call, :int64, 2
        optional :consulted_device, :string, 3
        optional :options, NewCallOptions, 4
      end
    end
    
    struct ConsultationCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :initiated_call, :int64, 1
      end
    end
    
    struct DeflectCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call_to_be_diverted, :int64, 2
        optional :new_destination, :string, 3
      end
    end
    
    struct DeflectCallResult
      include Protobuf::Message
      
    end
    
    struct DirectedPickupCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call_to_be_picked_up, :int64, 2
        optional :requesting_device, :string, 3
      end
    end
    
    struct DirectedPickupCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :picked_call, :int64, 1
      end
    end
    
    struct GroupPickupCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :new_destination, :string, 2
        optional :pick_group, :string, 3
      end
    end
    
    struct GroupPickupCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :picked_call, :int64, 1
      end
    end
    
    struct HoldCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call_to_be_held, :int64, 2
      end
    end
    
    struct HoldCallResult
      include Protobuf::Message
      
    end
    
    struct IntrudeCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :intrude, :int64, 2
      end
    end
    
    struct IntrudeCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :conferenced_call, :int64, 1
      end
    end
    
    struct JoinCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :active_call, :int64, 2
        optional :joining_device, :string, 3
        optional :options, NewCallOptions, 4
      end
    end
    
    struct JoinCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :conferenced_call, :int64, 1
      end
    end
    
    struct MakeCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        required :calling_device, :string, 1
        required :called_directory_number, :string, 2
        optional :options, NewCallOptions, 3
      end
    end
    
    struct MakeCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :calling_device, :int64, 1
      end
    end
    
    struct ParkCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :parking, :int64, 2
        optional :park_to, :string, 3
      end
    end
    
    struct ParkCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :parked_to, Support::Device, 1
      end
    end
    
    struct ReconnectCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :active_call, :int64, 2
        optional :held_call, :int64, 3
      end
    end
    
    struct ReconnectCallResult
      include Protobuf::Message
      
    end
    
    struct RetrieveCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :call_to_be_retrieved, :int64, 2
      end
    end
    
    struct RetrieveCallResult
      include Protobuf::Message
      
    end
    
    struct SingleStepConfArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :active_call, :int64, 2
        optional :device_to_join, :string, 3
        optional :options, NewCallOptions, 4
      end
    end
    
    struct SingleStepConfResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :conferenced_call, :int64, 1
      end
    end
    
    struct SingleStepTransArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :active_call, :int64, 2
        optional :transferred_to, :string, 3
        optional :options, NewCallOptions, 4
      end
    end
    
    struct SingleStepTransResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :transferred_call, :int64, 1
        repeated :connections, Support::Device, 2
      end
    end
    
    struct TransferCallArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :base_device, :string, 1
        optional :held_call, :int64, 2
        optional :active_call, :int64, 3
      end
    end
    
    struct TransferCallResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :transferred_call, :int64, 1
        repeated :connections, Support::Device, 2
      end
    end
    end
  end
