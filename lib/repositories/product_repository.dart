import '../models/common_model.dart';

abstract class ProductRepository {
  Model create();

  List<Model> getAll();

  Model? get(int id);

  void update(Model item);

  Model? delete(int id);

  void clear();
}
