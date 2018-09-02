## Generated from CATS_CallBack.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Client
  enum CallBackStatus
    NewCallback = 0
    InProgressCallback = 1
    DoneCallback = 2
    ManualCallback = 3
    NoCallback = 4
    Blocked = 5
  end
  
  struct CallBack
    include Protobuf::Message
    
    contract_of "proto2" do
      required :message_type, :int32, 1
      repeated :callbacks, CallBackInfo, 2
      optional :get_callbacks, GetCallBacks, 3
      repeated :update_callback, UpdateCallBack, 4
      optional :get_agent_list, GetAgentList, 5
      repeated :agent_list, AgentInfo, 6
      optional :create_callback, CreateCallBack, 7
      optional :start_callback, StartCallBack, 8
      optional :success_question, ShowCallBackSuccessQuestion, 9
      optional :create_script, DataScript, 10
    end
  end
  
  struct CallBackInfo
    include Protobuf::Message
    enum CallBackDirection
      ForMeByMe = 0
      ForMeByPartner = 1
      ForPartnerByMe = 2
      ForPartnerByPartner = 3
      ForMeByReplay = 4
    end
    
    contract_of "proto2" do
      required :callback_id, :int32, 1
      optional :status, CallBackStatus, 2
      optional :caller_number, :string, 3
      optional :callback_number, :string, 4
      optional :caller_number_nice, :string, 31
      optional :callback_number_nice, :string, 41
      optional :caller_number_national, :string, 32
      optional :callback_number_national, :string, 42
      optional :date_time_entered, :string, 5
      optional :date_time_planned, :string, 6
      optional :date_time_finished, :string, 7
      optional :message_duration, :int32, 8
      optional :memo, :string, 9
      optional :data_set, CATSDataSet, 10
      optional :callback_creator, :string, 11
      optional :callback_receiver, :string, 12
      optional :direction, CallBackInfo::CallBackDirection, 13
      optional :is_newly_created, :bool, 14
      optional :voicemail, :bool, 15
    end
  end
  
  struct GetCallBacks
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :status, CallBackStatus, 1
      optional :request_mask, RequestMask, 2
    end
  end
  
  struct UpdateCallBack
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callback_id, :int32, 1
      optional :status, CallBackStatus, 2
      optional :archiv, :bool, 3
      optional :memo, :string, 4
      optional :caller_number, :string, 5
      optional :callback_number, :string, 6
      optional :date_time_planned, :string, 7
    end
  end
  
  struct CreateCallBack
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :agent, :string, 1
      optional :memo, :string, 2
      optional :caller_number, :string, 3
      optional :callback_number, :string, 4
      optional :date_time_planned, :string, 5
    end
  end
  
  struct GetAgentList
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :flag, :bool, 1
    end
  end
  
  struct AgentInfo
    include Protobuf::Message
    
    contract_of "proto2" do
      required :agent, :string, 1
      optional :agent_full_name, :string, 2
    end
  end
  
  struct StartCallBack
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callback_id, :int32, 1
      optional :tel_number, :string, 2
    end
  end
  
  struct ShowCallBackSuccessQuestion
    include Protobuf::Message
    
    contract_of "proto2" do
      required :callback_id, :int32, 1
    end
  end
  end
