## Generated from CATS_Events.proto for EventMessages
require "protobuf"

require "./CATS_Support.pb.cr"

module Apps
  module EventMessages
    enum EventKind
      DeviceChange = 1
      CallChange = 2
      FeatureChange = 3
      WServerEvent = 4
    end
    enum EventType
      EtBridged = 1
      EtCallCleared = 2
      EtConferenced = 3
      EtConnectionCleared = 4
      EtDelivered = 5
      EtDigitsDialed = 6
      EtDiverted = 7
      EtEstablished = 8
      EtFailed = 9
      EtHeld = 10
      EtNetworkCapabilitiesChanged = 11
      EtNetworkReached = 12
      EtOffered = 13
      EtOriginated = 14
      EtQueued = 15
      EtRetrieved = 16
      EtServiceInitiated = 17
      EtTransferred = 18
      EtCallInformation = 19
      EtCharging = 20
      EtDigitsGeneratedEvent = 21
      EtTelephonyTonesGeneratedEvent = 22
      EtServiceCompletionFailure = 23
      EtMediaAttached = 24
      EtMediaDetached = 25
      EtButtonInformation = 26
      EtButtonPress = 27
      EtDisplayUpdated = 28
      EtHookswitch = 29
      EtLampMode = 30
      EtMessageWaiting = 31
      EtMicrophoneGain = 32
      EtMicrophoneMute = 33
      EtRingerStatus = 34
      EtSpeakerMute = 35
      EtSpeakerVolume = 36
      EtAgentBusy = 37
      EtAgentLoggedOn = 38
      EtAgentLoggedOff = 39
      EtAgentNotReady = 40
      EtAgentReady = 41
      EtAgentWorkingAfterCall = 42
      EtAutoAnswer = 43
      EtAutoWorkMode = 44
      EtCallBack = 45
      EtCallBackMessage = 46
      EtCallerIDStatus = 47
      EtDoNotDisturb = 48
      EtForwarding = 49
      EtRouteingMode = 50
      EtBackInService = 51
      EtDeviceCapabilityChanged = 52
      EtOutOfService = 53
      EtPlay = 54
      EtRecord = 55
      EtReview = 56
      EtStop = 57
      EtSuspendPlay = 58
      EtSuspendRecord = 59
      EtVoiceAttributesChange = 60
      EtPrivateEvent = 61
      EtSnapshotDevice = 62
      EtSnapshotCall = 63
      EtErrorMessage = 64
      EtPresenceState = 65
      EtPartiallyInService = 66
      EtBookmarkReached = 67
      EtCompleted = 68
      EtDTMFDetected = 69
      EtEmptied = 70
      EtInterruptionDetected = 71
      EtNotRecognized = 72
      EtRecognized = 73
      EtSilenceTimeoutExpired = 74
      EtSpeechDetected = 75
      EtStarted = 76
      EtVoiceErrorOccurred = 77
    end
    enum EventCause
      EcACDBusy = 1
      EcACDForward = 2
      EcACDSaturated = 3
      EcActiveParticipation = 4
      EcAlertTimeExpired = 5
      EcAlternate = 6
      EcAutoWork = 7
      EcBlocked = 8
      EcBusy = 9
      EcCallBack = 10
      EcCallCancelled = 11
      EcCallForward = 12
      EcCallForwardImmediate = 13
      EcCallForwardBusy = 14
      EcCallForwardNoAnswer = 15
      EcCallNotAnswered = 16
      EcCallPickup = 17
      EcCampOn = 18
      EcCampOnTrunks = 19
      EcCharacterCountReached = 20
      EcConference = 21
      EcConsultation = 22
      EcDestDetected = 23
      EcDestNotObtainable = 24
      EcDestOutOfOrder = 25
      EcDistributed = 26
      EcDistributionDelay = 27
      EcDoNotDisturb = 28
      EcDTMFDigitDetected = 29
      EcDurationExceeded = 30
      EcEndOfMessageDetected = 31
      EcEnteringDistribution = 32
      EcForcedPause = 33
      EcForcedTransition = 34
      EcIncompatibleDestination = 35
      EcIntrude = 36
      EcInvalidAccountCode = 37
      EcInvalidNumberFormat = 38
      EcJoinCall = 39
      EcKeyOperation = 40
      EcKeyOperationInUse = 41
      EcLockout = 42
      EcMaintenance = 43
      EcMakeCall = 44
      EcMakePredictiveCall = 45
      EcMessageDurationExceeded = 46
      EcMessageSizeExceeded = 47
      EcMultipleAlerting = 48
      EcMultipleQueuing = 49
      EcNetworkCongestion = 50
      EcNetworkDialling = 51
      EcNetworkNotObtainable = 52
      EcNetworkOutOfOrder = 53
      EcNetworkSignal = 54
      EcNewCall = 55
      EcNextMessage = 56
      EcNoAvailableAgents = 57
      EcNormal = 58
      EcNormalClearing = 59
      EcNoSpeechDetected = 60
      EcNotAvaliableBearerService = 61
      EcNotSupportedBearerService = 62
      EcNumberChanged = 63
      EcNumberUnallocated = 64
      EcOverflow = 65
      EcOverride = 66
      EcPark = 67
      EcQueueCleared = 68
      EcRecall = 69
      EcRedirected = 70
      EcRemainsInQueue = 71
      EcReorderTone = 72
      EcReserved = 73
      EcResourcesNotAvailable = 74
      EcSelectedTrunkBusy = 75
      EcSilentParticipation = 76
      EcSingleStepConference = 77
      EcSingleStepTransfer = 78
      EcSpeechDetected = 79
      EcSuspend = 80
      EcSwitchingFunctionTerminated = 81
      EcTerminationCharacterReceived = 82
      EcTimeout = 83
      EcTransfer = 84
      EcTrunksBusy = 85
      EcUnauthorisedBearerService = 86
      EcVoiceUnitInitiator = 87
      EcActivation = 88
      EcBabble = 89
      EcBadAttribute = 90
      EcBadGrammar = 91
      EcBadVoice = 92
      EcBadUri = 93
      EcBusyOverflow = 94
      EcCalendarOverflow = 95
      EcCallInterception = 96
      EcCallInterceptionBusy = 97
      EcCallInterceptionForwarded = 98
      EcCallInterceptionNoAnswer = 99
      EcCallInterceptionResourcesNotAvailable = 100
      EcCapacityOverflow = 101
      EcDuplicateDTMF = 102
      EcEarlyStop = 103
      EcEmptyQueue = 104
      EcInterDigitTimeout = 105
      EcInvalidConnection = 106
      EcInvalidConnectionState = 107
      EcLawfulInterception = 108
      EcMakeConnection = 109
      EcMaxTimeout = 110
      EcNoAudioSaved = 111
      EcNoQueue = 112
      EcNoRule = 113
      EcOutOfGrammar = 114
      EcPathReplacement = 115
      EcQueueTimeOverflow = 116
      EcRecallBusy = 117
      EcRecallForwarded = 118
      EcRecallNoAnswer = 119
      EcRecallResourcesNotAvailable = 120
      EcUnknownOverflow = 121
    end
    enum ReasonForTerm
      RftNormalClearing = 1
      RftUnsuccessfulCallAttempt = 2
      RftAbnormalTermination = 3
      RftCallTransferred = 4
      RftOther = 5
    end
    enum CallState
      CsUnknown = 0
      CsNull = 1
      CsInitiated = 2
      CsConnecting = 3
      CsDelivered = 4
      CsReceived = 5
      CsEstablished = 6
      CsFailed = 7
      CsBlocked = 8
    end
    enum OriginatorClass
      OcUnknown = 0
      OcCaller = 1
      OcCalled = 2
    end
    
    struct WantEvents
      include Protobuf::Message
      
      contract_of "proto2" do
        required :kind, EventKind, 1
        required :want, :bool, 2
      end
    end
    
    struct Event
      include Protobuf::Message
      
      contract_of "proto2" do
        required :kind, EventKind, 1
        repeated :changed_fields, :uint32, 2
        optional :latest_trigger, :string, 3
        optional :call_seq, :int64, 10
        optional :device_id, Support::Device, 11
        optional :local_connection_state, Support::ConnectionState, 12
        optional :last_event, EventType, 13
        optional :event_cause, EventCause, 14
        optional :state_time, :string, 15
        optional :is_originator, :bool, 16
        optional :thread_seq, :int64, 17
        optional :calling_device, Support::Device, 18
        optional :called_device, Support::Device, 19
        repeated :user_attrs, :string, 20
        repeated :old_call_seqs, :int64, 21
        optional :calls_on_this_device, :int32, 22
        optional :devices_in_this_call, :int32, 23
        optional :segment_seq, :int64, 24
        optional :connection_start, :string, 27
        optional :connection_end, :string, 28
        optional :connection_duration, :int64, 29
        optional :reason_for_term, ReasonForTerm, 30
        optional :create_event, EventType, 31
        optional :create_cause, EventCause, 32
        optional :close_event, EventType, 33
        optional :close_cause, EventCause, 34
        repeated :states, Support::ConnectionState, 35
        repeated :devices, Support::Device, 36
        optional :call_state, CallState, 37
        repeated :forward_state, Support::ForwardStateOut, 38
        optional :associated_device_id, Support::Device, 39
        optional :associated_called_device, Support::Device, 40
        optional :associated_calling_device, Support::Device, 41
        repeated :associated, Support::Device, 42
        repeated :originator, OriginatorClass, 43
      end
    end
    
    struct PBXManagerEvent
      include Protobuf::Message
      enum TCd
        CdUnknown = 0
        CdIncoming = 2
        CdOutgoing = 3
      end
      enum TAc
        AcUnknown = 0
        AcSpecial = 1
        AcAccounting = 2
        AcStart = 3
        AcEnd = 4
        AcConference = 5
        AcTransfer = 6
        AcDial = 7
        AcRing = 8
        AcBusy = 9
        AcConnect = 10
        AcDrop = 11
        AcHold = 12
        AcRetrieve = 13
      end
      enum TAt
        AtUnknown = 0
        AtCaller = 2
        AtCallee = 3
      end
      
      contract_of "proto2" do
        optional :call, :int64, 1
        optional :event_case, EventCause, 2
        optional :source, :string, 3
        optional :reverse, :bool, 4
        optional :evtnum, :int64, 5
        optional :evtstmp, :string, 6
        optional :dir, PBXManagerEvent::TCd, 7
        optional :action, PBXManagerEvent::TAc, 8
        optional :ab, PBXManagerEvent::TAt, 9
        optional :nst, Support::Device, 10
        optional :num, Support::Device, 11
        optional :vnst, Support::Device, 12
      end
    end
    end
  end
