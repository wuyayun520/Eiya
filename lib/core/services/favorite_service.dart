import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import '../../features/animal_detail/screens/animal_detail_screen.dart';

class FavoriteService {
  static const String _fileName = 'favorites.json';
  static List<AnimalData> _favorites = [];
  static bool _isInitialized = false;

  // 初始化收藏列表
  static Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$_fileName');
      
      if (await file.exists()) {
        final jsonStr = await file.readAsString();
        final List<dynamic> jsonList = json.decode(jsonStr);
        _favorites = jsonList.map((item) => AnimalData.fromJson(item)).toList();
      }
      _isInitialized = true;
    } catch (e) {
      debugPrint('Error initializing favorites: $e');
      _favorites = [];
      _isInitialized = true;
    }
  }

  // 获取所有收藏
  static Future<List<AnimalData>> getFavorites() async {
    await initialize();
    return List.from(_favorites);
  }

  // 添加收藏
  static Future<bool> addFavorite(AnimalData animal) async {
    await initialize();
    
    if (!_favorites.any((item) => item.id == animal.id)) {
      _favorites.add(animal);
      await _saveFavorites();
      return true;
    }
    return false;
  }

  // 移除收藏
  static Future<bool> removeFavorite(String animalId) async {
    await initialize();
    
    final initialLength = _favorites.length;
    _favorites.removeWhere((item) => item.id == animalId);
    
    if (_favorites.length != initialLength) {
      await _saveFavorites();
      return true;
    }
    return false;
  }

  // 检查是否已收藏
  static Future<bool> isFavorite(String animalId) async {
    await initialize();
    return _favorites.any((item) => item.id == animalId);
  }

  // 保存收藏到本地
  static Future<void> _saveFavorites() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$_fileName');
      
      final List<Map<String, dynamic>> jsonList = _favorites.map((animal) => {
        'id': animal.id,
        'name': animal.name,
        'breed': animal.breed,
        'description': animal.description,
        'imageReference': animal.imageReference,
      }).toList();
      
      await file.writeAsString(json.encode(jsonList));
    } catch (e) {
      debugPrint('Error saving favorites: $e');
    }
  }
} 