## Generated from CATS_Master.proto
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
require "./CATS_DBUpdate.pb.cr"
require "./CATS_Broadcast.pb.cr"
require "./CATS_Call_Associated_Feature_Services.pb.cr"
require "./CATS_Call_Control_Services.pb.cr"
require "./CATS_Capability_Exchange_Services.pb.cr"
require "./CATS_Events.pb.cr"
require "./CATS_Logical_Device_Feature_Services.pb.cr"
require "./CATS_Routeing_Services.pb.cr"
require "./CATS_Snapshot_Services.pb.cr"
require "./CATS_CATSServerMessage.pb.cr"
require "./CATS_ExtServices.pb.cr"
require "./CATS_SQL.pb.cr"
require "./CATS_IO_Services.pb.cr"
require "./CATS_Support.pb.cr"
require "./CATS_Monitor.pb.cr"

module Apps
  
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
      optional :db_update, DatenBankUPDATE, 10
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
      optional :broadcast, Broadcast, 200
      optional :ext_services, ExtServices, 201
      optional :remote_sql, RemoteSQL::SQLop, 202
      optional :call_control, CallControlMessages::CallControl, 300
      optional :cap_exchange, CapExchangeMessages::CapExchange, 301
      optional :want_events, EventMessages::WantEvents, 302
      optional :event, EventMessages::Event, 303
      optional :log_dev_feature, LogDevFeatureMessages::LogDevFeature, 304
      optional :routeing, RouteingMessages::Routeing, 305
      optional :call_associated, CallAssociatedMessages::CallAssociated, 306
      optional :snapshot, SnapshotMessages::Snapshot, 307
      optional :i_o_services, IOServicesMessages::IOServices, 308
      optional :pbx_manager_event, EventMessages::PBXManagerEvent, 400
      optional :csta, Support::CSTAIID, 401
      optional :tag, :string, 402
      optional :cats_message, CATSServerMessage, 999
    end
  end
  end
