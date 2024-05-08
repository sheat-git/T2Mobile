import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/models/course_content_module_content.dart';

class CourseContentModules extends Table {
  IntColumn get courseContentId => integer()();
  IntColumn get id => integer()();
  TextColumn get type => textEnum<CourseContentModuleType>().nullable()();
  TextColumn get modName => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get url => text().nullable()();
  TextColumn get contents =>
      text().map(CourseContentModules.contentsConverter)();

  @override
  Set<Column> get primaryKey => {courseContentId, id};

  static final contentsConverter = TypeConverter.json(
    fromJson: (json) => (json as List)
        .cast<Map<String, dynamic>>()
        .map(CourseContentModuleContent.fromJson)
        .toList(),
    toJson: (data) => data.map((c) => c.toJson()).toList(),
  );
}

enum CourseContentModuleType {
  assignment('assign'), // 課題
  // bigBlueButton,
  // book,
  chat('chat'), // コースID: 20783 に見られる
  choice('choice'), // コースID: 10889 に見られる
  // data,
  feedback('feedback'), // コースID: 34207, 17732 に見られる
  folder('folder'), // コースID: 20783 に見られる
  forum('forum'), // アナウンスメントなど
  // glossary,
  // h5pactivity,
  // imscp,
  label('label'), // コースID: 30005 に見られる
  // lesson,
  // lti,
  page('page'), // コースID: 17730, 10890 に見られる
  quiz('quiz'), // コースID: 10898, 20783 に見られる
  resource('resource'),
  // scorm,
  // survey,
  url('url'),
  // wiki,
  // workshop,
  // bigbluebuttonbn, // 謎。以下のテキストが定義されている。
  //   "ja": {
  //     "pluginname": "BigBlueButton",
  //     "view_conference_action_join": "セッションに参加する",
  //     "view_message_conference_room_ready": "このルームの準備が完了しました。あなたはセッションに参加できます。",
  //     "view_mobile_message_reload_page_creation_time_meeting": "あなたはこのページで45秒を超えました。セッションに参加するにはページをリロードしてください。"
  //   }
  video('elvideo'), // コースID: 17726 に見られる
  studySurvey('ltifmane'), // 学修アンケート（コースID: 30013 に見られる）
  ;

  final String modName;

  const CourseContentModuleType(this.modName);

  static final _map = Map.fromEntries(
      CourseContentModuleType.values.map((e) => MapEntry(e.modName, e)));

  static CourseContentModuleType? fromModName(String modName) => _map[modName];
}
