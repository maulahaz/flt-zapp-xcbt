class NoteModel{
  int id;
  String title, content;
  DateTime updatedAt;

  NoteModel({
    required this.id, 
    required this.title, 
    required this.content, 
    required this.updatedAt});
}