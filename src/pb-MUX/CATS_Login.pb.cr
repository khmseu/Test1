## Generated from CATS_Login.proto
require "protobuf"

require "./CATS_Helper.pb.cr"

module MUX
  
  struct Login
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :algo, Algo, 1
      optional :start, Start, 2
      optional :challenge, Challenge, 3
      optional :response, Response, 4
      optional :outcome, Outcome, 5
    end
  end
  
  struct Algo
    include Protobuf::Message
    
    contract_of "proto2" do
      required :version, Version, 1
      required :base_conn_id, :int32, 2
      repeated :algo, :string, 3
    end
  end
  
  struct Start
    include Protobuf::Message
    
    contract_of "proto2" do
      required :version, Version, 1
      required :algo, :string, 2
      optional :request, :bytes, 3
      required :agent_name, :string, 4
      required :pc_name, :string, 5
    end
  end
  
  struct Challenge
    include Protobuf::Message
    
    contract_of "proto2" do
      required :challenge, :bytes, 1
    end
  end
  
  struct Response
    include Protobuf::Message
    
    contract_of "proto2" do
      required :response, :bytes, 1
    end
  end
  
  struct Outcome
    include Protobuf::Message
    enum Outcomes
      OK = 0
      AskAgain = 1
      Wait = 2
      Admin = 3
      WrongUserKey = 4
    end
    
    contract_of "proto2" do
      required :outcome, Outcome::Outcomes, 1
      optional :info, :bytes, 2
    end
  end
  
  struct StartTLS
    include Protobuf::Message
    
  end
  
  struct ApplicationStart
    include Protobuf::Message
    
    contract_of "proto2" do
      required :message_type, :int32, 1
      optional :get_system_parameters, :bool, 2
      optional :system_parameters, SystemParameters, 3
      optional :app_ready, :bool, 4
    end
  end
  
  struct SystemParameters
    include Protobuf::Message
    
    contract_of "proto2" do
      optional :db_settings, DBSettings, 1
      optional :public_number_unused, :string, 2
    end
  end
  
  struct DBSettings
    include Protobuf::Message
    
    contract_of "proto2" do
      required :db_host, :string, 1
      required :db_port, :string, 2
      required :db_name, :string, 3
      required :db_user, :string, 4
      required :db_pass, :string, 5
    end
  end
  end
