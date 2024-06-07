import '../database.dart';

class SetsTable extends SupabaseTable<SetsRow> {
  @override
  String get tableName => 'Sets';

  @override
  SetsRow createRow(Map<String, dynamic> data) => SetsRow(data);
}

class SetsRow extends SupabaseDataRow {
  SetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExercisesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get weight => getField<int>('weight');
  set weight(int value) => setField<int>('weight', value);

  int get reps => getField<int>('reps');
  set reps(int value) => setField<int>('reps', value);

  int get exercise_id => getField<int>('exercise_id');
  set exercise_id(int value) => setField<int>('exercise_id', value);

  int get index => getField<int>('index');
  set index(int value) => setField<int>('index', value);

  int get volume => getField<int>('volume');
  set volume(int value) => setField<int>('volume', value);

  int get e_index => getField<int>('e_index');
  set e_index(int value) => setField<int>('e_index', value);

  String? get user_id => getField<String>('user_id');
  set user_id(String? value) => setField<String>('user_id', value);
}
