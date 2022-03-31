import 'package:flutter/material.dart';

class Publication extends StatefulWidget {
  Publication({Key? key}) : super(key: key);

  @override
  State<Publication> createState() => _PublicationState();
}

class _PublicationState extends State<Publication> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
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
                  tooltip: 'Search',
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ),
              const FadeInImage(
                image: NetworkImage(
                    'https://staticuestudio.blob.core.windows.net/buhomag/2016/03/01195417/pexels-com.jpg'),

                // En esta propiedad colocamos el gif o imagen de carga
                // debe estar almacenado localmente
                placeholder: AssetImage('assets/loading.gif'),

                // En esta propiedad colocamos mediante el objeto BoxFit
                // la forma de acoplar la imagen en su contenedor
                fit: BoxFit.cover,

                // En esta propiedad colocamos el alto de nuestra imagen
                height: 260,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      color: Colors.black26,
                      tooltip: 'Open navigation menu',
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                    const Text(
                      '24',
                      style: TextStyle(color: Colors.black38),
                    ),
                    IconButton(
                      color: Colors.black26,
                      tooltip: 'Search',
                      icon: const Icon(Icons.comment),
                      onPressed: () {},
                    ),
                    const Text(
                      '58',
                      style: TextStyle(color: Colors.black38),
                    ),
                    IconButton(
                      color: Colors.black26,
                      tooltip: 'Search',
                      icon: const Icon(Icons.send),
                      onPressed: () {},
                    ),
                    const Spacer(),
                    IconButton(
                      color: Colors.black26,
                      tooltip: 'Search',
                      icon: const Icon(Icons.bookmark),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
