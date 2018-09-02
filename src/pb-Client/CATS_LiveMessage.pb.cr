## Generated from CATS_LiveMessage.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Client
  enum EnStatus
    Offline = 1
    Online = 2
    Busy = 3
    Away = 4
    ExAway = 5
  end
  enum MSGDirection
    MsgIN = 1
    MsgOUT = 2
  end
  
  struct LiveMessage
    include Protobuf::Message
    
    contract_of "proto2" do
      required :message_type, :int32, 1
      optional :message_from_to, MessageFromTo, 2
      optional :user_status_change, UserStatus, 3
      optional :set_my_status, SetMyStatus, 4
      optional :add_user, AddUser, 5
      repeated :user_status_init, UserStatus, 6
      optional :get_chat_history, GetChatHistory, 7
      optional :chat_history, ChatHistory, 8
      optional :get_user_presence, GetUserPresence, 9
    end
  end
  
  struct MessageFromTo
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :sender, :string, 1
      optional :receiver, :string, 2
      optional :message_text, :string, 4
      optional :timestamp, :string, 5
    end
  end
  
  struct SetMyStatus
    include Protobuf::Message
    
    contract_of "proto2" do
      required :set_status, EnStatus, 2
      optional :my_full_name, :string, 3
      optional :status_text, :string, 4
    end
  end
  
  struct AddUser
    include Protobuf::Message
    
    contract_of "proto2" do
      required :user_name, :string, 1
    end
  end
  
  struct UserStatus
    include Protobuf::Message
    
    contract_of "proto2" do
      required :user_name, :string, 1
      required :user_status, EnStatus, 2
      optional :extension, :string, 3
      optional :extension_full, :string, 5
      optional :user_full_name, :string, 4
      optional :status_text, :string, 6
    end
  end
  
  struct GetChatHistory
    include Protobuf::Message
    
    contract_of "proto2" do
      required :chat_partner, :string, 1
      optional :request_mask, RequestMask, 2
    end
  end
  
  struct HistoryMessage
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :sender, :string, 1
      optional :direction, MSGDirection, 2
      optional :timestamp, :string, 3
      optional :message_text, :string, 4
    end
  end
  
  struct ChatHistory
    include Protobuf::Message
    
    contract_of "proto2" do
      required :chat_partner, :string, 1
      repeated :messages, HistoryMessage, 2
    end
  end
  
  struct GetUserPresence
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :presence, :bool, 1
    end
  end
  end
