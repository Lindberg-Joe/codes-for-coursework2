import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(App());

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FirstScreenState();
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //注意这里
      title: 'Title',
      home: FirstScreen(),
    );
  }
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Column(
          children: [ ImageButton(
          normalImage: Image(
            image: AssetImage('image/ab.png'),
            width: 500,
            height: 200,
          ),
          pressedImage: Image(
            image: AssetImage('image/ab.png'),
            width: 500,
            height: 200,
          ),
          title: "推 荐 视 频",
          //文本是否为空
          normalStyle: TextStyle(
              color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
          pressedStyle: TextStyle(
              color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen();
            }));
          },
      ),
            ImageButton(
                normalImage: Image(
                  image: AssetImage('image/i.png'),
                  width: 500,
                  height: 200,
                ),
                pressedImage: Image(
                  image: AssetImage('image/i.png'),
                  width: 500,
                  height: 200,
                ),
                title: "推 荐 书 籍",
                //文本是否为空
                normalStyle: TextStyle(
                    color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
                pressedStyle: TextStyle(
                    color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ThirdScreen();
               }
               )
               );}),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            ),
    ]
      ),
    );
  }
}

class SecondScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondScreenState();
  }
}

class _SecondScreenState extends  State<SecondScreen> {
  @override

  var _status = 'Ready';

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      setState(() {
        _status = 'Unable to launch url $url';
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
          children: [ ImageButton(
          normalImage: Image(
            image: AssetImage('image/t.png'),
            width: 500,
            height: 200,
          ),
          pressedImage: Image(
            image: AssetImage('image/t.png'),
            width: 500,
            height: 200,
          ),
          title: "推 荐 视 频",
          //文本是否为空
          normalStyle: TextStyle(
              color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
          pressedStyle: TextStyle(
              color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
          onPressed: () {
                var url = 'https://www.bilibili.com/video/BV1jz411b7Lj';
                _launchUrl('$url');
            }),
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("back"),
        ),
      ]
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ThirdScreenState();
  }
}

class _ThirdScreenState extends  State<ThirdScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Column(
          children: [ ImageButton(
              normalImage: Image(
                image: AssetImage('image/n.png'),
                width: 500,
                height: 200,
              ),
              pressedImage: Image(
                image: AssetImage('image/n.png'),
                width: 500,
                height: 200,
              ),
              title: "书 籍 1",
              //文本是否为空
              normalStyle: TextStyle(
                  color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
              pressedStyle: TextStyle(
                  color: Colors.black, fontSize: 14, decoration: TextDecoration.none),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FourthScreen();
                }
                )
                );}),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            ),
          ]
      ),
    );
  }
}

class FourthScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FourthScreenState();
  }
}

class _FourthScreenState extends  State<FourthScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Screen"),
      ),
      body: Column(
          children: [ Image.asset("image/b1.png",height: 200,),

        Text(
          '从本书当中，你将学会如何把这个方法运用在人生诸如财富、健康、亲密关系等各个层面。它必将惠及所有追求改变的人们。通过运用这个神奇的疗法，你终将遇见心想事成的自己。'

        ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            ),
          ]
      ),
    );
  }
}

class SimpleImageButton extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SimpleImageButtonState();
  }
}

class _SimpleImageButtonState extends State<SimpleImageButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child:ImageButton(
            normalImage: Image(
              image: AssetImage('image/ab.png'),
              width: 500,
              height: 200,
            ),
            pressedImage: Image(
              image: AssetImage('image/ab.png'),
              width: 500,
              height: 200,
            ),
            title: "推 荐 视 频",
            //文本是否为空
            normalStyle: TextStyle(
                color: Colors.white, fontSize: 14, decoration: TextDecoration.none),
            pressedStyle: TextStyle(
                color: Colors.white, fontSize: 14, decoration: TextDecoration.none),
            onPressed: (){
              print("clicked");
            },
          ),
        )
    );
  }
}


class ImageButton extends StatefulWidget {
  //常规状态
  final Image normalImage;

  //按下状态
  final Image pressedImage;

  //按钮文本
  final String title;

  //常规文本TextStyle
  final TextStyle normalStyle;

  //按下文本TextStyle
  final TextStyle pressedStyle;

  //按下回调
  final Function onPressed;

  //文本与图片之间的距离
  final double padding;

  ImageButton({
    Key key,
    @required this.normalImage,
    @required this.pressedImage,
    @required this.onPressed,
    this.title,
    this.normalStyle,
    this.pressedStyle,
    this.padding,
  }) : super(key: key);

  @override
  _ImageButtonState createState() {
    // TODO: implement createState
    return _ImageButtonState();
  }
}

class _ImageButtonState extends State<ImageButton> {
  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double padding = widget.padding == null ? 5 : widget.padding;
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          isPressed ? widget.pressedImage : widget.normalImage, //不同状态显示不同的Image
          widget.title.isNotEmpty
              ? Padding(padding: EdgeInsets.fromLTRB(0, padding, 0, 0))
              : Container(),
          widget.title.isNotEmpty //文本是否为空
              ? Text(
            widget.title,
            style: isPressed ? widget.pressedStyle : widget.normalStyle,
          )
              : Container(),
        ],
      ),
      onTap: widget.onPressed,
      onTapDown: (d) {
        //按下，更改状态
        setState(() {
          isPressed = true;
        });
      },
      onTapCancel: () {
        //取消，更改状态
        setState(() {
          isPressed = false;
        });
      },
      onTapUp: (d) {
        //抬起，更改按下状态
        setState(() {
          isPressed = false;
        });
      },
    );
  }
}
