import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FetchUserDataCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FetchUserData',
      apiUrl: 'http://3.34.51.98:8000/fetch-all-user-data',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? playerTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.user_data.level''',
      ));
  static String? playerName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.user_data.nickname''',
      ));
  static String? playerAvatar(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.user_data.profile_img''',
      ));
  static List<String>? ratingList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].play_data.rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? clearDataList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].play_data.clear_data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? progressList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].play_data.progress''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? progressDoubleList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].play_data.progress_value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? pGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.pg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? uGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.ug''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? eGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.eg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? sGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.sg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? mGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.mg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.tg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.fg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? rGList(dynamic response) => (getJsonField(
        response,
        r'''$.data.all_levels_data[:].plate_data.rg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? pumpbilityScore(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.pumbility_data.pumbility_score''',
      ));
  static List<String>? pumpbilitySongList(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilitySongTitle(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].artist''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilitySongScore(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilityDate(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilityPlate(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].plate_img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilityStepball1(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].stepball_inner_img[0]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilityStepball2(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].stepball_inner_img[1]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilityStepballType(dynamic response) =>
      (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].step_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbilitySteptext(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].stepball_tw_img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentSong(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].song_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentScore(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentStepballUrl(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].stepball_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentStepballType(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].stepball_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentStepballT1(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].stepball_num1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentStepballT2(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].stepball_num2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentPerfect(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].judgement.perfect''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentGreat(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].judgement.great''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentGood(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].judgement.good''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentBad(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].judgement.bad''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentMiss(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].judgement.miss''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentPlate(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].plate_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recentBG(dynamic response) => (getJsonField(
        response,
        r'''$.data.recently_played_data[:].background_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pumpbBG(dynamic response) => (getJsonField(
        response,
        r'''$.data.pumbility_data.song_list[:].bg_img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FetchChecklistDataCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FetchChecklistData',
      apiUrl: 'http://3.34.51.98:8000/fetch-song-details',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? single10name(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_10.single[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? single10score(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_10.single[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? double10name(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_10.double[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? double10score(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_10.double[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? single11name(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_11.single[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? single11score(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_11.single[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? single12name(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_12.single[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? single12score(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_12.single[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? double12name(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_12.double[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? double12score(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_12.double[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? single13score(dynamic response) => (getJsonField(
        response,
        r'''$.data.level_13.single[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
