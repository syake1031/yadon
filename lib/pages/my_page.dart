import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('マイページ')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.network(
                      'https://cdn.pixabay.com/photo/2021/06/15/12/17/instagram-6338401_1280.png',
                      width: 60,
                      height: 60,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '7,041',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('投稿'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '4.6億',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('フォロワー'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '99',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('フォロー中'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '#YourToMake',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'help.instagram.com',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )),
                              child: Text(
                                'フォロー中',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                )),
                                child: Text(
                                  'メッセージ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 4),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )),
                      child:
                          Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    ),
                  ],
                ),
              ),

              // ここから下はGridViewを使って画像を表示しています。

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisCount: 3,
                children: images.map((imageURL) {
                  return InstagramPosItem(imageURl: imageURL);
                }).toList(),
              ),
            ],
          ),
        ));
  }
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
