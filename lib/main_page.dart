import 'package:flutter/material.dart';
import 'package:cfnews/assets.dart';
import 'package:cfnews/ui/custom_app_bar.dart';
import 'package:cfnews/ui/custom_bottom_bar.dart';
import 'package:cfnews/ui/feeds/feeds_page.dart';
import 'package:cfnews/ui/home/home_page.dart';
import 'package:cfnews/ui/saved/saved_page.dart';

class MainPage extends StatefulWidget {
  const MainPage();

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _tabSelected(int newIndex) {
    setState(() {
      _selectedTab = newIndex;
      _tabController.index = newIndex;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget _buildTabContent() {
    return Positioned.fill(
      child: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          FeedsPage(),
          SavedPage(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final backgroundImage = Image.asset(
      ImageAssets.backgroundImage,
      colorBlendMode: BlendMode.overlay,
      color: Colors.black54,
      fit: BoxFit.cover,
    );

    final content = Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(DimensionsAssets.customAppBarHeight),
      ),
      body: Stack(
        children: [
          _buildTabContent(),
          _BottomTabs(
            selectedTab: _selectedTab,
            onTap: _tabSelected,
          ),
        ],
      ),
    );

    return Stack(
      fit: StackFit.expand,
      children: [
        backgroundImage,
        content,
      ],
    );
  }
}

class _BottomTabs extends StatelessWidget {
  _BottomTabs({
    @required this.selectedTab,
    @required this.onTap,
  });

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomBottomBar(
        currentIndex: selectedTab,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: const Icon(Icons.home),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            title: Text('Feeds'),
            icon: const Icon(Icons.create_new_folder),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            title: Text('Saved'),
            icon: const Icon(Icons.save),
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
