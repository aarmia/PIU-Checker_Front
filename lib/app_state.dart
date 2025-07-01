import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _userEmail = await secureStorage.getString('ff_userEmail') ?? _userEmail;
    });
    await _safeInitAsync(() async {
      _userPw = await secureStorage.getString('ff_userPw') ?? _userPw;
    });
    await _safeInitAsync(() async {
      _levelfield =
          await secureStorage.getStringList('ff_levelfield') ?? _levelfield;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _userEmail = '';
  String get userEmail => _userEmail;
  set userEmail(String value) {
    _userEmail = value;
    secureStorage.setString('ff_userEmail', value);
  }

  void deleteUserEmail() {
    secureStorage.delete(key: 'ff_userEmail');
  }

  String _userPw = '';
  String get userPw => _userPw;
  set userPw(String value) {
    _userPw = value;
    secureStorage.setString('ff_userPw', value);
  }

  void deleteUserPw() {
    secureStorage.delete(key: 'ff_userPw');
  }

  String _PlayerTitle = '[.Title]';
  String get PlayerTitle => _PlayerTitle;
  set PlayerTitle(String value) {
    _PlayerTitle = value;
  }

  String _PlayerName = '[.Player]';
  String get PlayerName => _PlayerName;
  set PlayerName(String value) {
    _PlayerName = value;
  }

  String _PlayerAvatar = '';
  String get PlayerAvatar => _PlayerAvatar;
  set PlayerAvatar(String value) {
    _PlayerAvatar = value;
  }

  String _selectedLevel = '10';
  String get selectedLevel => _selectedLevel;
  set selectedLevel(String value) {
    _selectedLevel = value;
  }

  int _selectedLevels = 0;
  int get selectedLevels => _selectedLevels;
  set selectedLevels(int value) {
    _selectedLevels = value;
  }

  List<int> _LevelList = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17
  ];
  List<int> get LevelList => _LevelList;
  set LevelList(List<int> value) {
    _LevelList = value;
  }

  void addToLevelList(int value) {
    LevelList.add(value);
  }

  void removeFromLevelList(int value) {
    LevelList.remove(value);
  }

  void removeAtIndexFromLevelList(int index) {
    LevelList.removeAt(index);
  }

  void updateLevelListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    LevelList[index] = updateFn(_LevelList[index]);
  }

  void insertAtIndexInLevelList(int index, int value) {
    LevelList.insert(index, value);
  }

  String _PumbilityScore = '00,000';
  String get PumbilityScore => _PumbilityScore;
  set PumbilityScore(String value) {
    _PumbilityScore = value;
  }

  int _PumpbScoreInt = 0;
  int get PumpbScoreInt => _PumpbScoreInt;
  set PumpbScoreInt(int value) {
    _PumpbScoreInt = value;
  }

  List<String> _PumpbTitle = [];
  List<String> get PumpbTitle => _PumpbTitle;
  set PumpbTitle(List<String> value) {
    _PumpbTitle = value;
  }

  void addToPumpbTitle(String value) {
    PumpbTitle.add(value);
  }

  void removeFromPumpbTitle(String value) {
    PumpbTitle.remove(value);
  }

  void removeAtIndexFromPumpbTitle(int index) {
    PumpbTitle.removeAt(index);
  }

  void updatePumpbTitleAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbTitle[index] = updateFn(_PumpbTitle[index]);
  }

  void insertAtIndexInPumpbTitle(int index, String value) {
    PumpbTitle.insert(index, value);
  }

  List<String> _PumpbArtist = [];
  List<String> get PumpbArtist => _PumpbArtist;
  set PumpbArtist(List<String> value) {
    _PumpbArtist = value;
  }

  void addToPumpbArtist(String value) {
    PumpbArtist.add(value);
  }

  void removeFromPumpbArtist(String value) {
    PumpbArtist.remove(value);
  }

  void removeAtIndexFromPumpbArtist(int index) {
    PumpbArtist.removeAt(index);
  }

  void updatePumpbArtistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbArtist[index] = updateFn(_PumpbArtist[index]);
  }

  void insertAtIndexInPumpbArtist(int index, String value) {
    PumpbArtist.insert(index, value);
  }

  List<String> _PumpbScore = [];
  List<String> get PumpbScore => _PumpbScore;
  set PumpbScore(List<String> value) {
    _PumpbScore = value;
  }

  void addToPumpbScore(String value) {
    PumpbScore.add(value);
  }

  void removeFromPumpbScore(String value) {
    PumpbScore.remove(value);
  }

  void removeAtIndexFromPumpbScore(int index) {
    PumpbScore.removeAt(index);
  }

  void updatePumpbScoreAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbScore[index] = updateFn(_PumpbScore[index]);
  }

  void insertAtIndexInPumpbScore(int index, String value) {
    PumpbScore.insert(index, value);
  }

  List<String> _PumpbDate = [];
  List<String> get PumpbDate => _PumpbDate;
  set PumpbDate(List<String> value) {
    _PumpbDate = value;
  }

  void addToPumpbDate(String value) {
    PumpbDate.add(value);
  }

  void removeFromPumpbDate(String value) {
    PumpbDate.remove(value);
  }

  void removeAtIndexFromPumpbDate(int index) {
    PumpbDate.removeAt(index);
  }

  void updatePumpbDateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbDate[index] = updateFn(_PumpbDate[index]);
  }

  void insertAtIndexInPumpbDate(int index, String value) {
    PumpbDate.insert(index, value);
  }

  List<String> _PumpbPlateurl = [];
  List<String> get PumpbPlateurl => _PumpbPlateurl;
  set PumpbPlateurl(List<String> value) {
    _PumpbPlateurl = value;
  }

  void addToPumpbPlateurl(String value) {
    PumpbPlateurl.add(value);
  }

  void removeFromPumpbPlateurl(String value) {
    PumpbPlateurl.remove(value);
  }

  void removeAtIndexFromPumpbPlateurl(int index) {
    PumpbPlateurl.removeAt(index);
  }

  void updatePumpbPlateurlAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbPlateurl[index] = updateFn(_PumpbPlateurl[index]);
  }

  void insertAtIndexInPumpbPlateurl(int index, String value) {
    PumpbPlateurl.insert(index, value);
  }

  List<String> _PumpbStepball1 = [];
  List<String> get PumpbStepball1 => _PumpbStepball1;
  set PumpbStepball1(List<String> value) {
    _PumpbStepball1 = value;
  }

  void addToPumpbStepball1(String value) {
    PumpbStepball1.add(value);
  }

  void removeFromPumpbStepball1(String value) {
    PumpbStepball1.remove(value);
  }

  void removeAtIndexFromPumpbStepball1(int index) {
    PumpbStepball1.removeAt(index);
  }

  void updatePumpbStepball1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbStepball1[index] = updateFn(_PumpbStepball1[index]);
  }

  void insertAtIndexInPumpbStepball1(int index, String value) {
    PumpbStepball1.insert(index, value);
  }

  List<String> _PumpbStepball2 = [];
  List<String> get PumpbStepball2 => _PumpbStepball2;
  set PumpbStepball2(List<String> value) {
    _PumpbStepball2 = value;
  }

  void addToPumpbStepball2(String value) {
    PumpbStepball2.add(value);
  }

  void removeFromPumpbStepball2(String value) {
    PumpbStepball2.remove(value);
  }

  void removeAtIndexFromPumpbStepball2(int index) {
    PumpbStepball2.removeAt(index);
  }

  void updatePumpbStepball2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbStepball2[index] = updateFn(_PumpbStepball2[index]);
  }

  void insertAtIndexInPumpbStepball2(int index, String value) {
    PumpbStepball2.insert(index, value);
  }

  List<String> _PumpbStepballText = [];
  List<String> get PumpbStepballText => _PumpbStepballText;
  set PumpbStepballText(List<String> value) {
    _PumpbStepballText = value;
  }

  void addToPumpbStepballText(String value) {
    PumpbStepballText.add(value);
  }

  void removeFromPumpbStepballText(String value) {
    PumpbStepballText.remove(value);
  }

  void removeAtIndexFromPumpbStepballText(int index) {
    PumpbStepballText.removeAt(index);
  }

  void updatePumpbStepballTextAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbStepballText[index] = updateFn(_PumpbStepballText[index]);
  }

  void insertAtIndexInPumpbStepballText(int index, String value) {
    PumpbStepballText.insert(index, value);
  }

  List<String> _PumpbStepballBG = [];
  List<String> get PumpbStepballBG => _PumpbStepballBG;
  set PumpbStepballBG(List<String> value) {
    _PumpbStepballBG = value;
  }

  void addToPumpbStepballBG(String value) {
    PumpbStepballBG.add(value);
  }

  void removeFromPumpbStepballBG(String value) {
    PumpbStepballBG.remove(value);
  }

  void removeAtIndexFromPumpbStepballBG(int index) {
    PumpbStepballBG.removeAt(index);
  }

  void updatePumpbStepballBGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbStepballBG[index] = updateFn(_PumpbStepballBG[index]);
  }

  void insertAtIndexInPumpbStepballBG(int index, String value) {
    PumpbStepballBG.insert(index, value);
  }

  List<String> _PumpbBG = [];
  List<String> get PumpbBG => _PumpbBG;
  set PumpbBG(List<String> value) {
    _PumpbBG = value;
  }

  void addToPumpbBG(String value) {
    PumpbBG.add(value);
  }

  void removeFromPumpbBG(String value) {
    PumpbBG.remove(value);
  }

  void removeAtIndexFromPumpbBG(int index) {
    PumpbBG.removeAt(index);
  }

  void updatePumpbBGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    PumpbBG[index] = updateFn(_PumpbBG[index]);
  }

  void insertAtIndexInPumpbBG(int index, String value) {
    PumpbBG.insert(index, value);
  }

  List<String> _RecentSong = [];
  List<String> get RecentSong => _RecentSong;
  set RecentSong(List<String> value) {
    _RecentSong = value;
  }

  void addToRecentSong(String value) {
    RecentSong.add(value);
  }

  void removeFromRecentSong(String value) {
    RecentSong.remove(value);
  }

  void removeAtIndexFromRecentSong(int index) {
    RecentSong.removeAt(index);
  }

  void updateRecentSongAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentSong[index] = updateFn(_RecentSong[index]);
  }

  void insertAtIndexInRecentSong(int index, String value) {
    RecentSong.insert(index, value);
  }

  List<String> _RecentScore = [];
  List<String> get RecentScore => _RecentScore;
  set RecentScore(List<String> value) {
    _RecentScore = value;
  }

  void addToRecentScore(String value) {
    RecentScore.add(value);
  }

  void removeFromRecentScore(String value) {
    RecentScore.remove(value);
  }

  void removeAtIndexFromRecentScore(int index) {
    RecentScore.removeAt(index);
  }

  void updateRecentScoreAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentScore[index] = updateFn(_RecentScore[index]);
  }

  void insertAtIndexInRecentScore(int index, String value) {
    RecentScore.insert(index, value);
  }

  List<String> _RecentStepballURL = [];
  List<String> get RecentStepballURL => _RecentStepballURL;
  set RecentStepballURL(List<String> value) {
    _RecentStepballURL = value;
  }

  void addToRecentStepballURL(String value) {
    RecentStepballURL.add(value);
  }

  void removeFromRecentStepballURL(String value) {
    RecentStepballURL.remove(value);
  }

  void removeAtIndexFromRecentStepballURL(int index) {
    RecentStepballURL.removeAt(index);
  }

  void updateRecentStepballURLAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentStepballURL[index] = updateFn(_RecentStepballURL[index]);
  }

  void insertAtIndexInRecentStepballURL(int index, String value) {
    RecentStepballURL.insert(index, value);
  }

  List<String> _RecentStepballType = [];
  List<String> get RecentStepballType => _RecentStepballType;
  set RecentStepballType(List<String> value) {
    _RecentStepballType = value;
  }

  void addToRecentStepballType(String value) {
    RecentStepballType.add(value);
  }

  void removeFromRecentStepballType(String value) {
    RecentStepballType.remove(value);
  }

  void removeAtIndexFromRecentStepballType(int index) {
    RecentStepballType.removeAt(index);
  }

  void updateRecentStepballTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentStepballType[index] = updateFn(_RecentStepballType[index]);
  }

  void insertAtIndexInRecentStepballType(int index, String value) {
    RecentStepballType.insert(index, value);
  }

  List<String> _RecentBallText1 = [];
  List<String> get RecentBallText1 => _RecentBallText1;
  set RecentBallText1(List<String> value) {
    _RecentBallText1 = value;
  }

  void addToRecentBallText1(String value) {
    RecentBallText1.add(value);
  }

  void removeFromRecentBallText1(String value) {
    RecentBallText1.remove(value);
  }

  void removeAtIndexFromRecentBallText1(int index) {
    RecentBallText1.removeAt(index);
  }

  void updateRecentBallText1AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentBallText1[index] = updateFn(_RecentBallText1[index]);
  }

  void insertAtIndexInRecentBallText1(int index, String value) {
    RecentBallText1.insert(index, value);
  }

  List<String> _RecentBallText2 = [];
  List<String> get RecentBallText2 => _RecentBallText2;
  set RecentBallText2(List<String> value) {
    _RecentBallText2 = value;
  }

  void addToRecentBallText2(String value) {
    RecentBallText2.add(value);
  }

  void removeFromRecentBallText2(String value) {
    RecentBallText2.remove(value);
  }

  void removeAtIndexFromRecentBallText2(int index) {
    RecentBallText2.removeAt(index);
  }

  void updateRecentBallText2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentBallText2[index] = updateFn(_RecentBallText2[index]);
  }

  void insertAtIndexInRecentBallText2(int index, String value) {
    RecentBallText2.insert(index, value);
  }

  List<String> _RecentPerfect = [];
  List<String> get RecentPerfect => _RecentPerfect;
  set RecentPerfect(List<String> value) {
    _RecentPerfect = value;
  }

  void addToRecentPerfect(String value) {
    RecentPerfect.add(value);
  }

  void removeFromRecentPerfect(String value) {
    RecentPerfect.remove(value);
  }

  void removeAtIndexFromRecentPerfect(int index) {
    RecentPerfect.removeAt(index);
  }

  void updateRecentPerfectAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentPerfect[index] = updateFn(_RecentPerfect[index]);
  }

  void insertAtIndexInRecentPerfect(int index, String value) {
    RecentPerfect.insert(index, value);
  }

  List<String> _RecentGreat = [];
  List<String> get RecentGreat => _RecentGreat;
  set RecentGreat(List<String> value) {
    _RecentGreat = value;
  }

  void addToRecentGreat(String value) {
    RecentGreat.add(value);
  }

  void removeFromRecentGreat(String value) {
    RecentGreat.remove(value);
  }

  void removeAtIndexFromRecentGreat(int index) {
    RecentGreat.removeAt(index);
  }

  void updateRecentGreatAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentGreat[index] = updateFn(_RecentGreat[index]);
  }

  void insertAtIndexInRecentGreat(int index, String value) {
    RecentGreat.insert(index, value);
  }

  List<String> _RecentGood = [];
  List<String> get RecentGood => _RecentGood;
  set RecentGood(List<String> value) {
    _RecentGood = value;
  }

  void addToRecentGood(String value) {
    RecentGood.add(value);
  }

  void removeFromRecentGood(String value) {
    RecentGood.remove(value);
  }

  void removeAtIndexFromRecentGood(int index) {
    RecentGood.removeAt(index);
  }

  void updateRecentGoodAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentGood[index] = updateFn(_RecentGood[index]);
  }

  void insertAtIndexInRecentGood(int index, String value) {
    RecentGood.insert(index, value);
  }

  List<String> _RecentBad = [];
  List<String> get RecentBad => _RecentBad;
  set RecentBad(List<String> value) {
    _RecentBad = value;
  }

  void addToRecentBad(String value) {
    RecentBad.add(value);
  }

  void removeFromRecentBad(String value) {
    RecentBad.remove(value);
  }

  void removeAtIndexFromRecentBad(int index) {
    RecentBad.removeAt(index);
  }

  void updateRecentBadAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentBad[index] = updateFn(_RecentBad[index]);
  }

  void insertAtIndexInRecentBad(int index, String value) {
    RecentBad.insert(index, value);
  }

  List<String> _RecentMiss = [];
  List<String> get RecentMiss => _RecentMiss;
  set RecentMiss(List<String> value) {
    _RecentMiss = value;
  }

  void addToRecentMiss(String value) {
    RecentMiss.add(value);
  }

  void removeFromRecentMiss(String value) {
    RecentMiss.remove(value);
  }

  void removeAtIndexFromRecentMiss(int index) {
    RecentMiss.removeAt(index);
  }

  void updateRecentMissAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentMiss[index] = updateFn(_RecentMiss[index]);
  }

  void insertAtIndexInRecentMiss(int index, String value) {
    RecentMiss.insert(index, value);
  }

  List<String> _RecentPlate = [];
  List<String> get RecentPlate => _RecentPlate;
  set RecentPlate(List<String> value) {
    _RecentPlate = value;
  }

  void addToRecentPlate(String value) {
    RecentPlate.add(value);
  }

  void removeFromRecentPlate(String value) {
    RecentPlate.remove(value);
  }

  void removeAtIndexFromRecentPlate(int index) {
    RecentPlate.removeAt(index);
  }

  void updateRecentPlateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentPlate[index] = updateFn(_RecentPlate[index]);
  }

  void insertAtIndexInRecentPlate(int index, String value) {
    RecentPlate.insert(index, value);
  }

  List<String> _RecentBG = [];
  List<String> get RecentBG => _RecentBG;
  set RecentBG(List<String> value) {
    _RecentBG = value;
  }

  void addToRecentBG(String value) {
    RecentBG.add(value);
  }

  void removeFromRecentBG(String value) {
    RecentBG.remove(value);
  }

  void removeAtIndexFromRecentBG(int index) {
    RecentBG.removeAt(index);
  }

  void updateRecentBGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    RecentBG[index] = updateFn(_RecentBG[index]);
  }

  void insertAtIndexInRecentBG(int index, String value) {
    RecentBG.insert(index, value);
  }

  List<String> _HomeRating = [];
  List<String> get HomeRating => _HomeRating;
  set HomeRating(List<String> value) {
    _HomeRating = value;
  }

  void addToHomeRating(String value) {
    HomeRating.add(value);
  }

  void removeFromHomeRating(String value) {
    HomeRating.remove(value);
  }

  void removeAtIndexFromHomeRating(int index) {
    HomeRating.removeAt(index);
  }

  void updateHomeRatingAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeRating[index] = updateFn(_HomeRating[index]);
  }

  void insertAtIndexInHomeRating(int index, String value) {
    HomeRating.insert(index, value);
  }

  List<String> _HomeClearData = [];
  List<String> get HomeClearData => _HomeClearData;
  set HomeClearData(List<String> value) {
    _HomeClearData = value;
  }

  void addToHomeClearData(String value) {
    HomeClearData.add(value);
  }

  void removeFromHomeClearData(String value) {
    HomeClearData.remove(value);
  }

  void removeAtIndexFromHomeClearData(int index) {
    HomeClearData.removeAt(index);
  }

  void updateHomeClearDataAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeClearData[index] = updateFn(_HomeClearData[index]);
  }

  void insertAtIndexInHomeClearData(int index, String value) {
    HomeClearData.insert(index, value);
  }

  List<String> _HomeProgress = [];
  List<String> get HomeProgress => _HomeProgress;
  set HomeProgress(List<String> value) {
    _HomeProgress = value;
  }

  void addToHomeProgress(String value) {
    HomeProgress.add(value);
  }

  void removeFromHomeProgress(String value) {
    HomeProgress.remove(value);
  }

  void removeAtIndexFromHomeProgress(int index) {
    HomeProgress.removeAt(index);
  }

  void updateHomeProgressAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeProgress[index] = updateFn(_HomeProgress[index]);
  }

  void insertAtIndexInHomeProgress(int index, String value) {
    HomeProgress.insert(index, value);
  }

  List<double> _HomePercent = [];
  List<double> get HomePercent => _HomePercent;
  set HomePercent(List<double> value) {
    _HomePercent = value;
  }

  void addToHomePercent(double value) {
    HomePercent.add(value);
  }

  void removeFromHomePercent(double value) {
    HomePercent.remove(value);
  }

  void removeAtIndexFromHomePercent(int index) {
    HomePercent.removeAt(index);
  }

  void updateHomePercentAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    HomePercent[index] = updateFn(_HomePercent[index]);
  }

  void insertAtIndexInHomePercent(int index, double value) {
    HomePercent.insert(index, value);
  }

  List<String> _HomePG = [];
  List<String> get HomePG => _HomePG;
  set HomePG(List<String> value) {
    _HomePG = value;
  }

  void addToHomePG(String value) {
    HomePG.add(value);
  }

  void removeFromHomePG(String value) {
    HomePG.remove(value);
  }

  void removeAtIndexFromHomePG(int index) {
    HomePG.removeAt(index);
  }

  void updateHomePGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomePG[index] = updateFn(_HomePG[index]);
  }

  void insertAtIndexInHomePG(int index, String value) {
    HomePG.insert(index, value);
  }

  List<String> _HomeUG = [];
  List<String> get HomeUG => _HomeUG;
  set HomeUG(List<String> value) {
    _HomeUG = value;
  }

  void addToHomeUG(String value) {
    HomeUG.add(value);
  }

  void removeFromHomeUG(String value) {
    HomeUG.remove(value);
  }

  void removeAtIndexFromHomeUG(int index) {
    HomeUG.removeAt(index);
  }

  void updateHomeUGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeUG[index] = updateFn(_HomeUG[index]);
  }

  void insertAtIndexInHomeUG(int index, String value) {
    HomeUG.insert(index, value);
  }

  List<String> _HomeEG = [];
  List<String> get HomeEG => _HomeEG;
  set HomeEG(List<String> value) {
    _HomeEG = value;
  }

  void addToHomeEG(String value) {
    HomeEG.add(value);
  }

  void removeFromHomeEG(String value) {
    HomeEG.remove(value);
  }

  void removeAtIndexFromHomeEG(int index) {
    HomeEG.removeAt(index);
  }

  void updateHomeEGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeEG[index] = updateFn(_HomeEG[index]);
  }

  void insertAtIndexInHomeEG(int index, String value) {
    HomeEG.insert(index, value);
  }

  List<String> _HomeSG = [];
  List<String> get HomeSG => _HomeSG;
  set HomeSG(List<String> value) {
    _HomeSG = value;
  }

  void addToHomeSG(String value) {
    HomeSG.add(value);
  }

  void removeFromHomeSG(String value) {
    HomeSG.remove(value);
  }

  void removeAtIndexFromHomeSG(int index) {
    HomeSG.removeAt(index);
  }

  void updateHomeSGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeSG[index] = updateFn(_HomeSG[index]);
  }

  void insertAtIndexInHomeSG(int index, String value) {
    HomeSG.insert(index, value);
  }

  List<String> _HomeMG = [];
  List<String> get HomeMG => _HomeMG;
  set HomeMG(List<String> value) {
    _HomeMG = value;
  }

  void addToHomeMG(String value) {
    HomeMG.add(value);
  }

  void removeFromHomeMG(String value) {
    HomeMG.remove(value);
  }

  void removeAtIndexFromHomeMG(int index) {
    HomeMG.removeAt(index);
  }

  void updateHomeMGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeMG[index] = updateFn(_HomeMG[index]);
  }

  void insertAtIndexInHomeMG(int index, String value) {
    HomeMG.insert(index, value);
  }

  List<String> _HomeTG = [];
  List<String> get HomeTG => _HomeTG;
  set HomeTG(List<String> value) {
    _HomeTG = value;
  }

  void addToHomeTG(String value) {
    HomeTG.add(value);
  }

  void removeFromHomeTG(String value) {
    HomeTG.remove(value);
  }

  void removeAtIndexFromHomeTG(int index) {
    HomeTG.removeAt(index);
  }

  void updateHomeTGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeTG[index] = updateFn(_HomeTG[index]);
  }

  void insertAtIndexInHomeTG(int index, String value) {
    HomeTG.insert(index, value);
  }

  List<String> _HomeFG = [];
  List<String> get HomeFG => _HomeFG;
  set HomeFG(List<String> value) {
    _HomeFG = value;
  }

  void addToHomeFG(String value) {
    HomeFG.add(value);
  }

  void removeFromHomeFG(String value) {
    HomeFG.remove(value);
  }

  void removeAtIndexFromHomeFG(int index) {
    HomeFG.removeAt(index);
  }

  void updateHomeFGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeFG[index] = updateFn(_HomeFG[index]);
  }

  void insertAtIndexInHomeFG(int index, String value) {
    HomeFG.insert(index, value);
  }

  List<String> _HomeRG = [];
  List<String> get HomeRG => _HomeRG;
  set HomeRG(List<String> value) {
    _HomeRG = value;
  }

  void addToHomeRG(String value) {
    HomeRG.add(value);
  }

  void removeFromHomeRG(String value) {
    HomeRG.remove(value);
  }

  void removeAtIndexFromHomeRG(int index) {
    HomeRG.removeAt(index);
  }

  void updateHomeRGAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HomeRG[index] = updateFn(_HomeRG[index]);
  }

  void insertAtIndexInHomeRG(int index, String value) {
    HomeRG.insert(index, value);
  }

  List<String> _levelfield = [
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27'
  ];
  List<String> get levelfield => _levelfield;
  set levelfield(List<String> value) {
    _levelfield = value;
    secureStorage.setStringList('ff_levelfield', value);
  }

  void deleteLevelfield() {
    secureStorage.delete(key: 'ff_levelfield');
  }

  void addToLevelfield(String value) {
    levelfield.add(value);
    secureStorage.setStringList('ff_levelfield', _levelfield);
  }

  void removeFromLevelfield(String value) {
    levelfield.remove(value);
    secureStorage.setStringList('ff_levelfield', _levelfield);
  }

  void removeAtIndexFromLevelfield(int index) {
    levelfield.removeAt(index);
    secureStorage.setStringList('ff_levelfield', _levelfield);
  }

  void updateLevelfieldAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    levelfield[index] = updateFn(_levelfield[index]);
    secureStorage.setStringList('ff_levelfield', _levelfield);
  }

  void insertAtIndexInLevelfield(int index, String value) {
    levelfield.insert(index, value);
    secureStorage.setStringList('ff_levelfield', _levelfield);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
