## Generated from CATS_ExtStatus.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Client
  
  struct ExtStatus
    include Protobuf::Message
    
    contract_of "proto2" do
      required :action_command, :int32, 1
      optional :device_state_change, DeviceGroupDescription, 2
      repeated :init_groups, DeviceGroupDescription, 3
      optional :my_device, DeviceDescription, 4
      optional :init_group, InitGroup, 5
      optional :current_group, CurrentGroup, 6
      optional :search_device, SearchDevice, 7
      optional :parking_queue, ParkingQueue, 8
      optional :waiting_queue, ParkingQueue, 9
      optional :init_user_interface, InitUserInterface, 10
      optional :request_image, Image, 11
    end
  end
  
  struct DeviceState
    include Protobuf::Message
    enum DeviceStateEnum
      Ring = 0
      Dial = 1
      Connected = 2
      Busy = 4
      Free = 5
      Unknown = 6
    end
    enum CallDirection
      DirInt = 0
      DirExtIn = 1
      DirExtOut = 2
      DirUnknown = 3
    end
    
    contract_of "proto2" do
      required :call_id, :int64, 1
      required :state, DeviceState::DeviceStateEnum, 2
      required :device_id, :string, 3
      optional :device_name, :string, 4
      optional :caller_number, :string, 5
      optional :caller_name, :string, 6
      optional :data_set, CATSDataSet, 7
      optional :supported_specials, SupportedSpecials, 8
      optional :forwarding, Forwarding, 9
      optional :agent_full_name, :string, 10
      repeated :queue, PassiveCallInfo, 11
      optional :connect_duration, :int32, 12
      repeated :call_partners, CallPartnerInfo, 13
      optional :call_direction, DeviceState::CallDirection, 14
      optional :device_id_full, :string, 15
      repeated :images, ImageMapping, 16
      optional :vnst_id, :string, 17
      optional :vnst_id_full, :string, 18
      optional :vnst_name, :string, 19
    end
  end
  
  struct CallPartnerInfo
    include Protobuf::Message
    
    contract_of "proto2" do
      required :partner_number, :string, 1
      optional :partner_name, :string, 2
      optional :partner_data_set, CATSDataSet, 3
      optional :is_extern, :bool, 4
    end
  end
  
  struct PassiveCallInfo
    include Protobuf::Message
    enum RelationToCall
      Knocked = 0
      Holded = 1
    end
    
    contract_of "proto2" do
      required :call_id, :int64, 1
      required :relation, PassiveCallInfo::RelationToCall, 2
      optional :caller_number, :string, 3
      optional :caller_name, :string, 4
      optional :data_set, CATSDataSet, 5
      optional :supported_specials, SupportedSpecials, 6
      optional :parked_time, :int32, 7
    end
  end
  
  struct ParkingQueue
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :queued_calls, PassiveCallInfo, 1
    end
  end
  
  struct DeviceGroupDescription
    include Protobuf::Message
    enum GroupType
      Internal = 1
      External = 2
    end
    
    contract_of "proto2" do
      optional :group, :string, 1
      optional :custom_group, :bool, 2
      repeated :device_state, DeviceState, 3
      optional :hgroup_type, DeviceGroupDescription::GroupType, 4
    end
  end
  
  struct InitGroup
    include Protobuf::Message
    enum GroupAction
      AddGroup = 1
      DelGroup = 2
      UpdateGroup = 3
    end
    
    contract_of "proto2" do
      required :action, InitGroup::GroupAction, 1
      required :group_description, DeviceGroupDescription, 2
    end
  end
  
  struct CurrentGroup
    include Protobuf::Message
    
    contract_of "proto2" do
      required :group, :string, 1
    end
  end
  
  struct SearchDevice
    include Protobuf::Message
    
    contract_of "proto2" do
      required :search_term, :string, 1
    end
  end
  
  struct InitUserInterface
    include Protobuf::Message
    
    contract_of "proto2" do
      required :operator_enabled, :bool, 1
      required :operator_multiple_docks_enabled, :bool, 2
    end
  end
  
  struct ImageMapping
    include Protobuf::Message
    
    contract_of "proto2" do
      required :mapping, Mapping, 1
      required :image, Image, 2
    end
  end
  
  struct Image
    include Protobuf::Message
    
    contract_of "proto2" do
      required :id, :int32, 1
      optional :image, :bytes, 2
      optional :date_time_created, :string, 3
    end
  end
  
  struct Mapping
    include Protobuf::Message
    
    contract_of "proto2" do
      required :target, :string, 1
      optional :target_type, :string, 2
      optional :date_time_created, :string, 3
    end
  end
  end
