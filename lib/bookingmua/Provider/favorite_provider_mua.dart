import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_model_mua.dart';

class FavoriteProviderMua extends ChangeNotifier {
  final List<dynamic> _favorites = [];
  List<dynamic> get favorites => _favorites;
  void toggleFavorite(Product product) {
    if (_favorites.contains(product)) {
      _favorites.remove(product);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product) {
    final isExist = _favorites.contains(product);
    return isExist;
  }

  static FavoriteProviderMua of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProviderMua>(
      context,
      listen: listen,
    );
  }
}
