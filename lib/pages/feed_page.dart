import 'package:flutter/material.dart';

enum Sports {
  soccer,
  baseball,
  basketball,
  swimming,
}

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('フィールド')),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Image.network(
                'https://appliv-domestic.akamaized.net/v1/760x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                width: 50,
                height: 50,
              ),
              Text(
                'ヤドン',
              ),
              Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'フォロー',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
              PopupMenuButton(
                onSelected: print,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Sports>>[
                  const PopupMenuItem(
                    value: Sports.soccer,
                    child: Text('soccer'),
                  ),
                  const PopupMenuItem(
                    value: Sports.baseball,
                    child: Text('baseball'),
                  ),
                  const PopupMenuItem(
                    value: Sports.basketball,
                    child: Text('basketball'),
                  ),
                  const PopupMenuItem(
                    value: Sports.swimming,
                    child: Text('swimming'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_outline_outlined,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(
            children: [Text('「いいね！」'), Text('704,889件')],
          ),
          Wrap(
            children: [
              const SizedBox(width: 15),
              Text(
                'とても 間抜けで 動きも 鈍い。 時間の 流れを 気にすることなく のんびりと 生きている。 みずべで ボーッとしている。 なにかが シッポに かみついても まる1にち きづかない。',
              ),
            ],
          ),
          Row(
            children: [
              Image.network(
                'https://appliv-domestic.akamaized.net/v1/760x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                width: 50,
                height: 50,
              ),
              Text(
                'ヤドン',
              ),
              Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'フォロー',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
              PopupMenuButton(
                onSelected: print,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Sports>>[
                  const PopupMenuItem(
                    value: Sports.soccer,
                    child: Text('soccer'),
                  ),
                  const PopupMenuItem(
                    value: Sports.baseball,
                    child: Text('baseball'),
                  ),
                  const PopupMenuItem(
                    value: Sports.basketball,
                    child: Text('basketball'),
                  ),
                  const PopupMenuItem(
                    value: Sports.swimming,
                    child: Text('swimming'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_outline_outlined,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(
            children: [Text('「いいね！」'), Text('704,889件')],
          ),
          Wrap(
            children: [
              const SizedBox(width: 15),
              Text(
                'とても 間抜けで 動きも 鈍い。 時間の 流れを 気にすることなく のんびりと 生きている。 みずべで ボーッとしている。 なにかが シッポに かみついても まる1にち きづかない。',
              ),
            ],
          ),
          Row(
            children: [
              Image.network(
                'https://appliv-domestic.akamaized.net/v1/760x/r/articles/129815/13877626_1604328764_041813000_0_1500_1500.jpeg',
                width: 50,
                height: 50,
              ),
              Text(
                'ヤドン',
              ),
              Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'フォロー',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
              PopupMenuButton(
                onSelected: print,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Sports>>[
                  const PopupMenuItem(
                    value: Sports.soccer,
                    child: Text('soccer'),
                  ),
                  const PopupMenuItem(
                    value: Sports.baseball,
                    child: Text('baseball'),
                  ),
                  const PopupMenuItem(
                    value: Sports.basketball,
                    child: Text('basketball'),
                  ),
                  const PopupMenuItem(
                    value: Sports.swimming,
                    child: Text('swimming'),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNC0iV-iKXKWaG_mzqiCnECzKkwc9Pc0sVrA&usqp=CAU',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_outline_outlined,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(
            children: [Text('「いいね！」'), Text('704,889件')],
          ),
          Wrap(
            children: [
              const SizedBox(width: 15),
              Text(
                'とても 間抜けで 動きも 鈍い。 時間の 流れを 気にすることなく のんびりと 生きている。 みずべで ボーッとしている。 なにかが シッポに かみついても まる1にち きづかない。',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
