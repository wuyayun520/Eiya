import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/services/favorite_service.dart';

class AnimalData {
  final String id;
  final String name;
  final String breed;
  final String description;
  final String imageReference;

  AnimalData({
    required this.id,
    required this.name,
    required this.breed,
    required this.description,
    required this.imageReference,
  });

  factory AnimalData.fromJson(Map<String, dynamic> json) {
    return AnimalData(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      breed: json['breed'] ?? json['species'] ?? '',
      description: json['description'] ?? '',
      imageReference: json['image_reference'] ?? '',
    );
  }
}

class AnimalDetailScreen extends StatefulWidget {
  final AnimalData animal;

  const AnimalDetailScreen({
    super.key,
    required this.animal,
  });

  @override
  State<AnimalDetailScreen> createState() => _AnimalDetailScreenState();
}

class _AnimalDetailScreenState extends State<AnimalDetailScreen> {
  bool _isFavorite = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkFavoriteStatus();
  }

  Future<void> _checkFavoriteStatus() async {
    try {
      final isFavorite = await FavoriteService.isFavorite(widget.animal.id);
      setState(() {
        _isFavorite = isFavorite;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isFavorite = false;
        _isLoading = false;
      });
      debugPrint('Error checking favorite status: $e');
    }
  }

  Future<void> _toggleFavorite() async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      if (_isFavorite) {
        // 取消收藏
        final success = await FavoriteService.removeFavorite(widget.animal.id);
        if (success) {
          setState(() {
            _isFavorite = false;
            _isLoading = false;
          });
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${widget.animal.name} removed from favorites'),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        }
      } else {
        // 添加收藏
        final success = await FavoriteService.addFavorite(widget.animal);
        if (success) {
          setState(() {
            _isFavorite = true;
            _isLoading = false;
          });
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${widget.animal.name} added to favorites'),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        }
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      debugPrint('Error toggling favorite: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5FF),
      appBar: AppBar(
        title: Text(widget.animal.name),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          // 收藏按钮
          IconButton(
            onPressed: _isLoading ? null : _toggleFavorite,
            icon: _isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: _isFavorite ? Colors.red : Colors.grey[600],
                    size: 24,
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 动物图片
            Container(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                widget.animal.imageReference,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.pets,
                      size: 64,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
            
            // 动物信息
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 名称
                  Text(
                    widget.animal.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // 品种
                  Text(
                    widget.animal.breed,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // 描述
                  Text(
                    'Description',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  Text(
                    widget.animal.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // 护理信息
                  _buildCareSection('Care Instructions', [
                    'Regular grooming and maintenance',
                    'Proper nutrition and feeding schedule',
                    'Health monitoring and veterinary care',
                    'Exercise and environmental enrichment',
                  ]),
                  
                  const SizedBox(height: 20),
                  
                  // 特征信息
                  _buildCareSection('Characteristics', [
                    'Temperament and behavior',
                    'Physical characteristics',
                    'Special care requirements',
                    'Lifespan and health considerations',
                  ]),
                  
                  // 底部间距，避免被悬浮tabbar挡住
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCareSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        
        const SizedBox(height: 12),
        
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 6,
                height: 6,
                margin: const EdgeInsets.only(top: 8, right: 12),
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }
} 