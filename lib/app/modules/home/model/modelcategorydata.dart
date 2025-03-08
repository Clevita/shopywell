class ModelCategorydata {
    ModelCategorydata({
        required this.listcategorydata,
    });

    final List<Listcategorydatum> listcategorydata;

    factory ModelCategorydata.fromJson(Map<String, dynamic> json){ 
        return ModelCategorydata(
            listcategorydata: json["listcategorydata"] == null ? [] : List<Listcategorydatum>.from(json["listcategorydata"]!.map((x) => Listcategorydatum.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "listcategorydata": listcategorydata.map((x) => x?.toJson()).toList(),
    };

}

class Listcategorydatum {
    Listcategorydatum({
        required this.id,
        required this.categoryname,
        required this.image,
    });

    final String? id;
    final String? categoryname;
    final String? image;

    factory Listcategorydatum.fromJson(Map<String, dynamic> json){ 
        return Listcategorydatum(
            id: json["id"],
            categoryname: json["categoryname"],
            image: json["image"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "categoryname": categoryname,
        "image": image,
    };

}
