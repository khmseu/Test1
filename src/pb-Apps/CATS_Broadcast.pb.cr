## Generated from CATS_Broadcast.proto
require "protobuf"

require "./CATS_CallAction.pb.cr"
require "./CATS_Journal.pb.cr"
require "./CATS_ExtStatus.pb.cr"
require "./CATS_LiveMessage.pb.cr"

module Apps
  
  struct Broadcast
    include Protobuf::Message
    
    contract_of "proto2" do
      required :message_type, :int32, 1
      repeated :conn_list, :int32, 2
      optional :call_action, CallAction, 100
      optional :call_journal, CallJournal, 101
      optional :ext_status, ExtStatus, 103
      optional :live_message, LiveMessage, 105
    end
  end
  end
