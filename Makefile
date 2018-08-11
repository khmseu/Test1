#    Copyright 2018 kai
# 
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
# 
#        http://www.apache.org/licenses/LICENSE-2.0
# 
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

PBGEN = ~/bin/protoc-gen-crystal
PBGEN_SRC = lib/protobuf/bin/protoc-gen-crystal.cr

all: Test1

Test1: src/Test1.cr src/tester.pb.cr
	crystal build src/Test1.cr

LIBS:
	shards install

src/tester.pb.cr: LIBS src/tester.proto
	protoc -I src --crystal_out src src/tester.proto

src/pb/%.pb.cr: src/proto/%.proto $(PBGEN)
	protoc -I $(<D) --crystal_out $(@D) $<

$(PBGEN): $(PBGEN_SRC)
	crystal build $< -o $@

$(PBGEN_SRC):
	shards install
