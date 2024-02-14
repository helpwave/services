# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/services/impulse_svc/v1/impulse_svc.proto
# Protobuf Python Version: 4.25.2
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n/proto/services/impulse_svc/v1/impulse_svc.proto\x12\x1dproto.services.impulse_svc.v1\"\xcc\x01\n\x11\x43reateUserRequest\x12\x1a\n\x08username\x18\x01 \x01(\tR\x08username\x12=\n\x06gender\x18\x02 \x01(\x0e\x32%.proto.services.impulse_svc.v1.GenderR\x06gender\x12\x1a\n\x08\x62irthday\x18\x03 \x01(\tR\x08\x62irthday\x12\x10\n\x03pal\x18\x04 \x01(\x02R\x03pal\x12\x16\n\x06length\x18\x05 \x01(\x05R\x06length\x12\x16\n\x06weight\x18\x06 \x01(\x02R\x06weight\"-\n\x12\x43reateUserResponse\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\"\xc2\x02\n\x11UpdateUserRequest\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\x12\x1c\n\x07team_id\x18\x02 \x01(\tH\x00R\x06teamId\x88\x01\x01\x12\x42\n\x06gender\x18\x03 \x01(\x0e\x32%.proto.services.impulse_svc.v1.GenderH\x01R\x06gender\x88\x01\x01\x12\x1f\n\x08\x62irthday\x18\x04 \x01(\tH\x02R\x08\x62irthday\x88\x01\x01\x12\x15\n\x03pal\x18\x05 \x01(\x02H\x03R\x03pal\x88\x01\x01\x12\x1b\n\x06length\x18\x06 \x01(\x05H\x04R\x06length\x88\x01\x01\x12\x1b\n\x06weight\x18\x07 \x01(\x02H\x05R\x06weight\x88\x01\x01\x42\n\n\x08_team_idB\t\n\x07_genderB\x0b\n\t_birthdayB\x06\n\x04_palB\t\n\x07_lengthB\t\n\x07_weight\"\xf4\x01\n\x12UpdateUserResponse\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\x12\x1c\n\x07team_id\x18\x02 \x01(\tH\x00R\x06teamId\x88\x01\x01\x12=\n\x06gender\x18\x03 \x01(\x0e\x32%.proto.services.impulse_svc.v1.GenderR\x06gender\x12\x1a\n\x08\x62irthday\x18\x04 \x01(\tR\x08\x62irthday\x12\x10\n\x03pal\x18\x05 \x01(\x02R\x03pal\x12\x16\n\x06length\x18\x06 \x01(\x05R\x06length\x12\x16\n\x06weight\x18\x07 \x01(\x02R\x06weightB\n\n\x08_team_id\"\x14\n\x12GetAllTeamsRequest\"\xbb\x01\n\x13GetAllTeamsResponse\x12M\n\x05teams\x18\x01 \x03(\x0b\x32\x37.proto.services.impulse_svc.v1.GetAllTeamsResponse.TeamR\x05teams\x1aU\n\x04Team\x12\x17\n\x07team_id\x18\x01 \x01(\tR\x06teamId\x12\x12\n\x04name\x18\x02 \x01(\tR\x04name\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\"\x82\x01\n\x15TrackChallengeRequest\x12!\n\x0c\x63hallenge_id\x18\x01 \x01(\tR\x0b\x63hallengeId\x12\x17\n\x07user_id\x18\x02 \x01(\tR\x06userId\x12\x14\n\x05score\x18\x03 \x01(\x04R\x05score\x12\x17\n\x07\x64one_at\x18\x04 \x01(\tR\x06\x64oneAt\";\n\x16TrackChallengeResponse\x12!\n\x0c\x63hallenge_id\x18\x01 \x01(\tR\x0b\x63hallengeId\"\x1c\n\x1aGetActiveChallengesRequest\"\xf8\x03\n\x1bGetActiveChallengesResponse\x12\x64\n\nchallenges\x18\x01 \x03(\x0b\x32\x44.proto.services.impulse_svc.v1.GetActiveChallengesResponse.ChallengeR\nchallenges\x1a\xf2\x02\n\tChallenge\x12!\n\x0c\x63hallenge_id\x18\x01 \x01(\tR\x0b\x63hallengeId\x12\x14\n\x05title\x18\x02 \x01(\tR\x05title\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12\x19\n\x08start_at\x18\x04 \x01(\tR\x07startAt\x12\x15\n\x06\x65nd_at\x18\x05 \x01(\tR\x05\x65ndAt\x12L\n\x08\x63\x61tegory\x18\x06 \x01(\x0e\x32\x30.proto.services.impulse_svc.v1.ChallengeCategoryR\x08\x63\x61tegory\x12@\n\x04type\x18\x07 \x01(\x0e\x32,.proto.services.impulse_svc.v1.ChallengeTypeR\x04type\x12\x1c\n\tthreshold\x18\x08 \x01(\x04R\tthreshold\x12\x16\n\x06points\x18\t \x01(\x04R\x06points\x12\x12\n\x04unit\x18\n \x01(\tR\x04unit\"\xc6\x03\n\x16UpdateChallengeRequest\x12!\n\x0c\x63hallenge_id\x18\x01 \x01(\tR\x0b\x63hallengeId\x12\x19\n\x05title\x18\x02 \x01(\tH\x00R\x05title\x88\x01\x01\x12%\n\x0b\x64\x65scription\x18\x03 \x01(\tH\x01R\x0b\x64\x65scription\x88\x01\x01\x12\x1e\n\x08start_at\x18\x04 \x01(\tH\x02R\x07startAt\x88\x01\x01\x12\x1a\n\x06\x65nd_at\x18\x05 \x01(\tH\x03R\x05\x65ndAt\x88\x01\x01\x12Q\n\x08\x63\x61tegory\x18\x06 \x01(\x0e\x32\x30.proto.services.impulse_svc.v1.ChallengeCategoryH\x04R\x08\x63\x61tegory\x88\x01\x01\x12!\n\tthreshold\x18\x07 \x01(\x04H\x05R\tthreshold\x88\x01\x01\x12\x1b\n\x06points\x18\x08 \x01(\x04H\x06R\x06points\x88\x01\x01\x12\x17\n\x04unit\x18\t \x01(\tH\x07R\x04unit\x88\x01\x01\x42\x08\n\x06_titleB\x0e\n\x0c_descriptionB\x0b\n\t_start_atB\t\n\x07_end_atB\x0b\n\t_categoryB\x0c\n\n_thresholdB\t\n\x07_pointsB\x07\n\x05_unit\"\x80\x03\n\x17UpdateChallengeResponse\x12!\n\x0c\x63hallenge_id\x18\x01 \x01(\tR\x0b\x63hallengeId\x12\x14\n\x05title\x18\x02 \x01(\tR\x05title\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12\x19\n\x08start_at\x18\x04 \x01(\tR\x07startAt\x12\x15\n\x06\x65nd_at\x18\x05 \x01(\tR\x05\x65ndAt\x12L\n\x08\x63\x61tegory\x18\x06 \x01(\x0e\x32\x30.proto.services.impulse_svc.v1.ChallengeCategoryR\x08\x63\x61tegory\x12@\n\x04type\x18\x07 \x01(\x0e\x32,.proto.services.impulse_svc.v1.ChallengeTypeR\x04type\x12\x1c\n\tthreshold\x18\x08 \x01(\x04R\tthreshold\x12\x16\n\x06points\x18\t \x01(\x04R\x06points\x12\x12\n\x04unit\x18\n \x01(\tR\x04unit\"*\n\x0fGetScoreRequest\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\"(\n\x10GetScoreResponse\x12\x14\n\x05score\x18\x01 \x01(\x04R\x05score\",\n\x11GetRewardsRequest\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\"\xdf\x01\n\x12GetRewardsResponse\x12R\n\x07rewards\x18\x01 \x03(\x0b\x32\x38.proto.services.impulse_svc.v1.GetRewardsResponse.RewardR\x07rewards\x1au\n\x06Reward\x12\x1b\n\treward_id\x18\x01 \x01(\tR\x08rewardId\x12\x14\n\x05title\x18\x02 \x01(\tR\x05title\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12\x16\n\x06points\x18\x05 \x01(\x04R\x06points\"\x16\n\x14GetAllRewardsRequest\"\xe5\x01\n\x15GetAllRewardsResponse\x12U\n\x07rewards\x18\x01 \x03(\x0b\x32;.proto.services.impulse_svc.v1.GetAllRewardsResponse.RewardR\x07rewards\x1au\n\x06Reward\x12\x1b\n\treward_id\x18\x01 \x01(\tR\x08rewardId\x12\x14\n\x05title\x18\x02 \x01(\tR\x05title\x12 \n\x0b\x64\x65scription\x18\x03 \x01(\tR\x0b\x64\x65scription\x12\x16\n\x06points\x18\x05 \x01(\x04R\x06points\"4\n\x19StatsForTeamByUserRequest\x12\x17\n\x07user_id\x18\x01 \x01(\tR\x06userId\"\xd9\x02\n\x1aStatsForTeamByUserResponse\x12\x17\n\x07team_id\x18\x01 \x01(\tR\x06teamId\x12\x14\n\x05score\x18\x02 \x01(\x04R\x05score\x12h\n\x0cgender_count\x18\x03 \x03(\x0b\x32\x45.proto.services.impulse_svc.v1.StatsForTeamByUserResponse.GenderCountR\x0bgenderCount\x12\x1f\n\x0b\x61verage_age\x18\x04 \x01(\x02R\naverageAge\x12\x1d\n\nuser_count\x18\x05 \x01(\x04R\tuserCount\x1a\x62\n\x0bGenderCount\x12=\n\x06gender\x18\x01 \x01(\x0e\x32%.proto.services.impulse_svc.v1.GenderR\x06gender\x12\x14\n\x05\x63ount\x18\x02 \x01(\rR\x05\x63ount\"8\n\x13VerificationRequest\x12!\n\x0c\x63hallenge_id\x18\x01 \x01(\tR\x0b\x63hallengeId\"\xad\x04\n\x14VerificationResponse\x12y\n\x14string_verifications\x18\x01 \x03(\x0b\x32\x46.proto.services.impulse_svc.v1.VerificationResponse.StringVerificationR\x13stringVerifications\x12|\n\x15integer_verifications\x18\x02 \x03(\x0b\x32G.proto.services.impulse_svc.v1.VerificationResponse.IntegerVerificationR\x14integerVerifications\x1a\x8b\x01\n\x12StringVerification\x12\x14\n\x05order\x18\x01 \x01(\rR\x05order\x12I\n\x04type\x18\x02 \x01(\x0e\x32\x35.proto.services.impulse_svc.v1.StringVerificationTypeR\x04type\x12\x14\n\x05value\x18\x03 \x01(\tR\x05value\x1a\x8d\x01\n\x13IntegerVerification\x12\x14\n\x05order\x18\x01 \x01(\rR\x05order\x12J\n\x04type\x18\x02 \x01(\x0e\x32\x36.proto.services.impulse_svc.v1.IntegerVerificationTypeR\x04type\x12\x14\n\x05value\x18\x03 \x01(\x04R\x05value*c\n\rChallengeType\x12\x1e\n\x1a\x43HALLENGE_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14\x43HALLENGE_TYPE_DAILY\x10\x01\x12\x18\n\x14\x43HALLENGE_TYPE_QUEST\x10\x02*t\n\x11\x43hallengeCategory\x12\"\n\x1e\x43HALLENGE_CATEGORY_UNSPECIFIED\x10\x00\x12\x1b\n\x17\x43HALLENGE_CATEGORY_FOOD\x10\x01\x12\x1e\n\x1a\x43HALLENGE_CATEGORY_FITNESS\x10\x02*X\n\x06Gender\x12\x16\n\x12GENDER_UNSPECIFIED\x10\x00\x12\x0f\n\x0bGENDER_MALE\x10\x01\x12\x11\n\rGENDER_FEMALE\x10\x02\x12\x12\n\x0eGENDER_DIVERSE\x10\x03*c\n\x16StringVerificationType\x12(\n$STRING_VERIFICATION_TYPE_UNSPECIFIED\x10\x00\x12\x1f\n\x1bSTRING_VERIFICATION_TYPE_QR\x10\x01*\x8f\x01\n\x17IntegerVerificationType\x12)\n%INTEGER_VERIFICATION_TYPE_UNSPECIFIED\x10\x00\x12#\n\x1fINTEGER_VERIFICATION_TYPE_TIMER\x10\x01\x12$\n INTEGER_VERIFICATION_TYPE_NUMBER\x10\x02\x32\xef\t\n\x0eImpulseService\x12s\n\nCreateUser\x12\x30.proto.services.impulse_svc.v1.CreateUserRequest\x1a\x31.proto.services.impulse_svc.v1.CreateUserResponse\"\x00\x12s\n\nUpdateUser\x12\x30.proto.services.impulse_svc.v1.UpdateUserRequest\x1a\x31.proto.services.impulse_svc.v1.UpdateUserResponse\"\x00\x12\x7f\n\x0eTrackChallenge\x12\x34.proto.services.impulse_svc.v1.TrackChallengeRequest\x1a\x35.proto.services.impulse_svc.v1.TrackChallengeResponse\"\x00\x12\x8e\x01\n\x13GetActiveChallenges\x12\x39.proto.services.impulse_svc.v1.GetActiveChallengesRequest\x1a:.proto.services.impulse_svc.v1.GetActiveChallengesResponse\"\x00\x12m\n\x08GetScore\x12..proto.services.impulse_svc.v1.GetScoreRequest\x1a/.proto.services.impulse_svc.v1.GetScoreResponse\"\x00\x12s\n\nGetRewards\x12\x30.proto.services.impulse_svc.v1.GetRewardsRequest\x1a\x31.proto.services.impulse_svc.v1.GetRewardsResponse\"\x00\x12|\n\rGetAllRewards\x12\x33.proto.services.impulse_svc.v1.GetAllRewardsRequest\x1a\x34.proto.services.impulse_svc.v1.GetAllRewardsResponse\"\x00\x12v\n\x0bGetAllTeams\x12\x31.proto.services.impulse_svc.v1.GetAllTeamsRequest\x1a\x32.proto.services.impulse_svc.v1.GetAllTeamsResponse\"\x00\x12\x8b\x01\n\x12StatsForTeamByUser\x12\x38.proto.services.impulse_svc.v1.StatsForTeamByUserRequest\x1a\x39.proto.services.impulse_svc.v1.StatsForTeamByUserResponse\"\x00\x12y\n\x0cVerification\x12\x32.proto.services.impulse_svc.v1.VerificationRequest\x1a\x33.proto.services.impulse_svc.v1.VerificationResponse\"\x00\x42\xe7\x01\n!com.proto.services.impulse_svc.v1B\x0fImpulseSvcProtoP\x01Z\x1egen/proto/services/impulse-svc\xa2\x02\x03PSI\xaa\x02\x1cProto.Services.ImpulseSvc.V1\xca\x02\x1cProto\\Services\\ImpulseSvc\\V1\xe2\x02(Proto\\Services\\ImpulseSvc\\V1\\GPBMetadata\xea\x02\x1fProto::Services::ImpulseSvc::V1b\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'proto.services.impulse_svc.v1.impulse_svc_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  _globals['DESCRIPTOR']._options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n!com.proto.services.impulse_svc.v1B\017ImpulseSvcProtoP\001Z\036gen/proto/services/impulse-svc\242\002\003PSI\252\002\034Proto.Services.ImpulseSvc.V1\312\002\034Proto\\Services\\ImpulseSvc\\V1\342\002(Proto\\Services\\ImpulseSvc\\V1\\GPBMetadata\352\002\037Proto::Services::ImpulseSvc::V1'
  _globals['_CHALLENGETYPE']._serialized_start=4329
  _globals['_CHALLENGETYPE']._serialized_end=4428
  _globals['_CHALLENGECATEGORY']._serialized_start=4430
  _globals['_CHALLENGECATEGORY']._serialized_end=4546
  _globals['_GENDER']._serialized_start=4548
  _globals['_GENDER']._serialized_end=4636
  _globals['_STRINGVERIFICATIONTYPE']._serialized_start=4638
  _globals['_STRINGVERIFICATIONTYPE']._serialized_end=4737
  _globals['_INTEGERVERIFICATIONTYPE']._serialized_start=4740
  _globals['_INTEGERVERIFICATIONTYPE']._serialized_end=4883
  _globals['_CREATEUSERREQUEST']._serialized_start=83
  _globals['_CREATEUSERREQUEST']._serialized_end=287
  _globals['_CREATEUSERRESPONSE']._serialized_start=289
  _globals['_CREATEUSERRESPONSE']._serialized_end=334
  _globals['_UPDATEUSERREQUEST']._serialized_start=337
  _globals['_UPDATEUSERREQUEST']._serialized_end=659
  _globals['_UPDATEUSERRESPONSE']._serialized_start=662
  _globals['_UPDATEUSERRESPONSE']._serialized_end=906
  _globals['_GETALLTEAMSREQUEST']._serialized_start=908
  _globals['_GETALLTEAMSREQUEST']._serialized_end=928
  _globals['_GETALLTEAMSRESPONSE']._serialized_start=931
  _globals['_GETALLTEAMSRESPONSE']._serialized_end=1118
  _globals['_GETALLTEAMSRESPONSE_TEAM']._serialized_start=1033
  _globals['_GETALLTEAMSRESPONSE_TEAM']._serialized_end=1118
  _globals['_TRACKCHALLENGEREQUEST']._serialized_start=1121
  _globals['_TRACKCHALLENGEREQUEST']._serialized_end=1251
  _globals['_TRACKCHALLENGERESPONSE']._serialized_start=1253
  _globals['_TRACKCHALLENGERESPONSE']._serialized_end=1312
  _globals['_GETACTIVECHALLENGESREQUEST']._serialized_start=1314
  _globals['_GETACTIVECHALLENGESREQUEST']._serialized_end=1342
  _globals['_GETACTIVECHALLENGESRESPONSE']._serialized_start=1345
  _globals['_GETACTIVECHALLENGESRESPONSE']._serialized_end=1849
  _globals['_GETACTIVECHALLENGESRESPONSE_CHALLENGE']._serialized_start=1479
  _globals['_GETACTIVECHALLENGESRESPONSE_CHALLENGE']._serialized_end=1849
  _globals['_UPDATECHALLENGEREQUEST']._serialized_start=1852
  _globals['_UPDATECHALLENGEREQUEST']._serialized_end=2306
  _globals['_UPDATECHALLENGERESPONSE']._serialized_start=2309
  _globals['_UPDATECHALLENGERESPONSE']._serialized_end=2693
  _globals['_GETSCOREREQUEST']._serialized_start=2695
  _globals['_GETSCOREREQUEST']._serialized_end=2737
  _globals['_GETSCORERESPONSE']._serialized_start=2739
  _globals['_GETSCORERESPONSE']._serialized_end=2779
  _globals['_GETREWARDSREQUEST']._serialized_start=2781
  _globals['_GETREWARDSREQUEST']._serialized_end=2825
  _globals['_GETREWARDSRESPONSE']._serialized_start=2828
  _globals['_GETREWARDSRESPONSE']._serialized_end=3051
  _globals['_GETREWARDSRESPONSE_REWARD']._serialized_start=2934
  _globals['_GETREWARDSRESPONSE_REWARD']._serialized_end=3051
  _globals['_GETALLREWARDSREQUEST']._serialized_start=3053
  _globals['_GETALLREWARDSREQUEST']._serialized_end=3075
  _globals['_GETALLREWARDSRESPONSE']._serialized_start=3078
  _globals['_GETALLREWARDSRESPONSE']._serialized_end=3307
  _globals['_GETALLREWARDSRESPONSE_REWARD']._serialized_start=2934
  _globals['_GETALLREWARDSRESPONSE_REWARD']._serialized_end=3051
  _globals['_STATSFORTEAMBYUSERREQUEST']._serialized_start=3309
  _globals['_STATSFORTEAMBYUSERREQUEST']._serialized_end=3361
  _globals['_STATSFORTEAMBYUSERRESPONSE']._serialized_start=3364
  _globals['_STATSFORTEAMBYUSERRESPONSE']._serialized_end=3709
  _globals['_STATSFORTEAMBYUSERRESPONSE_GENDERCOUNT']._serialized_start=3611
  _globals['_STATSFORTEAMBYUSERRESPONSE_GENDERCOUNT']._serialized_end=3709
  _globals['_VERIFICATIONREQUEST']._serialized_start=3711
  _globals['_VERIFICATIONREQUEST']._serialized_end=3767
  _globals['_VERIFICATIONRESPONSE']._serialized_start=3770
  _globals['_VERIFICATIONRESPONSE']._serialized_end=4327
  _globals['_VERIFICATIONRESPONSE_STRINGVERIFICATION']._serialized_start=4044
  _globals['_VERIFICATIONRESPONSE_STRINGVERIFICATION']._serialized_end=4183
  _globals['_VERIFICATIONRESPONSE_INTEGERVERIFICATION']._serialized_start=4186
  _globals['_VERIFICATIONRESPONSE_INTEGERVERIFICATION']._serialized_end=4327
  _globals['_IMPULSESERVICE']._serialized_start=4886
  _globals['_IMPULSESERVICE']._serialized_end=6149
# @@protoc_insertion_point(module_scope)
