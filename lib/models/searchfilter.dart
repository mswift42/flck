import 'package:ckan/recipe_service.dart' show SearchFilter;
import 'package:flutter/material.dart';

class SearchFilterModel extends ChangeNotifier {
  SearchFilter _activeFilter = _searchFilters[0];
  static const _searchFilters = [
    SearchFilter("relevanz", ""),
    SearchFilter("bewertung", "o8"),
    SearchFilter("datum", "o3"),
  ];

  SearchFilter get activeFilter => _activeFilter;

  set activeFilter(SearchFilter filter) {
    _activeFilter = filter;
    notifyListeners();
  }
}
