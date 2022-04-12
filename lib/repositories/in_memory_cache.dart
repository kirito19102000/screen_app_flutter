import '../models/common_model.dart';
import '../repositories/product_repository.dart';

class InMemoryCache implements ProductRepository {
  final _storage = <int, Model>{};

  @override
  void clear() {
    _storage.clear();
  }

  @override
  Model create() {
    final ids = _storage.keys.toList()..sort();
    final id = (_storage.isEmpty)
        ? 1
        : ids.last + 1; // auto id is here, still feels strange tho
    final model = Model(id: id);
    _storage[id] = model;
    return model;
  }

  @override
  Model? delete(int id) {
    return _storage.remove(id);
  }

  @override
  Model? get(int id) {
    return _storage[id];
  }

  @override
  List<Model> getAll() {
    return _storage.values
        .toList(growable: false); // growable: fixed-length list
  }

  @override
  void update(Model model) {
    _storage[model.id] = model;
  }
}