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

#PBGEN = ~/bin/protoc-gen-crystal
#PBGEN_SRC = lib/protobuf/bin/protoc-gen-crystal.cr

PBGEN_SRC_DIR = ../protobuf.cr
PBGEN = $(PBGEN_SRC_DIR)/protoc-gen-crystal
PBGEN_SRC = $(PBGEN_SRC_DIR)/bin/protoc-gen-crystal.cr
PBGEN_MORE_SRC = $(PBGEN_SRC_DIR)/src/protobuf/*.cr

all: Test1

Test1: src/Test1.cr C3T-MUX
	crystal build --error-trace src/Test1.cr

LIBS:
	shards install

define pbrule
C3T-$(1): src/pb-$(1)/CATS_Master$(2).pb.cr
	touch $$@
src/pb-$(1)/%.pb.cr: src/proto/%.proto $$(PBGEN) src/pb-$(1) $$(PBGEN)
	PATH="$$(dir $$(PBGEN)):$$$$PATH" PROTOBUF_NS=$(1) protoc -I $$(<D) --crystal_out $$(@D) $$<

src/pb-$(1)/%.pb.bin: src/proto/%.proto $$(PBGEN) src/pb-$(1) $$(PBGEN)
	PATH="$$(dir $$(PBGEN)):$$$$PATH" PROTOBUF_NS=$(1) protoc -I $$(<D) --descriptor_set_out=$$@ --dependency_out=$$(<F).deps $$<
src/pb-$(1):
	mkdir $$@
endef
$(eval $(call pbrule,MUX,MUX))
$(eval $(call pbrule,Apps,))
$(eval $(call pbrule,Client,Client))

$(PBGEN): $(PBGEN_SRC) $(PBGEN_MORE_SRC)
	crystal build --error-trace $< -o $@

$(PBGEN_SRC):
	shards install

