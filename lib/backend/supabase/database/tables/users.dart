import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get num_set_done => getField<int>('num_set_done');
  set num_set_done(int value) => setField<int>('num_set_done', value);

  int get num_exercises_done => getField<int>('num_exercises_done');
  set num_exercises_done(int value) => setField<int>('num_exercises_done', value);

  int get num_exercises_created => getField<int>('num_exercises_created');
  set num_exercises_created(int value) => setField<int>('num_exercises_created', value);

  int get exercises_active => getField<int>('exercises_active');
  set exercises_active(int value) => setField<int>('exercises_active', value);

  String? get user_id => getField<String>('user_id');
  set user_id(String? value) => setField<String>('user_id', value);

  String? get plan => getField<String>('plan');
  set plan(String? value) => setField<String>('plan', value);
}
