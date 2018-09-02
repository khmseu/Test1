require "./Test1/*"
require "protobuf"
require "./pb-MUX/CATS_MasterMUX.pb"

# TODO: Write documentation for `Test1`
module Test1
  # TODO: Put your code here
  struct MyMessage
    include Protobuf::Message
  end
end


msg = C3T.new
