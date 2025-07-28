import 'package:flutter/material.dart';
import '../../../core/services/favorite_service.dart';
import '../../animal_detail/screens/animal_detail_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<AnimalData> _favorites = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final favorites = await FavoriteService.getFavorites();
      setState(() {
        _favorites = favorites;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _favorites = [];
        _isLoading = false;
      });
      debugPrint('Error loading favorites: $e');
    }
  }

  Future<void> _removeFavorite(AnimalData animal) async {
    final success = await FavoriteService.removeFavorite(animal.id);
    if (success) {
      setState(() {
        _favorites.removeWhere((item) => item.id == animal.id);
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${animal.name} removed from favorites'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _navigateToAnimalDetail(AnimalData animal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AnimalDetailScreen(animal: animal),
      ),
    ).then((_) {
      // 返回时重新加载收藏列表
      _loadFavorites();
    });
  }

  Widget _buildFavoriteCard(AnimalData animal) {
    // 为每个动物生成固定的星级（基于id确保每次显示相同）
    int starCount = (animal.id.hashCode % 3) + 3; // 3-5颗星
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // 左侧图片
              GestureDetector(
                onTap: () => _navigateToAnimalDetail(animal),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      animal.imageReference,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: const Icon(
                            Icons.pets,
                            size: 32,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              
              const SizedBox(width: 16),
              
              // 中间文字信息
              Expanded(
                child: GestureDetector(
                  onTap: () => _navigateToAnimalDetail(animal),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 名称
                      Text(
                        animal.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      
                      const SizedBox(height: 4),
                      
                      // 星级评分
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            index < starCount ? Icons.star : Icons.star_border,
                            size: 16,
                            color: index < starCount ? Colors.pink : Colors.grey[400],
                          );
                        }),
                      ),
                      
                      const SizedBox(height: 4),
                      
                      // 描述
                      Text(
                        animal.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              
              // 右侧删除按钮
              IconButton(
                onPressed: () => _removeFavorite(animal),
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5FF),
      appBar: AppBar(
        title: const Text('My Likes'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _favorites.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No favorites yet',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Start exploring animals and add them to your favorites!',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                  itemCount: _favorites.length,
                  itemBuilder: (context, index) {
                    return _buildFavoriteCard(_favorites[index]);
                  },
                ),
    );
  }
} 