import '../database.dart';

class ExercisesTable extends SupabaseTable<ExercisesRow> {
  @override
  String get tableName => 'Exercises';

  @override
  ExercisesRow createRow(Map<String, dynamic> data) => ExercisesRow(data);
}

class ExercisesRow extends SupabaseDataRow {
  ExercisesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExercisesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int get num_sets => getField<int>('num_sets');
  set num_sets(int value) => setField<int>('num_sets', value);

  int get num_done => getField<int>('num_done');
  set num_done(int value) => setField<int>('num_done', value);

  String? get user_id => getField<String>('user_id');
  set user_id(String? value) => setField<String>('user_id', value);
}
