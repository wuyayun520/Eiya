import 'package:flutter/material.dart';
import 'dart:convert';
import '../../../core/theme/app_theme.dart';
import '../../animal_detail/screens/animal_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPopularIndex = 0; // 默认选中第一个
  List<AnimalData> _animalList = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadAnimalData();
  }

  Future<void> _loadAnimalData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      String jsonString = '';
      String category = '';
      
      switch (_selectedPopularIndex) {
        case 0: // Rabbit
          jsonString = await DefaultAssetBundle.of(context).loadString('assets/Animal/rabbit_information.json');
          category = 'rabbits';
          break;
        case 1: // Turtle
          jsonString = await DefaultAssetBundle.of(context).loadString('assets/Animal/turtle_information.json');
          category = 'turtles';
          break;
        case 2: // Fish
          jsonString = await DefaultAssetBundle.of(context).loadString('assets/Animal/fish_information.json');
          category = 'fish';
          break;
        case 3: // Cats
          jsonString = await DefaultAssetBundle.of(context).loadString('assets/Animal/cat_information.json');
          category = 'cats';
          break;
        case 4: // Dogs
          jsonString = await DefaultAssetBundle.of(context).loadString('assets/Animal/dog_information.json');
          category = 'dogs';
          break;
      }

      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> animals = jsonData[category] ?? [];
      
      setState(() {
        _animalList = animals.map((animal) => AnimalData.fromJson(animal)).toList();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _animalList = [];
        _isLoading = false;
      });
      debugPrint('Error loading animal data: $e');
    }
  }

  void _onPopularOptionChanged(int index) {
    setState(() {
      _selectedPopularIndex = index;
    });
    _loadAnimalData();
  }

  String _getCategoryName() {
    switch (_selectedPopularIndex) {
      case 0:
        return 'Rabbit';
      case 1:
        return 'Turtle';
      case 2:
        return 'Fish';
      default:
        return '';
    }
  }

  Widget _buildAnimalCard(AnimalData animal) {
    // 为每个动物生成固定的星级（基于id确保每次显示相同）
    int starCount = (animal.id.hashCode % 3) + 3; // 3-5颗星
    
    return GestureDetector(
      onTap: () {
        _navigateToAnimalDetail(animal);
      },
      child: Container(
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
                Container(
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
                
                const SizedBox(width: 16),
                
                // 右侧文字信息
                Expanded(
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToAnimalDetail(AnimalData animal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AnimalDetailScreen(animal: animal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 导航栏高度的间距
            SizedBox(height:  kToolbarHeight),
            
            // 顶部图片和文字区域
            Container(
              width: double.infinity,
              height: 50,
              child: Stack(
                children: [
                  // 背景图片
                  Image.asset(
                    'assets/images/eiya_home_topbg.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppTheme.primaryColor,
                        child: Center(
                          child: Icon(
                            Icons.image_not_supported,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      );
                    },
                  ),
                  
                ],
              ),
            ),
            
            // 间距
            const SizedBox(height: 10),
            
            // 两个选项卡片
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // Cats 卡片
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _onPopularOptionChanged(3); // Cats对应索引3
                      },
                      child: Container(
                        height: 200,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 标题区域
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Cats',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Cute Daily',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            // 图片区域
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [Color(0xFFFFE4B5), Color(0xFFFFB6C1)],
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/eiya_home_cat.png',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Icon(
                                          Icons.pets,
                                          size: 48,
                                          color: Colors.grey,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  // Dogs 卡片
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _onPopularOptionChanged(4); // Dogs对应索引4
                      },
                      child: Container(
                        height: 200,
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 标题区域
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Dogs',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Lively Pal',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            // 图片区域
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [Color(0xFFE6E6FA), Color(0xFF9370DB)],
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/eiya_home_dog.png',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Icon(
                                          Icons.pets,
                                          size: 48,
                                          color: Colors.grey,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // 间距
            const SizedBox(height: 24),
            
            // Popular 图片
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 110,
                  height: 24,
                  child: Image.asset(
                    'assets/images/eiya_home_popular.png',
                    fit: BoxFit.contain,
                    alignment: Alignment.centerLeft,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 24,
                        color: Colors.grey[300],
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            
            // 间距
            const SizedBox(height: 20),
            
            // 三个选项卡片
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // Rabbit 选项
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _onPopularOptionChanged(0);
                      },
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            // 图片区域
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFE6E6FA),
                                  border: _selectedPopularIndex == 0
                                      ? Border.all(color: AppTheme.primaryColor, width: 2)
                                      : null,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/eiya_home_rabbits.png',
                                    fit: BoxFit.contain,
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
                            const SizedBox(height: 8),
                            // 文字
                            Text(
                              'Rabbit',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: _selectedPopularIndex == 0 ? FontWeight.bold : FontWeight.normal,
                                color: _selectedPopularIndex == 0 ? AppTheme.primaryColor : Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  // Turtle 选项
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _onPopularOptionChanged(1);
                      },
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          children: [
                            // 图片区域
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFFFE4B5),
                                  border: _selectedPopularIndex == 1
                                      ? Border.all(color: AppTheme.primaryColor, width: 2)
                                      : null,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/eiya_home_turtle.png',
                                    fit: BoxFit.contain,
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
                            const SizedBox(height: 8),
                            // 文字
                            Text(
                              'Turtle',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: _selectedPopularIndex == 1 ? FontWeight.bold : FontWeight.normal,
                                color: _selectedPopularIndex == 1 ? AppTheme.primaryColor : Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  // Goldfish 选项
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _onPopularOptionChanged(2);
                      },
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            // 图片区域
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFF87CEEB),
                                  border: _selectedPopularIndex == 2
                                      ? Border.all(color: AppTheme.primaryColor, width: 2)
                                      : null,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/eiya_home_goldfish.png',
                                    fit: BoxFit.contain,
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
                            const SizedBox(height: 8),
                            // 文字
                            Text(
                              'Fish',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: _selectedPopularIndex == 2 ? FontWeight.bold : FontWeight.normal,
                                color: _selectedPopularIndex == 2 ? AppTheme.primaryColor : Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // 数据列表
            if (_animalList.isNotEmpty) ...[
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _isLoading 
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: _animalList.length,
                      itemBuilder: (context, index) {
                        return _buildAnimalCard(_animalList[index]);
                      },
                    ),
              ),
              // 底部间距，避免被悬浮tabbar挡住
              const SizedBox(height: 80),
            ],
          ],
        ),
      ),
    );
  }
} 