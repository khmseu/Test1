## Generated from CATS_Journal.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Client
  
  struct CallJournal
    include Protobuf::Message
    
    contract_of "proto2" do
      required :action_command, :int32, 1
      repeated :call_info, CallInfo, 2
      optional :result_search_calls, ResultSearchCalls, 3
      optional :create_script, DataScript, 4
      optional :request_calls, RequestCalls, 6
      optional :request_search_calls, RequestSearchCalls, 7
      optional :add_callnotice, AddCallNotice, 8
      optional :my_device, DeviceDescription, 9
      optional :update_additional_fields, UpdateAdditionalFields, 10
      optional :read_additional_fields, ReadAdditionalFields, 11
    end
  end
  
  struct CallInfo
    include Protobuf::Message
    enum CallState
      StateRing = 0
      StateConnected = 1
      StateFinished = 2
    end
    enum CallDirection
      DirInt = 0
      DirExtIn = 1
      DirExtOut = 2
    end
    enum CallSuccess
      SucUnknown = 0
      SucOk = 1
      SucFail = 2
    end
    
    contract_of "proto2" do
      required :call_id, :int64, 1
      optional :call_state, CallInfo::CallState, 2
      optional :call_direction, CallInfo::CallDirection, 3
      optional :call_success, CallInfo::CallSuccess, 4
      optional :other_number, :string, 5
      optional :other_number_nice, :string, 20
      optional :other_number_national, :string, 22
      optional :other_name, :string, 6
      optional :this_number, :string, 7
      optional :this_number_nice, :string, 21
      optional :this_number_national, :string, 23
      optional :this_name, :string, 8
      optional :v_extension, :string, 9
      optional :v_extension_name, :string, 10
      optional :date_time_start, :string, 11
      optional :call_duration, :string, 13
      optional :date_time_end, :string, 14
      optional :call_tech, CATSCallTechInfo, 12
      optional :additional1, :string, 15
      optional :additional2, :string, 16
      optional :additional3, :string, 17
      optional :additional4, :string, 18
      optional :additional5, :string, 19
      optional :data_set, CATSDataSet, 50
      optional :supported_specials, SupportedSpecials, 51
      optional :call_notice, :string, 52
    end
  end
  
  struct RequestCalls
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :live_calls, :bool, 1
    end
  end
  
  struct RequestSearchCalls
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :request_mask, RequestMask, 1
      optional :caller_name, :string, 2
      optional :caller_number, :string, 3
      optional :ext_number, :string, 4
      optional :agent_name, :string, 5
    end
  end
  
  struct ResultSearchCalls
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :calls, CallInfo, 1
    end
  end
  
  struct AddCallNotice
    include Protobuf::Message
    
    contract_of "proto2" do
      required :call_id, :int64, 1
      optional :call_notice, :string, 2
    end
  end
  
  struct UpdateAdditionalFields
    include Protobuf::Message
    
    contract_of "proto2" do
      required :call_id, :int64, 1
      optional :additional1, :string, 2
      optional :additional2, :string, 3
      optional :additional3, :string, 4
      optional :additional4, :string, 5
      optional :additional5, :string, 6
    end
  end
  
  struct ReadAdditionalFields
    include Protobuf::Message
    
    contract_of "proto2" do
      required :call_id, :int64, 1
      optional :additional1, :string, 2
      optional :additional2, :string, 3
      optional :additional3, :string, 4
      optional :additional4, :string, 5
      optional :additional5, :string, 6
    end
  end
  end
