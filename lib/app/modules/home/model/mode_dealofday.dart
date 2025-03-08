class ModelDealofthedayprd {
    ModelDealofthedayprd({
        required this.listdata,
    });

    final List<Listdatum> listdata;

    factory ModelDealofthedayprd.fromJson(Map<String, dynamic> json){ 
        return ModelDealofthedayprd(
            listdata: json["listdata"] == null ? [] : List<Listdatum>.from(json["listdata"]!.map((x) => Listdatum.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "listdata": listdata.map((x) => x?.toJson()).toList(),
    };

}

class Listdatum {
    Listdatum({
        required this.id,
        required this.title,
        required this.caption,
        required this.image,
        required this.price,
        required this.orgprice,
        required this.discount,
    });

    final String? id;
    final String? title;
    final String? caption;
    final String? image;
    final String? price;
    final String? orgprice;
    final String? discount;

    factory Listdatum.fromJson(Map<String, dynamic> json){ 
        return Listdatum(
            id: json["id"],
            title: json["title"],
            caption: json["caption"],
            image: json["image"],
            price: json["price"],
            orgprice: json["orgprice"],
            discount: json["discount"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "caption": caption,
        "image": image,
        "price": price,
        "orgprice": orgprice,
        "discount": discount,
    };

}
