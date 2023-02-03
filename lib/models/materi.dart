// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MateriModel extends Equatable {
  final String name;

  const MateriModel({
    required this.name,
  });

  static List<MateriModel> generatedMateri() {
    return [
      MateriModel(name: 'Pecahan'),
      MateriModel(name: 'FPB dan KPK'),
      MateriModel(name: 'Pengukuran Panjang dan Berat'),
      MateriModel(name: 'Keliling dan Luas Bangun Datar'),
      MateriModel(name: 'Statistika'),
      MateriModel(name: 'Pengukuran Sudut'),
    ];
  }

  @override
  List<Object?> get props => [name];
}
