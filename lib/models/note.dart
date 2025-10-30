class Note {
  final int? id;
  final String text;
  String fecha = DateTime.now().toIso8601String();
  String categoria = "general";

  Note({this.id, required this.text,required this.fecha, required this.categoria});

  Map<String, dynamic> toMap() => {'id': id, 'text': text, 'fecha':fecha, 'categoria': categoria};

  factory Note.fromMap (Map<String, dynamic> m) =>
  Note(id: m['id'] as int? , text: m['text'] as String, fecha: m['fecha'] as String, categoria: m['categoria'] as String);
}