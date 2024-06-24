import 'package:flutter/material.dart';

class MyPageTab extends StatefulWidget {
  @override
  _MyPageTabState createState() => _MyPageTabState();
}

class _MyPageTabState extends State<MyPageTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  User _user = User(
      name: 'ヤドン',
      id: 'yadon_810',
      images:
          'https://static.wikia.nocookie.net/pkm/images/b/ba/0079.png/revision/latest?cb=20200226022551&path-prefix=ja');

  final images = [
    'https://static.wikia.nocookie.net/pkm/images/b/ba/0079.png/revision/latest?cb=20200226022551&path-prefix=ja',
    'https://zukan.pokemon.co.jp/zukan-api/up/images/index/0b944c561e07117ec2273399acf227fb.png',
    'https://img.game8.jp/8451905/769236cea99f550693378b0f7db32607.png/show',
    'https://zukan.pokemon.co.jp/zukan-api/up/images/index/a09a4e286e7cedd79a88ee7fa266027e.png',
    'https://zukan.pokemon.co.jp/zukan-api/up/images/index/505d4264077c91953756101379059e88.png',
    'https://static.wikia.nocookie.net/pkm/images/b/ba/0079.png/revision/latest?cb=20200226022551&path-prefix=ja',
    'https://zukan.pokemon.co.jp/zukan-api/up/images/index/0b944c561e07117ec2273399acf227fb.png',
    'https://img.game8.jp/8451905/769236cea99f550693378b0f7db32607.png/show',
    'https://zukan.pokemon.co.jp/zukan-api/up/images/index/a09a4e286e7cedd79a88ee7fa266027e.png',
    'https://zukan.pokemon.co.jp/zukan-api/up/images/index/505d4264077c91953756101379059e88.png',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        leading: TextButton(
          onPressed: () {},
          child: Text(
            '${_user.id}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/media/DkNOdzrX0AAAbVQ.png'),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 17,
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Text('0'),
                          Text('投稿'),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Text('52'),
                          Text('フォロワー'),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          Text('67'),
                          Text('フォロー中'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${_user.name}'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 160,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'プロフィールを編集',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 170,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                    child: Text(
                      'プロフィールをシェア',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                    child: Icon(
                      Icons.person_add,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        color: Colors.white,
                        child: Center(
                          child: SingleChildScrollView(
                            child: GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              primary: false,
                              crossAxisCount: 3,
                              children: images.map((imageURL) {
                                return InstagramPosItem(imageURl: imageURL);
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Center(
                          child: SingleChildScrollView(
                            child: GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              primary: false,
                              crossAxisCount: 3,
                              children: images.map((imageURL) {
                                return InstagramPosItem(imageURl: imageURL);
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String id;
  final String images;
  User({required this.name, required this.id, required this.images});
}

class InstagramPosItem extends StatelessWidget {
  const InstagramPosItem({super.key, required this.imageURl});

  final String imageURl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageURl,
      fit: BoxFit.cover,
    );
  }
}

class InstagramPosItem2 extends StatelessWidget {
  const InstagramPosItem2({super.key, required this.imageURl2});

  final String imageURl2;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageURl2,
      fit: BoxFit.cover,
    );
  }
}
