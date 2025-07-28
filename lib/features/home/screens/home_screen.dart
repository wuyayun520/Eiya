import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/theme/app_theme.dart';
import '../../animal_detail/screens/animal_detail_screen.dart';
import '../../profile/screens/in_app_purchases_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPopularIndex = 0; // 默认选中第一个
  List<AnimalData> _animalList = [];
  bool _isLoading = false;
  int _petCoins = 0; // 宠物金币
  Set<String> _unlockedAnimals = {}; // 已解锁的动物ID集合

  @override
  void initState() {
    super.initState();
    _loadPetCoins();
    _loadUnlockedAnimals();
    _loadAnimalData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 只在页面重新获得焦点时重新加载金币，避免频繁更新
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _loadPetCoins();
      }
    });
  }

  Future<void> _loadPetCoins() async {
    final prefs = await SharedPreferences.getInstance();
    int coins = prefs.getInt('petCoins') ?? 0;
    debugPrint('HomeScreen: Loading pet coins: $coins');
    setState(() {
      _petCoins = coins;
    });
  }

  Future<void> _loadUnlockedAnimals() async {
    final prefs = await SharedPreferences.getInstance();
    final unlockedList = prefs.getStringList('unlockedAnimals') ?? [];
    setState(() {
      _unlockedAnimals = unlockedList.toSet();
    });
  }

  Future<void> _saveUnlockedAnimals() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('unlockedAnimals', _unlockedAnimals.toList());
  }

  Future<void> _deductCoins(int amount) async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint('HomeScreen: Deducting coins: current=$_petCoins, deducting=$amount, new=${_petCoins - amount}');
    setState(() {
      _petCoins -= amount;
    });
    await prefs.setInt('petCoins', _petCoins);
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
    bool isUnlocked = _unlockedAnimals.contains(animal.id);
    
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
          child: Stack(
            children: [
              Padding(
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
                        child: Stack(
                          children: [
                            Image.asset(
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
                            // 未解锁时添加半透明遮罩
                            if (!isUnlocked)
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 16),
                    
                    // 右侧文字信息
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 名称和锁定状态
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  animal.name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isUnlocked ? Colors.black87 : Colors.grey[600],
                                  ),
                                ),
                              ),
                              if (!isUnlocked)
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Text(
                                    '5 Coins',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          
                          const SizedBox(height: 4),
                          
                          // 星级评分（仅已解锁显示）
                          if (isUnlocked)
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
                          
                          // 描述或解锁提示
                          Text(
                            isUnlocked 
                                ? animal.description
                                : 'Unlock to view details and ratings',
                            style: TextStyle(
                              fontSize: 14,
                              color: isUnlocked ? Colors.grey[600] : Colors.grey[500],
                              fontStyle: isUnlocked ? FontStyle.normal : FontStyle.italic,
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
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToAnimalDetail(AnimalData animal) async {
    // 检查是否已解锁
    if (_unlockedAnimals.contains(animal.id)) {
      // 已解锁，直接跳转
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnimalDetailScreen(animal: animal),
        ),
      );
      return;
    }

    // 检查金币是否足够
    if (_petCoins < 5) {
      // 金币不足，显示充值确认弹窗
      _showInsufficientCoinsDialog();
      return;
    }

    // 金币足够，显示解锁确认弹窗
    _showUnlockConfirmDialog(animal);
  }

  void _showInsufficientCoinsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              Icon(Icons.monetization_on, color: AppTheme.primaryColor),
              const SizedBox(width: 8),
              const Text('Insufficient Coins'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You need 5 Pet Coins to unlock this animal.',
                style: TextStyle(fontSize: 16, color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 8),
              Text(
                'Current coins: $_petCoins',
                style: TextStyle(fontSize: 14, color: AppTheme.textSecondary),
              ),
              const SizedBox(height: 16),
              Text(
                'Would you like to purchase more coins?',
                style: TextStyle(fontSize: 14, color: AppTheme.textSecondary),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: AppTheme.textHint)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _navigateToPurchasePage();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Purchase Coins', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  void _showUnlockConfirmDialog(AnimalData animal) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Row(
            children: [
              Icon(Icons.lock_open, color: AppTheme.primaryColor),
              const SizedBox(width: 8),
              const Text('Unlock Animal'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Unlock ${animal.name}?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 8),
              Text(
                'This will cost 5 Pet Coins.',
                style: TextStyle(fontSize: 14, color: AppTheme.textSecondary),
              ),
              const SizedBox(height: 8),
              Text(
                'Current coins: $_petCoins',
                style: TextStyle(fontSize: 14, color: AppTheme.textSecondary),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel', style: TextStyle(color: AppTheme.textHint)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _unlockAnimal(animal);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Unlock', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  Future<void> _unlockAnimal(AnimalData animal) async {
    // 扣除金币
    await _deductCoins(5);
    
    // 添加到已解锁列表
    setState(() {
      _unlockedAnimals.add(animal.id);
    });
    await _saveUnlockedAnimals();
    
    // 显示成功提示
    if (mounted) {
      _showSuccessSnackBar('${animal.name} unlocked successfully! 🎉');
      
      // 跳转到详情页面
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnimalDetailScreen(animal: animal),
        ),
      );
    }
  }

  void _navigateToPurchasePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const InAppPurchasesPage(),
      ),
    ).then((_) {
      // 返回时重新加载金币
      _loadPetCoins();
    });
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: AppTheme.primaryColor,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(16),
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
                  
                  // 金币显示
                  Positioned(
                    top: 10,
                    right: 20,
                    child: GestureDetector(
                      onTap: _navigateToPurchasePage,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.monetization_on,
                              color: AppTheme.primaryColor,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '$_petCoins',
                              style: TextStyle(
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
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