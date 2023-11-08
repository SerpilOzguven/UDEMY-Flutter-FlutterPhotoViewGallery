import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoViewPageGallery extends StatefulWidget {
  const PhotoViewPageGallery({super.key});

  @override
  State<PhotoViewPageGallery> createState() => _PhotoViewPageGalleryState();
}

class _PhotoViewPageGalleryState extends State<PhotoViewPageGallery> {
  final imageList2 = [
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://media.istockphoto.com/photos/young-woman-portrait-in-the-city-picture-id1009749608?k=20&m=1009749608&s=612x612&w=0&h=3bnVp0Y1625uKkSwnp7Uh2_y_prWbgRBH6a_6jRew3g=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjidvk3DPBtaN3SXhqTDVhzve_yJEhYIE9xQ&usqp=CAU',
    'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f64397931669e167fc57eaf%2F0x0.jpg',
    'https://i.insider.com/5cb8b133b8342c1b45130629?width=700',
    'https://static.independent.co.uk/2020/10/30/08/newFile-2.jpg?width=640&auto=webp&quality=75'
  ];

  var imageList = [];

  ImagePicker? imagePicker;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo View Gallery'),
      ),
      body: GridView.builder(
        itemCount: imageList2.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,childAspectRatio: 1),
          itemBuilder: (context,index){
            return Image.network(imageList2[index]);

      }),
    );
  }
}
