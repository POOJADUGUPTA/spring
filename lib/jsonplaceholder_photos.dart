import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Httpfile extends StatefulWidget {
  const Httpfile({Key? key}) : super(key: key);

  @override
  State<Httpfile> createState() => _HttpfileState();
}

class _HttpfileState extends State<Httpfile> {
  httpGet() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    final response = await http.get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemCount: photosDetails.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        PhotosDetails photosDetailsData = photosDetails[index];
        return GestureDetector(
          onTap: () => print(index),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(photosDetailsData.albumId ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Color(0xff5E5E5E))),
                Text(photosDetailsData.id ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff5E5E5E))),
                Text(photosDetailsData.title ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff5E5E5E))),
                Image(
                    height: 40,
                    width: 40,
                    image: AssetImage(photosDetailsData.url ?? '')),
                const SizedBox(height: 10),
                Image(
                    height: 40,
                    width: 40,
                    image: AssetImage(photosDetailsData.url ?? '')),
              ]),
        );
      },
    )));
  }
}

List<PhotosDetails> photosDetails = [
  PhotosDetails('1', '1', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '2', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '3', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '4', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '5', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '6', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '7', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '8', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '9', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
  PhotosDetails('1', '10', 'Hello Ritesh sir', 'images/greenimage.png',
      'images/greenimage.png'),
];

class PhotosDetails {
  String? albumId;
  String? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotosDetails(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);
}
