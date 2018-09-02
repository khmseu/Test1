## Generated from CATS_Specials.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Apps
  
  struct Specials
    include Protobuf::Message
    
    contract_of "proto2" do
      required :special_command, :int32, 1
      optional :dial, Dial, 2
      optional :clear_connection, ClearConnection, 3
      optional :answer, Answer, 4
      optional :supported_specials, SupportedSpecials, 5
      optional :get_supported_specials, GetSupportedSpecials, 6
      optional :special_result, SpecialResult, 7
      optional :directed_pickup, DirectedPickup, 8
      optional :extension_info, ExtensionInfo, 9
      optional :deflect_call, DeflectCall, 10
      optional :single_step_transfer, SingleStepTransfer, 11
      optional :setforwarding, Forwarding, 12
      optional :single_step_conference, SingleStepConference, 13
      optional :hold, Hold, 14
      optional :consultation, Consultation, 15
      optional :retrieve, Retrieve, 16
      optional :transfer, Transfer, 17
      optional :conference, Conference, 18
      optional :alternate, Alternate, 19
      optional :reconnect, Reconnect, 20
      optional :make_callback, MakeCallBack, 21
      optional :park_call, ParkCall, 22
      optional :disconnect_from_conference, DisconnectFromConference, 23
      optional :info_dial_mode, SetDialMode, 24
      optional :set_dial_mode, SetDialMode, 25
      optional :dial_for, DialFor, 26
    end
  end
  
  struct GetSupportedSpecials
    include Protobuf::Message
    
  end
  
  struct SpecialResult
    include Protobuf::Message
    enum SpecialSuccess
      Success = 0
      Error = 1
    end
    enum SpecialErrorCode
      Successed = 0
      Failed = 1
      CurrentlyNotAllowed = 2
      NotAllowed = 3
      NotImplemented = 4
      CATSServerError = 5
      PBXError = 6
      PBXOffline = 7
      BadParams = 8
      DialBreakRedirectQuest = 9
      DialBreakRedirectForbidden = 10
      DialWindowNotRecognized = 11
    end
    
    contract_of "proto2" do
      optional :special_command, :int32, 1
      optional :result, SpecialResult::SpecialSuccess, 2
      optional :result_str, :string, 3
      optional :call_id, :int64, 4
      optional :error_code, SpecialResult::SpecialErrorCode, 5
    end
  end
  
  struct ExtensionInfo
    include Protobuf::Message
    
    contract_of "proto2" do
      required :my_device, DeviceDescription, 1
      optional :dial_for_device_list, DialForDeviceList, 2
      repeated :watchlist, DeviceDescription, 3
    end
  end
  
  struct Dial
    include Protobuf::Message
    
    contract_of "proto2" do
      required :number, :string, 1
      optional :break_forwarding, :bool, 2
      optional :dial_url, :string, 3
    end
  end
  
  struct DialFor
    include Protobuf::Message
    
    contract_of "proto2" do
      required :number, :string, 1
      required :device, :string, 2
    end
  end
  
  struct ClearConnection
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct Answer
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct DirectedPickup
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct DeflectCall
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :deflect_to, :string, 2
    end
  end
  
  struct SingleStepTransfer
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :transfer_to, :string, 2
    end
  end
  
  struct SingleStepConference
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :added_device, :string, 2
    end
  end
  
  struct Hold
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct Retrieve
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct Consultation
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :consulted_device, :string, 2
    end
  end
  
  struct Transfer
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :holded_callid, :int64, 2
    end
  end
  
  struct Conference
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :holded_callid, :int64, 2
    end
  end
  
  struct DisconnectFromConference
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :conferenced_device, :string, 2
    end
  end
  
  struct Alternate
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :holded_callid, :int64, 2
    end
  end
  
  struct Reconnect
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
      required :holded_callid, :int64, 2
    end
  end
  
  struct MakeCallBack
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct ParkCall
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callid, :int64, 1
    end
  end
  
  struct DialForDevice
    include Protobuf::Message
    
    contract_of "proto2" do
      required :device, DeviceDescription, 1
      optional :allow_dial_for_mode, :bool, 2
    end
  end
  
  struct DialForDeviceList
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :devices, DialForDevice, 1
      optional :selected_device, :int32, 2
    end
  end
  
  struct SetDialMode
    include Protobuf::Message
    
    contract_of "proto2" do
      required :use_external_device, :bool, 1
      optional :device_id, :string, 2
    end
  end
  end
