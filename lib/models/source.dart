import 'package:flck/recipe_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SourceModel with ChangeNotifier {
  RecipeSource _activeSource = sources[0];

  RecipeSource get active => _activeSource;

  set active(RecipeSource newSource) {
    _activeSource = newSource;
    notifyListeners();
  }
}
