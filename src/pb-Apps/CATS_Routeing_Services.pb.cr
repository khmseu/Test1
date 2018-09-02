## Generated from CATS_Routeing_Services.proto for RouteingMessages
require "protobuf"

require "./CATS_Support.pb.cr"

module Apps
  module RouteingMessages
    enum SelectValue
      SvNormal = 0
      SvLeastCost = 1
      SvEmergency = 2
      SvACD = 3
      SvUserDefined = 4
    end
    
    struct Routeing
      include Protobuf::Message
      
      contract_of "proto2" do
        required :r_command, :int32, 1
        optional :route_register_argument, RouteRegisterArgument, 2
        optional :route_register_result, RouteRegisterResult, 3
        optional :route_register_abort_argument, RouteRegisterAbortArgument, 4
        optional :route_register_cancel_argument, RouteRegisterCancelArgument, 5
        optional :route_register_cancel_result, RouteRegisterCancelResult, 6
        optional :re_route_request_argument, ReRouteRequestArgument, 7
        optional :route_end_request_argument, RouteEndRequestArgument, 8
        optional :route_reject_argument, RouteRejectArgument, 9
        optional :route_request_argument, RouteRequestArgument, 10
        optional :route_select_request_argument, RouteSelectRequestArgument, 11
        optional :route_used_request_argument, RouteUsedRequestArgument, 12
      end
    end
    
    struct RouteRegisterArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :routeing_device, :string, 1
      end
    end
    
    struct RouteRegisterResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :route_register_req_id, :uint32, 1
      end
    end
    
    struct RouteRegisterAbortArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :route_register_req_id, :uint32, 1
      end
    end
    
    struct RouteRegisterCancelArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :route_register_req_id, :uint32, 1
      end
    end
    
    struct RouteRegisterCancelResult
      include Protobuf::Message
      
    end
    
    struct ReRouteRequestArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :cross_ref_identifier, :uint32, 1
        optional :route_register_req_id, :uint32, 2
      end
    end
    
    struct RouteEndRequestArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :cross_ref_identifier, :uint32, 1
        optional :route_register_req_id, :uint32, 2
      end
    end
    
    struct RouteRejectArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :cross_ref_identifier, :uint32, 1
        optional :route_register_req_id, :uint32, 2
      end
    end
    
    struct RouteRequestArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :cross_ref_identifier, :uint32, 1
        optional :route_register_req_id, :uint32, 2
        optional :current_route, Support::Device, 3
        optional :calling_device, Support::Device, 4
        optional :routeing_device, Support::Device, 5
        optional :routed_call, :int32, 6
        optional :route_sel_algorithm, SelectValue, 7
      end
    end
    
    struct RouteSelectRequestArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :cross_ref_identifier, :uint32, 1
        optional :route_register_req_id, :uint32, 2
        optional :route_selected, :string, 3
        optional :route_used_req, :bool, 4
      end
    end
    
    struct RouteUsedRequestArgument
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :cross_ref_identifier, :uint32, 1
        optional :route_register_req_id, :uint32, 2
        optional :route_used, Support::Device, 3
        optional :calling_device, Support::Device, 4
      end
    end
    end
  end
