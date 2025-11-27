import 'package:flutter_1/app.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Profile Clone',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF000000),
        useMaterial3: true,
        fontFamily: 'InstagramSans',
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 14),
          bodySmall: TextStyle(fontSize: 12, color: Colors.white70),
          titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        dividerColor: Colors.white12,
      ),
      home: const InstagramProfilePage(),
    );
  }
}

class InstagramProfilePage extends StatefulWidget {
  const InstagramProfilePage({super.key});

  @override
  State<InstagramProfilePage> createState() => _InstagramProfilePageState();
}

class _InstagramProfilePageState extends State<InstagramProfilePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tab;

  @override
  void initState() {
    super.initState();
    _tab = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            _buildTopAppBar(context),
            SliverToBoxAdapter(child: _ProfileHeader()),
            SliverToBoxAdapter(child: const SizedBox(height: 12)),
            SliverToBoxAdapter(child: _ProfileActions()),
            SliverToBoxAdapter(child: const SizedBox(height: 12)),
            SliverToBoxAdapter(child: _HighlightsSection()),
            SliverPersistentHeader(
              pinned: false,
              delegate: _TabBarDelegate(
                TabBar(
                  controller: _tab,
                  indicatorColor: Colors.white,
                  onTap: (i) {
                    if (i != 0) {
                      _tab.animateTo(0);
                    }
                  },
                  tabs: const [
                    Tab(icon: Icon(Icons.grid_on_rounded, size: 22)),
                    Tab(icon: Icon(Icons.movie_creation_outlined, size: 24)),
                    Tab(icon: Icon(Icons.person_pin_outlined, size: 24)),
                  ],
                ),
              ),
            ),
          ],
          body: TabBarView(
            controller: _tab,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              _GridTab(),
              Center(
                child: Icon(
                  Icons.movie_creation_outlined,
                  color: Colors.white24,
                  size: 64,
                ),
              ),
              Center(
                child: Icon(
                  Icons.person_pin_outlined,
                  color: Colors.white24,
                  size: 64,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: InstaBottomBar(currentIndex: 4, onTap: (i) {}),
      ),
    );
  }

  SliverAppBar _buildTopAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      pinned: true,
      centerTitle: false,
      titleSpacing: 16,
      leadingWidth: 0,
      leading: const SizedBox(),
      title: Row(
        children: const [
          Text('closure__a', style: TextStyle(fontWeight: FontWeight.w700)),
          SizedBox(width: 6),
          Icon(Icons.keyboard_arrow_down_rounded, size: 20),
          SizedBox(width: 6),
          Icon(Icons.fiber_manual_record, size: 8, color: Colors.red),
        ],
      ),
      actions: [
        IconButton(icon: const Icon(Icons.alternate_email), onPressed: () {}),
        IconButton(icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
        IconButton(icon: const Icon(Icons.menu_rounded), onPressed: () {}),
      ],
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/avatar.jpg'),
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          'Aad',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _StatItem(value: '7', label: 'Postingan'),
                        _StatItem(value: '519', label: 'Pengikut'),
                        _StatItem(value: '878', label: 'Mengikuti'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('Yousoro~', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 4),
          Row(
            children: const [
              Icon(Icons.alternate_email, size: 14, color: Colors.white70),
              SizedBox(width: 6),
              Text('closure__a', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.w800)),
        const SizedBox(height: 2),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

class _ProfileActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _pillButton('Edit profil'),
          const SizedBox(width: 8),
          _pillButton('Bagikan profil'),
          const SizedBox(width: 8),
          _iconPill(const Icon(Icons.person_add, size: 18)),
        ],
      ),
    );
  }

  Widget _pillButton(String text) {
    return Expanded(
      child: Container(
        height: 34,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget _iconPill(Widget icon) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: icon,
    );
  }
}

class _HighlightsSection extends StatelessWidget {
  const _HighlightsSection();

  @override
  Widget build(BuildContext context) {
    final items = List.generate(3, (i) => i);
    return SizedBox(
      height: 106,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _newHighlight();
          }
          return _highlight('assets/images/highlight$index.jpg', index);
        },
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemCount: items.length,
      ),
    );
  }

  Widget _newHighlight() {
    return Column(
      children: [
        Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white24),
          ),
          child: const Icon(Icons.add, size: 28),
        ),
        const SizedBox(height: 6),
        const Text('Baru', style: TextStyle(color: Colors.white70)),
      ],
    );
  }

  Widget _highlight(String url, int i) {
    return Column(
      children: [
        Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/highlight$i.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text('$i', style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}

class _GridTab extends StatelessWidget {
  const _GridTab();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        childAspectRatio: 1,
      ),
      itemCount: 7,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/post$index.jpg', fit: BoxFit.cover),
              if (index == 4)
                const Positioned(
                  right: 6,
                  top: 6,
                  child: Icon(Icons.movie_creation_outlined, size: 18),
                ),
              if (index == 0 || index == 1 || index == 2 || index == 3)
                const Positioned(
                  right: 6,
                  top: 6,
                  child: Icon(Icons.check_box_outline_blank, size: 18),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;
  _TabBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant _TabBarDelegate oldDelegate) => false;
}

class InstaBottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;
  const InstaBottomBar({super.key, this.currentIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    final Color active = Colors.white;
    final Color inactive = Colors.white70;

    Widget item(IconData icon, int i) => Expanded(
      child: InkResponse(
        onTap: () => onTap?.call(i),
        radius: 28,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Icon(
            icon,
            size: 26,
            color: i == currentIndex ? active : inactive,
          ),
        ),
      ),
    );

    Widget profileItem(int i) => Expanded(
      child: InkResponse(
        onTap: () => onTap?.call(i),
        radius: 28,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
            foregroundColor: Colors.transparent,
          ),
        ),
      ),
    );

    return SafeArea(
      top: false,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white12)),
          color: Colors.black,
        ),
        child: Row(
          children: [
            item(Icons.home_outlined, 0),
            item(Icons.search_rounded, 1),
            item(Icons.add_box_outlined, 2),
            item(Icons.movie_creation_outlined, 3),
            profileItem(4),
          ],
        ),
      ),
    );
  }
}
