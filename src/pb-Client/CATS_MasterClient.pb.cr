## Generated from CATS_MasterClient.proto
require "protobuf"

require "./CATS_Helper.pb.cr"
require "./CATS_Connect.pb.cr"
require "./CATS_Licence.pb.cr"
require "./CATS_Login.pb.cr"
require "./CATS_CallAction.pb.cr"
require "./CATS_Journal.pb.cr"
require "./CATS_ExtStatus.pb.cr"
require "./CATS_Specials.pb.cr"
require "./CATS_LiveMessage.pb.cr"
require "./CATS_CallBack.pb.cr"
require "./CATS_AddressResolution.pb.cr"
require "./CATS_Monitor.pb.cr"

module Client
  
  class C3T
    include Protobuf::Message
    
    contract_of "proto2" do
      required :request_header, RequestHeader, 1
      optional :error, ErrorId, 2
      repeated :c3_submsgs, C3T, 3
      optional :login, Login, 4
      optional :connect, Connect, 5
      optional :licence, Licence, 6
      optional :app_start, ApplicationStart, 8
      optional :keep_alive, KeepAlive, 9
      optional :setprops, Monitor::SetProperties, 11
      optional :proptable, Monitor::PropertyTable, 12
      optional :call_action, CallAction, 100
      optional :address_resolution, AddressResolution, 102
      optional :call_journal, CallJournal, 101
      optional :ext_status, ExtStatus, 103
      optional :specials, Specials, 104
      optional :live_message, LiveMessage, 105
      optional :callback, CallBack, 106
      optional :settings, Settings, 107
    end
  end
  end
