import 'package:flutter/material.dart';
import 'package:gallery_picker/gallery_picker.dart';

class MultipleImages extends StatefulWidget {
  const MultipleImages({super.key});

  @override
  State<MultipleImages> createState() => _MultipleImagesState();
}

class _MultipleImagesState extends State<MultipleImages> {
  List<MediaFile> _selectedFiles = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultipleImage'),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
        itemCount: _selectedFiles.length,
        itemBuilder: (context, index) {
        MediaFile files = _selectedFiles[index];
        print('files : ${files.toString()}');
        if(files.isImage){
          return PhotoProvider(media: files);
        }
        else if(files.isVideo){
          return VideoProvider(media: files);
        }
        return null;
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          List<MediaFile> mediaFiles = await GalleryPicker.pickMedia(
              context: context,
              singleMedia: false) ?? [];
          setState(() {
            _selectedFiles = mediaFiles;
            print('selected files :  $_selectedFiles');
          });
        },
        child: Icon(Icons.image),),
    );
  }
}
