## Generated from CATS_CallAction.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module Client
  
  struct CallAction
    include Protobuf::Message
    
    contract_of "proto2" do
      required :action_command, :int32, 1
      optional :call_id, :int64, 2
      optional :show_popup, ShowPopupWindow, 3
      optional :show_firstscreen, ShowFirstScreen, 4
      optional :hide_popup, HidePopupWindow, 5
      optional :popup_getsettings, PopupSettings, 6
      optional :popup_setsettings, PopupSettings, 7
      optional :get_first_screen, GetDataToWindow, 8
      optional :get_popup, GetDataToWindow, 9
      optional :connect_to_first_screen, ConnectToLogic, 10
      optional :connect_to_popup, ConnectToLogic, 11
      optional :connect_to_share_screen, ConnectToLogic, 12
      optional :get_share_screen, GetShareScreen, 13
      optional :show_share_screen, ShowFirstScreen, 14
      optional :create_script, DataScript, 15
    end
  end
  
  struct ShowPopupWindow
    include Protobuf::Message
    enum PopupReason
      Alerting = 1
      PickedUp = 2
      Finished = 3
    end
    
    contract_of "proto2" do
      optional :timeout, :int32, 1
      optional :called_ext, :string, 2
      optional :called_ext_info, :string, 11
      optional :caller_number, :string, 3
      optional :dataset, CATSDataSet, 4
      optional :supported_specials, SupportedSpecials, 5
      optional :agent_name, :string, 6
      optional :called_vext, :string, 7
      optional :called_vext_info, :string, 9
      optional :url, :string, 8
      optional :popup_reason, ShowPopupWindow::PopupReason, 10
    end
  end
  
  struct HidePopupWindow
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :timeout, :int32, 1
    end
  end
  
  struct ConnectToLogic
    include Protobuf::Message
    enum LogicConnectAction
      LogicConnect = 1
      LogicDisconnect = 2
    end
    
    contract_of "proto2" do
      required :connect_action, ConnectToLogic::LogicConnectAction, 1
    end
  end
  
  struct ShowFirstScreen
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :timeout, :int32, 1
      optional :url, :string, 2
      optional :supported_specials, SupportedSpecials, 3
      optional :caller_number, :string, 4
      optional :called_ext, :string, 5
      optional :called_ext_info, :string, 8
      optional :called_vext, :string, 6
      optional :called_vext_info, :string, 7
    end
  end
  
  struct GetDataToWindow
    include Protobuf::Message
    
    contract_of "proto2" do
      required :caller_number, :string, 1
      optional :customer_id, :string, 2
      optional :adr_id, :string, 3
    end
  end
  
  struct GetShareScreen
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :caller_number, :string, 1
      optional :customer_id, :string, 5
      optional :date_time_start, :string, 2
      optional :date_time_end, :string, 3
      optional :date_time_entered, :string, 4
      optional :adr_id, :string, 6
    end
  end
  
  struct PopupSettings
    include Protobuf::Message
    
  end
  end
