import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "参数传递demo",
    home: ArgumentPassDemo(products:new List.generate(100, (i)=>new Product("商品${i}", "商品${i}的描述"))),
  ));
}

class ArgumentPassDemo extends StatelessWidget {

  final List<Product> products;

  ArgumentPassDemo({key, @required this.products}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("商品列表"),),
      body: new ListView.builder(itemBuilder: (context, index){
        return new ListTile(
          title: Text(products[index].name, style: TextStyle(fontWeight: FontWeight.w500),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>new ProductDetail(product: products[index],),
            ));
          },
        );
      },
        itemCount: products.length,
      ),
    );
  }
}

class ProductDetail extends StatelessWidget{
  final Product product;

  ProductDetail({key, this.product}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("${product.name}详情")),
      body: Center(
        child: new Text("${product.desc}"),
      ),
    );
  }
}

class Product {
  final String name;
  final String desc;

  Product(this.name, this.desc);
}