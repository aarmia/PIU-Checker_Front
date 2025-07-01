import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sub_component/setting_bar/setting_bar_widget.dart';
import '/index.dart';
import 'dashboard_page_widget.dart' show DashboardPageWidget;
import 'package:flutter/material.dart';

class DashboardPageModel extends FlutterFlowModel<DashboardPageWidget> {
  ///  Local state fields for this page.

  String id = '[ID]';

  String rank = '1000+';

  String avatar = 'https://www.piugame.com/l_img/logo.png';

  int? pumpbility;

  List<String> topsonglist = [];
  void addToTopsonglist(String item) => topsonglist.add(item);
  void removeFromTopsonglist(String item) => topsonglist.remove(item);
  void removeAtIndexFromTopsonglist(int index) => topsonglist.removeAt(index);
  void insertAtIndexInTopsonglist(int index, String item) =>
      topsonglist.insert(index, item);
  void updateTopsonglistAtIndex(int index, Function(String) updateFn) =>
      topsonglist[index] = updateFn(topsonglist[index]);

  List<String> topscorelist = [];
  void addToTopscorelist(String item) => topscorelist.add(item);
  void removeFromTopscorelist(String item) => topscorelist.remove(item);
  void removeAtIndexFromTopscorelist(int index) => topscorelist.removeAt(index);
  void insertAtIndexInTopscorelist(int index, String item) =>
      topscorelist.insert(index, item);
  void updateTopscorelistAtIndex(int index, Function(String) updateFn) =>
      topscorelist[index] = updateFn(topscorelist[index]);

  List<String> toptypelist = [];
  void addToToptypelist(String item) => toptypelist.add(item);
  void removeFromToptypelist(String item) => toptypelist.remove(item);
  void removeAtIndexFromToptypelist(int index) => toptypelist.removeAt(index);
  void insertAtIndexInToptypelist(int index, String item) =>
      toptypelist.insert(index, item);
  void updateToptypelistAtIndex(int index, Function(String) updateFn) =>
      toptypelist[index] = updateFn(toptypelist[index]);

  List<String> topdiflist = [];
  void addToTopdiflist(String item) => topdiflist.add(item);
  void removeFromTopdiflist(String item) => topdiflist.remove(item);
  void removeAtIndexFromTopdiflist(int index) => topdiflist.removeAt(index);
  void insertAtIndexInTopdiflist(int index, String item) =>
      topdiflist.insert(index, item);
  void updateTopdiflistAtIndex(int index, Function(String) updateFn) =>
      topdiflist[index] = updateFn(topdiflist[index]);

  List<String> top10 = [
    '#1',
    '#2',
    '#3',
    '#4',
    '#5',
    '#6',
    '#7',
    '#8',
    '#9',
    '#10'
  ];
  void addToTop10(String item) => top10.add(item);
  void removeFromTop10(String item) => top10.remove(item);
  void removeAtIndexFromTop10(int index) => top10.removeAt(index);
  void insertAtIndexInTop10(int index, String item) =>
      top10.insert(index, item);
  void updateTop10AtIndex(int index, Function(String) updateFn) =>
      top10[index] = updateFn(top10[index]);

  List<String> topplatelist = [];
  void addToTopplatelist(String item) => topplatelist.add(item);
  void removeFromTopplatelist(String item) => topplatelist.remove(item);
  void removeAtIndexFromTopplatelist(int index) => topplatelist.removeAt(index);
  void insertAtIndexInTopplatelist(int index, String item) =>
      topplatelist.insert(index, item);
  void updateTopplatelistAtIndex(int index, Function(String) updateFn) =>
      topplatelist[index] = updateFn(topplatelist[index]);

  List<String> topURLlist = [];
  void addToTopURLlist(String item) => topURLlist.add(item);
  void removeFromTopURLlist(String item) => topURLlist.remove(item);
  void removeAtIndexFromTopURLlist(int index) => topURLlist.removeAt(index);
  void insertAtIndexInTopURLlist(int index, String item) =>
      topURLlist.insert(index, item);
  void updateTopURLlistAtIndex(int index, Function(String) updateFn) =>
      topURLlist[index] = updateFn(topURLlist[index]);

