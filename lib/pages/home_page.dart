import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User _user = User(
      name: 'ヤドン',
      id: 'yadon_810',
      images:
          'https://static.wikia.nocookie.net/pkm/images/b/ba/0079.png/revision/latest?cb=20200226022551&path-prefix=ja');

  Post _post = Post(
      imageList: [
        'https://pbs.twimg.com/media/EdsP-n2UEAYQMM3.jpg',
        'https://i.pinimg.com/564x/6f/df/05/6fdf0582fc3ebcbee6455d11117246f6.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlDshc86Cfz-xiNkFiFLXzKS3YFZVBZHc3tg&usqp=CAU',
        'https://www.pokemon.co.jp/ex/xy/pokemon/new/images/img_new_02.png'
      ],
      body:
          'もし飛べないなら走ればいい。走れないのなら歩けばいい。歩けないのであれば、這っていけばいい。何があっても前に進み続けなければならなのです',
      createdAt: DateTime.now().add(Duration(days: -50)));

  PageController _pageController = PageController();

  int currentIndex = 0;

  bool isOpen = false;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/800px-Instagram_logo.svg.png',
            height: 50,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 7.0),
            child: Transform.rotate(
              angle: 11 * pi / 6,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  'https://pbs.twimg.com/media/DkNOdzrX0AAAbVQ.png'),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                    ),
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.blue,
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 14,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'ストーリーズ',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ...List.generate(10, (index) => null)
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(_user.images),
                              ),
                              Text(
                                _user.id,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList()
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(_user.images),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _user.id,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          _user.name,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz_outlined,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _post.imageList.length,
                itemBuilder: (context, i) {
                  return Image.network(_post.imageList[i]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 25,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chat_bubble_outline_outlined,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 7.0),
                                child: Transform.rotate(
                                  angle: 11 * pi / 6,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.send_outlined,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                              children: _post.imageList
                                  .map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1.5),
                                      child: CircleAvatar(
                                        radius: 2.9,
                                        backgroundColor:
                                            (_post.imageList.indexOf(e) ==
                                                    currentIndex)
                                                ? Colors.blue
                                                : Colors.grey,
                                      ),
                                    ),
                                  )
                                  .toList()),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 1.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_outline_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${_user.id} ${_post.body}',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          maxLines: isOpen ? null : 1,
                        ),
                      ),
                      if (!isOpen && '${_user.id} ${_post.body}'.length > 30)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isOpen = true;
                            });
                          },
                          child: Text(
                            '続きを読む',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'コメントを一件を表示',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(_user.images),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'コメントを追加...',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '❤',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '👐',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  Text(
                    getDuration(
                      _post.createdAt,
                    ),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  String getDuration(DateTime _date) {
    Duration _duration = DateTime.now().difference(_date);
    if (_duration.inSeconds < 60) {
      return '${_duration.inSeconds}秒前';
    } else if (_duration.inMinutes < 60) {
      return '${_duration.inMinutes}分前';
    } else if (_duration.inHours < 24) {
      return '${_duration.inHours}時間前';
    } else {
      return '${DateFormat('yyyy年M月d日').format(_date)}';
    }
  }
}

class User {
  final String name;
  final String id;
  final String images;
  User({required this.name, required this.id, required this.images});
}

class Post {
  final List<String> imageList;
  final String body;
  final DateTime createdAt;
  Post({required this.imageList, required this.body, required this.createdAt});
}
