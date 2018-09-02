## Generated from CATS_IO_Services.proto for IOServicesMessages
require "protobuf"

require "./CATS_Support.pb.cr"
require "./CATS_Events.pb.cr"

module Apps
  module IOServicesMessages
    enum DataPathType
      Text = 0
      Voice = 1
    end
    
    struct IOServices
      include Protobuf::Message
      
      contract_of "proto2" do
        required :dio_command, :int32, 1
        optional :start_data_path_argument, StartDataPathArgument, 2
        optional :start_data_path_result, StartDataPathResult, 3
        optional :stop_data_path_argument, StopDataPathArgument, 4
        optional :stop_data_path_result, StopDataPathResult, 5
        optional :send_data_argument, SendDataArgument, 6
        optional :send_data_result, SendDataResult, 7
        optional :send_multicast_data_argument, SendMulticastDataArgument, 8
        optional :send_multicast_data_result, SendMulticastDataResult, 9
        optional :send_broadcast_data_argument, SendBroadcastDataArgument, 10
        optional :send_broadcast_data_result, SendBroadcastDataResult, 11
        optional :suspend_data_path_argument, SuspendDataPathArgument, 12
        optional :suspend_data_path_result, SuspendDataPathResult, 13
        optional :data_path_suspended_argument, DataPathSuspendedArgument, 14
        optional :data_path_suspended_result, DataPathSuspendedResult, 15
        optional :resume_data_path_argument, ResumeDataPathArgument, 16
        optional :resume_data_path_result, ResumeDataPathResult, 17
        optional :data_path_resumed_argument, DataPathResumedArgument, 18
        optional :data_path_resumed_result, DataPathResumedResult, 19
        optional :io_register_argument, IORegisterArgument, 20
        optional :io_register_result, IORegisterResult, 21
        optional :io_register_cancel_argument, IORegisterCancelArgument, 22
        optional :io_register_cancel_result, IORegisterCancelResult, 23
      end
    end
    
    struct DisplayAttributeList
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :display_id, :bytes, 1
        optional :physical_base_row_number, :int32, 2
        optional :physical_base_column_number, :int32, 3
        optional :offset, :int32, 4
      end
    end
    
    struct StartDataPathArgument
      include Protobuf::Message
      enum DataPathDirection
        ComputeFunctionToObject = 0
        ObjectToComputeFunction = 1
        Bidirectional = 2
      end
      
      contract_of "proto2" do
        optional :io_register_req_id, :uint32, 2
        optional :object, :string, 3
        optional :data_path_direction, StartDataPathArgument::DataPathDirection, 4
        optional :data_path_type, DataPathType, 5
        optional :display_id, :bytes, 6
        optional :number_of_characters_to_collect, :int32, 10
        optional :termination_character, :string, 11
        optional :timeout, :int32, 12
        optional :application_id, :string, 102
      end
    end
    
    struct StartDataPathResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :number_of_characters_to_collect, :int32, 10
        optional :termination_character, :string, 11
        optional :timeout, :int32, 12
        optional :key_number, :bytes, 105
      end
    end
    
    struct StopDataPathArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct StopDataPathResult
      include Protobuf::Message
      
    end
    
    struct SendDataArgument
      include Protobuf::Message
      enum DisplayMode
        TemporaryMode = 0
        FixedMode = 1
      end
      enum AudibleIndication
        SilentIndication = 0
        BeepIndication = 1
      end
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :io_register_req_id, :uint32, 2
        optional :object, :string, 3
        optional :data_path_type, DataPathType, 5
        optional :display_attributes, DisplayAttributeList, 7
        optional :io_data, :bytes, 8
        optional :io_cause, EventMessages::EventCause, 9
        optional :display_mode, SendDataArgument::DisplayMode, 100
        optional :audible_indication, SendDataArgument::AudibleIndication, 101
        optional :application_id, :string, 102
      end
    end
    
    struct SendDataResult
      include Protobuf::Message
      
    end
    
    struct SendMulticastDataArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :io_cross_ref_id, :uint32, 1
        optional :display_attributes, DisplayAttributeList, 7
        optional :io_data, :bytes, 8
      end
    end
    
    struct SendMulticastDataResult
      include Protobuf::Message
      
    end
    
    struct SendBroadcastDataArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        required :base_device, :string, 99
        optional :data_path_type, DataPathType, 5
        optional :display_attributes, DisplayAttributeList, 7
        optional :io_data, :bytes, 8
      end
    end
    
    struct SendBroadcastDataResult
      include Protobuf::Message
      
    end
    
    struct SuspendDataPathArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct SuspendDataPathResult
      include Protobuf::Message
      
    end
    
    struct DataPathSuspendedArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct DataPathSuspendedResult
      include Protobuf::Message
      
    end
    
    struct ResumeDataPathArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct ResumeDataPathResult
      include Protobuf::Message
      
    end
    
    struct DataPathResumedArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_cross_ref_id, :uint32, 1
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct DataPathResumedResult
      include Protobuf::Message
      
    end
    
    struct IORegisterArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        required :base_device, :string, 99
        optional :io_device, :bytes, 3
        optional :application_id, :string, 102
      end
    end
    
    struct IORegisterResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct IORegisterCancelArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :io_register_req_id, :uint32, 2
      end
    end
    
    struct IORegisterCancelResult
      include Protobuf::Message
      
    end
    end
  end
