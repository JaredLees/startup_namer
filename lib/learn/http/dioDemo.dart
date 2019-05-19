import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main(){
  runApp(new MaterialApp(
    title: "dio http 调用demo",
    theme: new ThemeData(
        primaryColor: Colors.purple
    ),
    home: new MovieList(mt : "in_theaters"),
  ));
}

Dio dio = new Dio();

class MovieList extends StatefulWidget {

  // 电影类型
  final String mt;


  MovieList({Key key, @required this.mt}) : super(key: key);

  @override
  _MovieListState createState() {
    return new _MovieListState();
  }
}

class _MovieListState extends State<MovieList>{

  int page = 1;

  int pageSize = 10;

  var mList = [];

  var total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("电影列表"),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon (
            Icons.search
          ),
          onPressed:(){
            getMovieList();
          },
        )
      ],
      ),
      body: ListView.builder(itemBuilder: (context, index){
        var movie = mList[index];
        return Container(
          height: 200.0,
          decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Colors.black12))),
          child: Row(
            children: <Widget>[
              Image.network(movie["images"]["small"], width: 139, height: 180, fit: BoxFit.cover,),
              Container(
                height: 200,
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('电影名称：${movie['title']}'),
                    Text('上映时间：${movie['year']} 年'),
                    Text('电影类型：${movie['genres'].join('，')}'),
                    Text('豆瓣评分：${movie['rating']['average']} 分'),
                    Row(children: <Widget>[
                        Text('主演：', style: TextStyle(fontSize: 12)),
                        Row(children: List.generate(
                            movie['casts'].length,
                                  (int i) => Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 5),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(movie['casts'][i]
                                  ['avatars'] ==
                                      null
                                      ? 'https://img3.doubanio.com/f/movie/8dd0c794499fe925ae2ae89ee30cd225750457b4/pics/movie/celebrity-default-medium.png'
                                      : movie['casts'][i]['avatars']['small']),
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: mList.length,

      ),
    );
  }


  /// 控件创建的时候执行
  @override
  void initState() {
    super.initState();
    getMovieList();
  }

  // widget 获取到当前widget
  // ${}取对象中的某个值
  // $获取变量值
  getMovieList() async {
    int offset = (page - 1) * pageSize;
    var response = await dio.get("http://www.liulongbin.top:3005/api/v2/movie/${widget.mt}?start=$offset&count=$pageSize");

    //服务器返回的数据
    var result = response.data;
    print(result);

    // setState进行list 刷新
    setState(() {
      // 通过dio返回的数据，必须使用[]来访问
      mList = result['subjects'];
      total = result['total'];
    });
  }
}