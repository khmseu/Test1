## Generated from CATS_Support.proto for Support
require "protobuf"

require "./descriptor.pb.cr"

module Apps
  module Support
    enum DeviceCategory
      DcAcd = 0
      DcGroup = 1
      DcNetworkInterface = 2
      DcPark = 3
      DcRouteingDevice = 4
      DcStation = 5
      DcVoiceUnit = 6
      DcInteractiveVoiceGeneric = 8
      DcInteractiveVoiceListener = 9
      DcInteractiveVoiceDTMF = 10
      DcInteractiveVoicePrompt = 11
      DcInteractiveVoicePromptQueue = 12
      DcInteractiveVoiceMessage = 13
      DcConference = 14
      DcOther = 7
    end
    enum GroupDeviceAttributes
      GdaAcd = 0
      GdaHunt = 1
      GdaPick = 2
      GdaUser = 4
      GdaAgent = 5
      GdaOther = 3
    end
    enum ForwardingWhen
      ForwardImmediate = 0
      ForwardBusy = 1
      ForwardNoAns = 2
      ForwardDND = 3
    end
    enum ForwardingWhat
      ForwardAll = 0
      ForwardInt = 1
      ForwardExt = 2
    end
    enum ConnectionState
      CsNull = 1
      CsInitiated = 2
      CsAlerting = 3
      CsConnected = 4
      CsHold = 5
      CsQueued = 6
      CsFail = 7
    end
    
    struct Device
      include Protobuf::Message
      
      contract_of "proto2" do
        required :i, :string, 1
        required :u, :string, 2
        required :e, :bool, 3
        optional :c, DeviceCategory, 4
        repeated :g, GroupDeviceAttributes, 5
      end
    end
    
    struct ForwardStateIn
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :forwarding_type, ForwardingType, 1
        required :activate_forward, :bool, 2
        optional :forward_to, :string, 3
        optional :ring_count, :int32, 5
      end
    end
    
    struct ForwardStateOut
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :forwarding_type, ForwardingType, 1
        required :activate_forward, :bool, 2
        optional :forward_to, Device, 3
        optional :forward_default, ForwardDefault, 4
        optional :ring_count, :int32, 5
      end
    end
    
    struct ForwardingType
      include Protobuf::Message
      
      contract_of "proto2" do
        required :forwarding_when, ForwardingWhen, 1
        required :forwarding_what, ForwardingWhat, 2
      end
    end
    
    struct ForwardDefault
      include Protobuf::Message
      
      contract_of "proto2" do
        required :forwarding_type, :bool, 1
        required :forward_dn, :bool, 2
      end
    end
    
    struct CSTAIID
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :pbxname, :string, 1
        optional :ref, :int64, 2
      end
    end
    end
  end
