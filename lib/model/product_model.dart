import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
    Data({
        this.fruit,
    });

    List<Fruit> fruit;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        fruit: List<Fruit>.from(json["data"].map((x) => Fruit.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "fruit": List<dynamic>.from(fruit.map((x) => x.toJson())),
    };
}

class Fruit {
    Fruit({
        this.available,
        this.category,
        this.id,
        this.imgUrl,
        this.name,
        this.price,
        this.productDescription,
        this.stock,
    });

    bool available;
    String category;
    int id;
    String imgUrl;
    String name;
    double price;
    String productDescription;
    int stock;

    factory Fruit.fromJson(Map<String, dynamic> json) => Fruit(
        available: json["available"],
        category: json["category"],
        id: json["id"],
        imgUrl: json["img_url"],
        name: json["name"],
        price: json["price"],
        productDescription: json["product_description"],
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        "available": available,
        "category": category,
        "id": id,
        "img_url": imgUrl,
        "name": name,
        "price": price,
        "product_description": productDescription,
        "stock": stock,
    };



    getImage(){
      if( imgUrl == null){
        return 'https://labs357.com/nuevo/wp-content/themes/consultix/images/no-image-found-360x250.png';
      }else{

        return  '$imgUrl';
      }
    }
}