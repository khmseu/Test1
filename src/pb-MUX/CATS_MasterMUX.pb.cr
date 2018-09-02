## Generated from CATS_MasterMUX.proto
require "protobuf"

require "./CATS_Helper.pb.cr"
require "./CATS_Connect.pb.cr"
require "./CATS_Licence.pb.cr"
require "./CATS_Login.pb.cr"
require "./CATS_DBUpdate.pb.cr"
require "./CATS_Monitor.pb.cr"

module MUX
  
  struct C3T
    include Protobuf::Message
    
    contract_of "proto2" do
      required :request_header, RequestHeader, 1
      optional :login, Login, 4
      optional :connect, Connect, 5
      optional :licence, Licence, 6
      optional :app_start, ApplicationStart, 8
      optional :keep_alive, KeepAlive, 9
      optional :db_update, DatenBankUPDATE, 10
      optional :setprops, Monitor::SetProperties, 11
      optional :proptable, Monitor::PropertyTable, 12
    end
  end
  end
