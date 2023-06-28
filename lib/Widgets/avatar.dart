import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Avatar',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://caracoltv.brightspotcdn.com/dims4/default/fbcef64/2147483647/strip/true/crop/1000x716+0+0/resize/1000x716!/quality/90/?url=http%3A%2F%2Fcaracol-brightspot.s3.amazonaws.com%2F89%2F77%2F3e500a4443d9bf3da37c21639670%2Fcristiano-ronaldo.jpg'),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.greenAccent,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://elcomercio.pe/resizer/Ro5hP4AuTd81AMPmNp7TFO60nqs=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/A2JVKUWB35H2NMRRLNHHPDRXFA.JPG'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
