## Generated from CATS_DBUpdate.proto
require "protobuf"

module Apps
  
  struct DatenBankUPDATE
    include Protobuf::Message
    
    contract_of "proto2" do
      repeated :daten_line, DatenLine, 1
    end
  end
  
  struct DatenLine
    include Protobuf::Message
    enum DBEvent
      InsertDB = 0
      UpdateDB = 1
      DeleteDB = 2
    end
    
    contract_of "proto2" do
      required :db_event, DatenLine::DBEvent, 1
      required :table_name, :string, 2
      required :daten_row_id, :string, 3
    end
  end
  end
