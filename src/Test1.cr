require "./Test1/*"
require "protobuf"
require "./tester.pb"

# TODO: Write documentation for `Test1`
module Test1
  # TODO: Put your code here
  struct MyMessage
    include Protobuf::Message
  end
end
