import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeatY,
        fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight,
          )
        ),
      ),
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
//            padding: EdgeInsets.only(left: 24.0, right: 8.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
//              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 1.0,
                  spreadRadius: -3.0,
                ),
              ],
              shape: BoxShape.circle,
//              gradient: RadialGradient(
//                colors: [
//                  Color.fromRGBO(7, 102, 255, 1.0),
//                  Color.fromRGBO(3, 28, 128, 1.0),
//                ],
//              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'xingzou',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17.0,
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget{

  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,

  );
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。 人生得意须尽欢，莫使金樽空对月。 天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}