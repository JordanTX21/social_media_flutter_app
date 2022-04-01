import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:social_media_flutter_app/src/Utils/MyColors.dart';

class Publication extends StatefulWidget {
  Publication({Key? key}) : super(key: key);

  @override
  State<Publication> createState() => _PublicationState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class _PublicationState extends State<Publication> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 5,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://martialartssystem.com/wp-content/themes/cera-child/assets/images/avatars/user-avatar.png'),
            ),
            title: const Text('UserName'),
            subtitle: Text(
              '@username',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            trailing: IconButton(
              padding: const EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              tooltip: 'Search',
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          CarouselSlider.builder(
            carouselController: _controller,
            itemCount: imgList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    FadeInImage(
              image: NetworkImage(imgList[itemIndex]),

              // En esta propiedad colocamos el gif o imagen de carga
              // debe estar almacenado localmente
              placeholder: const AssetImage('assets/loading.gif'),

              // En esta propiedad colocamos mediante el objeto BoxFit
              // la forma de acoplar la imagen en su contenedor
              fit: BoxFit.cover,

              // En esta propiedad colocamos el alto de nuestra imagen
              height: 260,
            ),
            options: CarouselOptions(
                enableInfiniteScroll: false,
                height: 260,
                viewportFraction: 1.0,
                autoPlay: false,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 4.0,
                  height: 4.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? MyColors.secondaryColor
                              : MyColors.primaryColor)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
              top: 0,
              bottom: 5,
            ),
            child: Row(
              children: <Widget>[
                IconButton(
                  color: Colors.black26,
                  tooltip: 'Fav',
                  icon: const Icon(Icons.favorite),
                  onPressed: () {},
                ),
                const Text(
                  '24',
                  style: TextStyle(color: Colors.black38),
                ),
                IconButton(
                  color: Colors.black26,
                  tooltip: 'Comment',
                  icon: const Icon(Icons.comment),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Comments');
                  },
                ),
                const Text(
                  '58',
                  style: TextStyle(color: Colors.black38),
                ),
                IconButton(
                  color: Colors.black26,
                  tooltip: 'Send',
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                ),
                const Spacer(),
                IconButton(
                  color: Colors.black26,
                  tooltip: 'Save',
                  icon: const Icon(Icons.bookmark),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