  List<String> othersong = [];
  void addToOthersong(String item) => othersong.add(item);
  void removeFromOthersong(String item) => othersong.remove(item);
  void removeAtIndexFromOthersong(int index) => othersong.removeAt(index);
  void insertAtIndexInOthersong(int index, String item) =>
      othersong.insert(index, item);
  void updateOthersongAtIndex(int index, Function(String) updateFn) =>
      othersong[index] = updateFn(othersong[index]);

  List<String> otherscore = [];
  void addToOtherscore(String item) => otherscore.add(item);
  void removeFromOtherscore(String item) => otherscore.remove(item);
  void removeAtIndexFromOtherscore(int index) => otherscore.removeAt(index);
  void insertAtIndexInOtherscore(int index, String item) =>
      otherscore.insert(index, item);
  void updateOtherscoreAtIndex(int index, Function(String) updateFn) =>
      otherscore[index] = updateFn(otherscore[index]);

  List<String> othertype = [];
  void addToOthertype(String item) => othertype.add(item);
  void removeFromOthertype(String item) => othertype.remove(item);
  void removeAtIndexFromOthertype(int index) => othertype.removeAt(index);
  void insertAtIndexInOthertype(int index, String item) =>
      othertype.insert(index, item);
  void updateOthertypeAtIndex(int index, Function(String) updateFn) =>
      othertype[index] = updateFn(othertype[index]);

  List<String> otherdif = [];
  void addToOtherdif(String item) => otherdif.add(item);
  void removeFromOtherdif(String item) => otherdif.remove(item);
  void removeAtIndexFromOtherdif(int index) => otherdif.removeAt(index);
  void insertAtIndexInOtherdif(int index, String item) =>
      otherdif.insert(index, item);
  void updateOtherdifAtIndex(int index, Function(String) updateFn) =>
      otherdif[index] = updateFn(otherdif[index]);

  List<String> otherplate = [];
  void addToOtherplate(String item) => otherplate.add(item);
  void removeFromOtherplate(String item) => otherplate.remove(item);
  void removeAtIndexFromOtherplate(int index) => otherplate.removeAt(index);
  void insertAtIndexInOtherplate(int index, String item) =>
      otherplate.insert(index, item);
  void updateOtherplateAtIndex(int index, Function(String) updateFn) =>
      otherplate[index] = updateFn(otherplate[index]);

  List<String> otherURL = [];
  void addToOtherURL(String item) => otherURL.add(item);
  void removeFromOtherURL(String item) => otherURL.remove(item);
  void removeAtIndexFromOtherURL(int index) => otherURL.removeAt(index);
  void insertAtIndexInOtherURL(int index, String item) =>
      otherURL.insert(index, item);
  void updateOtherURLAtIndex(int index, Function(String) updateFn) =>
      otherURL[index] = updateFn(otherURL[index]);

  List<String> other40 = [
    '#11',
    '#12',
    '#13',
    '#14',
    '#15',
    '#16',
    '#17',
    '#18',
    '#19',
    '#20',
    '#21',
    '#22',
    '#23',
    '#24',
    '#25',
    '#26',
    '#27',
    '#28',
    '#29',
    '#30',
    '#31',
    '#32',
    '#33',
    '#34',
    '#35',
    '#36',
    '#37',
    '#38',
    '#39',
    '#40',
    '#41',
    '#42',
    '#43',
    '#44',
    '#45',
    '#46',
    '#47',
    '#48',
    '#49',
    '#50'
  ];
  void addToOther40(String item) => other40.add(item);
  void removeFromOther40(String item) => other40.remove(item);
  void removeAtIndexFromOther40(int index) => other40.removeAt(index);
  void insertAtIndexInOther40(int index, String item) =>
      other40.insert(index, item);
  void updateOther40AtIndex(int index, Function(String) updateFn) =>
      other40[index] = updateFn(other40[index]);

  bool? isLoad = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (FetchDashboardData)] action in Dashboard_Page widget.
  ApiCallResponse? loadDASHBOARD;
  // Model for setting_bar component.
  late SettingBarModel settingBarModel;

  @override
  void initState(BuildContext context) {
    settingBarModel = createModel(context, () => SettingBarModel());
  }

  @override
  void dispose() {
    settingBarModel.dispose();
  }
}
