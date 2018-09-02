## Generated from CATS_Helper.proto
require "protobuf"

module Apps
  enum ErrorKind
    EkOK = 0
    EkBrokenConn = 1
    EkNoSuchConn = 2
    EkBrokenCTILink = 3
    EkBrokenDBLink = 4
    EkNoSuchApp = 5
    EkNoSuchRecord = 6
    EkNoSuchSpecial = 7
    EkTimeOut = 8
    EkAppOffline = 9
    EkPBXTimeOut = 10
    EkPBXError = 11
    EkAppPBXError = 12
    EkNoSuchClient = 13
    EkNoSuchMachine = 14
    EkNoSuchDialExt = 15
    EkNoSuchUser = 16
    EkNoSuchMailbox = 17
    EkClientOutdated = 18
    EkInformation = 19
    EkLCResult0 = 100
    EkBadParams = 101
    EkBadAnswer = 102
    EkChatMSNoSend = 103
    EkLocalTimer = 400
  end
  
  struct RequestHeader
    include Protobuf::Message
    
    contract_of "proto2" do
      required :message_type, :int32, 1
      required :conn_id, :int32, 2
      optional :request_id, :int32, 3
      optional :continue_req, :bool, 4
    end
  end
  
  struct ErrorId
    include Protobuf::Message
    
    contract_of "proto2" do
      required :errnum, ErrorKind, 1
      required :description, :string, 2
      repeated :attributes, Attribute, 3
    end
  end
  
  struct KeepAlive
    include Protobuf::Message
    enum KeepAliveType
      AreYouThere = 1
      IAmHere = 2
    end
    
    contract_of "proto2" do
      required :request, KeepAlive::KeepAliveType, 1
      optional :name, :string, 2
    end
  end
  
  struct Attribute
    include Protobuf::Message
    
    contract_of "proto2" do
      required :a_name, :string, 1
      required :a_value, :string, 2
    end
  end
  
  struct Version
    include Protobuf::Message
    
    contract_of "proto2" do
      required :v_major, :int32, 1
      required :v_minor, :int32, 2
      optional :v_build, :int32, 3
      optional :v_revision, :int32, 4
      optional :build_time, :string, 5
      required :name, :string, 6
      optional :more_info, :string, 7
      required :current_time, :string, 8
      optional :start_time, :string, 9
    end
  end
  
  struct CATSDataSet
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :adr_id, :string, 1
      optional :name, :string, 2
      optional :name2, :string, 3
      optional :tel, :string, 4
      optional :contact_person, :string, 5
      optional :street, :string, 6
      optional :city_code, :string, 7
      optional :city, :string, 8
      optional :country, :string, 9
      optional :countrycode, :string, 10
      optional :email, :string, 11
      optional :fax_nr, :string, 12
      optional :additional, :string, 13
      optional :application, :string, 30
      optional :mandator, :string, 31
      optional :file, :string, 32
      optional :adr, :string, 33
      optional :user1, :string, 40
      optional :user2, :string, 41
      optional :res1, :string, 42
      optional :res2, :string, 43
      optional :additional1, :string, 44
      optional :additional2, :string, 45
      optional :additional3, :string, 46
      optional :additional4, :string, 47
      optional :name_generated, :string, 50
      optional :tel_ext, :string, 51
      optional :tel_nice, :string, 52
      optional :fax_nr_nice, :string, 53
      optional :tel_national, :string, 54
      optional :fax_nr_national, :string, 55
    end
  end
  
  struct CATSCallTechInfo
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :line_number, :string, 1
      optional :prefix, :string, 2
      optional :prefix_desc, :string, 3
      optional :carrier, :string, 4
      optional :carrier_desc, :string, 5
      optional :project_number, :string, 6
      optional :project_desc, :string, 7
      optional :dtmf_after_dial, :string, 8
      optional :pbx_dir, :string, 9
      optional :pbx_dir_desc, :string, 10
      optional :project_cost1, :string, 11
      optional :project_cost1_desc, :string, 12
      optional :project_cost2, :string, 13
      optional :project_cost2_desc, :string, 14
      optional :project_cost3, :string, 15
      optional :project_cost3_desc, :string, 16
      optional :project_cost4, :string, 17
      optional :project_cost4_desc, :string, 18
      optional :project_cost5, :string, 19
      optional :project_cost5_desc, :string, 20
    end
  end
  
  struct SupportedSpecials
    include Protobuf::Message
    enum SpecialsEnum
      None = 0
      Answer = 1
      Alternate = 2
      CallBack = 3
      ClearConnection = 7
      Conference = 8
      Consultation = 9
      Dial = 10
      DirectedPickup = 11
      Deflect = 12
      Hold = 14
      Park = 17
      Reconnect = 18
      Retrieve = 19
      Transfer = 20
      SingleStepTransfer = 21
      SingleStepConference = 22
      DisconnectFromConference = 23
    end
    
    contract_of "proto2" do
      repeated :specials, SupportedSpecials::SpecialsEnum, 1
    end
  end
  
  struct Settings
    include Protobuf::Message
    
    contract_of "proto2" do
      required :message_type, :int32, 1
      optional :get_settings, GetVars, 2
      optional :settings, Vars, 3
      optional :set_settings, Vars, 4
    end
  end
  
  struct GetVars
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :names, :string, 1
    end
  end
  
  struct Vars
    include Protobuf::Message
    
    struct Var
      include Protobuf::Message
      
      contract_of "proto2" do
        required :v_name, :string, 1
        required :v_value, :bytes, 2
      end
    end
    
    contract_of "proto2" do
      repeated :vars, Vars::Var, 1
    end
  end
  
  struct RequestMask
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :start_time, :string, 3
      optional :end_time, :string, 4
      optional :count, :int32, 5
    end
  end
  
  struct DeviceDescription
    include Protobuf::Message
    enum DeviceType
      PBXext = 0
      Mobile = 1
      Phone = 2
    end
    
    contract_of "proto2" do
      required :device_id, :string, 1
      optional :device_id_full, :string, 5
      required :device_type, DeviceDescription::DeviceType, 2
      optional :device_name, :string, 3
      optional :device_comment, :string, 4
    end
  end
  
  struct Forwarding
    include Protobuf::Message
    enum ForwardingArt
      Immediate = 0
      Busy = 1
      NoAnswer = 2
      DoNotDisturb = 3
    end
    enum ForwardingCase
      AllCaller = 0
      InternalCaller = 1
      ExternalCaller = 2
    end
    
    contract_of "proto2" do
      required :state, :bool, 1
      optional :dest_deviceid, :string, 2
      optional :art, Forwarding::ForwardingArt, 3
      optional :case, Forwarding::ForwardingCase, 4
      optional :ring_count, :int32, 5
      optional :dest_device_name, :string, 6
      optional :dest_datatset, CATSDataSet, 7
    end
  end
  
  struct DataScript
    include Protobuf::Message
    
    contract_of "proto2" do
      required :script, :string, 1
    end
  end
  end
