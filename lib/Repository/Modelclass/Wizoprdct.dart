
class Wizoprdct {
  String? status;
  String? requestId;
  Data? data;

  Wizoprdct({this.status, this.requestId, this.data});

  Wizoprdct.fromJson(Map<String, dynamic> json) {
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["request_id"] is String) {
      requestId = json["request_id"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  static List<Wizoprdct> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Wizoprdct.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["request_id"] = requestId;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }

  Wizoprdct copyWith({
    String? status,
    String? requestId,
    Data? data,
  }) => Wizoprdct(
    status: status ?? this.status,
    requestId: requestId ?? this.requestId,
    data: data ?? this.data,
  );
}

class Data {
  String? asin;
  String? productTitle;
  String? productPrice;
  dynamic productOriginalPrice;
  String? currency;
  String? country;
  String? productStarRating;
  int? productNumRatings;
  String? productUrl;
  String? productPhoto;
  int? productNumOffers;
  String? productAvailability;
  bool? isBestSeller;
  bool? isAmazonChoice;
  bool? isPrime;
  bool? climatePledgeFriendly;
  String? salesVolume;
  List<String>? aboutProduct;
  String? productDescription;
  ProductInformation? productInformation;
  List<String>? productPhotos;
  ProductDetails? productDetails;
  String? customersSay;
  List<CategoryPath>? categoryPath;
  ProductVariations? productVariations;

  Data({this.asin, this.productTitle, this.productPrice, this.productOriginalPrice, this.currency, this.country, this.productStarRating, this.productNumRatings, this.productUrl, this.productPhoto, this.productNumOffers, this.productAvailability, this.isBestSeller, this.isAmazonChoice, this.isPrime, this.climatePledgeFriendly, this.salesVolume, this.aboutProduct, this.productDescription, this.productInformation,  this.productPhotos, this.productDetails, this.customersSay, this.categoryPath, this.productVariations});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["asin"] is String) {
      asin = json["asin"];
    }
    if(json["product_title"] is String) {
      productTitle = json["product_title"];
    }
    if(json["product_price"] is String) {
      productPrice = json["product_price"];
    }
    productOriginalPrice = json["product_original_price"];
    if(json["currency"] is String) {
      currency = json["currency"];
    }
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["product_star_rating"] is String) {
      productStarRating = json["product_star_rating"];
    }
    if(json["product_num_ratings"] is num) {
      productNumRatings = (json["product_num_ratings"] as num).toInt();
    }
    if(json["product_url"] is String) {
      productUrl = json["product_url"];
    }
    if(json["product_photo"] is String) {
      productPhoto = json["product_photo"];
    }
    if(json["product_num_offers"] is num) {
      productNumOffers = (json["product_num_offers"] as num).toInt();
    }
    if(json["product_availability"] is String) {
      productAvailability = json["product_availability"];
    }
    if(json["is_best_seller"] is bool) {
      isBestSeller = json["is_best_seller"];
    }
    if(json["is_amazon_choice"] is bool) {
      isAmazonChoice = json["is_amazon_choice"];
    }
    if(json["is_prime"] is bool) {
      isPrime = json["is_prime"];
    }
    if(json["climate_pledge_friendly"] is bool) {
      climatePledgeFriendly = json["climate_pledge_friendly"];
    }
    if(json["sales_volume"] is String) {
      salesVolume = json["sales_volume"];
    }
    if(json["about_product"] is List) {
      aboutProduct = json["about_product"] == null ? null : List<String>.from(json["about_product"]);
    }
    if(json["product_description"] is String) {
      productDescription = json["product_description"];
    }
    if(json["product_information"] is Map) {
      productInformation = json["product_information"] == null ? null : ProductInformation.fromJson(json["product_information"]);
    }

    if(json["product_photos"] is List) {
      productPhotos = json["product_photos"] == null ? null : List<String>.from(json["product_photos"]);
    }
    if(json["product_details"] is Map) {
      productDetails = json["product_details"] == null ? null : ProductDetails.fromJson(json["product_details"]);
    }
    if(json["customers_say"] is String) {
      customersSay = json["customers_say"];
    }
    if(json["category_path"] is List) {
      categoryPath = json["category_path"] == null ? null : (json["category_path"] as List).map((e) => CategoryPath.fromJson(e)).toList();
    }
    if(json["product_variations"] is Map) {
      productVariations = json["product_variations"] == null ? null : ProductVariations.fromJson(json["product_variations"]);
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Data.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["asin"] = asin;
    _data["product_title"] = productTitle;
    _data["product_price"] = productPrice;
    _data["product_original_price"] = productOriginalPrice;
    _data["currency"] = currency;
    _data["country"] = country;
    _data["product_star_rating"] = productStarRating;
    _data["product_num_ratings"] = productNumRatings;
    _data["product_url"] = productUrl;
    _data["product_photo"] = productPhoto;
    _data["product_num_offers"] = productNumOffers;
    _data["product_availability"] = productAvailability;
    _data["is_best_seller"] = isBestSeller;
    _data["is_amazon_choice"] = isAmazonChoice;
    _data["is_prime"] = isPrime;
    _data["climate_pledge_friendly"] = climatePledgeFriendly;
    _data["sales_volume"] = salesVolume;
    if(aboutProduct != null) {
      _data["about_product"] = aboutProduct;
    }
    _data["product_description"] = productDescription;
    if(productInformation != null) {
      _data["product_information"] = productInformation?.toJson();
    }

    if(productPhotos != null) {
      _data["product_photos"] = productPhotos;
    }
    if(productDetails != null) {
      _data["product_details"] = productDetails?.toJson();
    }
    _data["customers_say"] = customersSay;
    if(categoryPath != null) {
      _data["category_path"] = categoryPath?.map((e) => e.toJson()).toList();
    }
    if(productVariations != null) {
      _data["product_variations"] = productVariations?.toJson();
    }
    return _data;
  }

  Data copyWith({
    String? asin,
    String? productTitle,
    String? productPrice,
    dynamic productOriginalPrice,
    String? currency,
    String? country,
    String? productStarRating,
    int? productNumRatings,
    String? productUrl,
    String? productPhoto,
    int? productNumOffers,
    String? productAvailability,
    bool? isBestSeller,
    bool? isAmazonChoice,
    bool? isPrime,
    bool? climatePledgeFriendly,
    String? salesVolume,
    List<String>? aboutProduct,
    String? productDescription,
    ProductInformation? productInformation,
    ratingDistribution,
    List<String>? productPhotos,
    ProductDetails? productDetails,
    String? customersSay,
    List<CategoryPath>? categoryPath,
    ProductVariations? productVariations,
  }) => Data(
    asin: asin ?? this.asin,
    productTitle: productTitle ?? this.productTitle,
    productPrice: productPrice ?? this.productPrice,
    productOriginalPrice: productOriginalPrice ?? this.productOriginalPrice,
    currency: currency ?? this.currency,
    country: country ?? this.country,
    productStarRating: productStarRating ?? this.productStarRating,
    productNumRatings: productNumRatings ?? this.productNumRatings,
    productUrl: productUrl ?? this.productUrl,
    productPhoto: productPhoto ?? this.productPhoto,
    productNumOffers: productNumOffers ?? this.productNumOffers,
    productAvailability: productAvailability ?? this.productAvailability,
    isBestSeller: isBestSeller ?? this.isBestSeller,
    isAmazonChoice: isAmazonChoice ?? this.isAmazonChoice,
    isPrime: isPrime ?? this.isPrime,
    climatePledgeFriendly: climatePledgeFriendly ?? this.climatePledgeFriendly,
    salesVolume: salesVolume ?? this.salesVolume,
    aboutProduct: aboutProduct ?? this.aboutProduct,
    productDescription: productDescription ?? this.productDescription,
    productInformation: productInformation ?? this.productInformation,
    productPhotos: productPhotos ?? this.productPhotos,
    productDetails: productDetails ?? this.productDetails,
    customersSay: customersSay ?? this.customersSay,
    categoryPath: categoryPath ?? this.categoryPath,
    productVariations: productVariations ?? this.productVariations,
  );
}

class ProductVariations {
  List<Size>? size;
  List<Color>? color;
  List<ServiceProvider>? serviceProvider;

  ProductVariations({this.size, this.color, this.serviceProvider});

  ProductVariations.fromJson(Map<String, dynamic> json) {
    if(json["size"] is List) {
      size = json["size"] == null ? null : (json["size"] as List).map((e) => Size.fromJson(e)).toList();
    }
    if(json["color"] is List) {
      color = json["color"] == null ? null : (json["color"] as List).map((e) => Color.fromJson(e)).toList();
    }
    if(json["service_provider"] is List) {
      serviceProvider = json["service_provider"] == null ? null : (json["service_provider"] as List).map((e) => ServiceProvider.fromJson(e)).toList();
    }
  }

  static List<ProductVariations> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ProductVariations.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(size != null) {
      _data["size"] = size?.map((e) => e.toJson()).toList();
    }
    if(color != null) {
      _data["color"] = color?.map((e) => e.toJson()).toList();
    }
    if(serviceProvider != null) {
      _data["service_provider"] = serviceProvider?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  ProductVariations copyWith({
    List<Size>? size,
    List<Color>? color,
    List<ServiceProvider>? serviceProvider,
  }) => ProductVariations(
    size: size ?? this.size,
    color: color ?? this.color,
    serviceProvider: serviceProvider ?? this.serviceProvider,
  );
}

class ServiceProvider {
  String? asin;
  String? value;
  bool? isAvailable;

  ServiceProvider({this.asin, this.value, this.isAvailable});

  ServiceProvider.fromJson(Map<String, dynamic> json) {
    if(json["asin"] is String) {
      asin = json["asin"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["is_available"] is bool) {
      isAvailable = json["is_available"];
    }
  }

  static List<ServiceProvider> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ServiceProvider.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["asin"] = asin;
    _data["value"] = value;
    _data["is_available"] = isAvailable;
    return _data;
  }

  ServiceProvider copyWith({
    String? asin,
    String? value,
    bool? isAvailable,
  }) => ServiceProvider(
    asin: asin ?? this.asin,
    value: value ?? this.value,
    isAvailable: isAvailable ?? this.isAvailable,
  );
}

class Color {
  String? asin;
  String? value;
  String? photo;
  bool? isAvailable;

  Color({this.asin, this.value, this.photo, this.isAvailable});

  Color.fromJson(Map<String, dynamic> json) {
    if(json["asin"] is String) {
      asin = json["asin"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["photo"] is String) {
      photo = json["photo"];
    }
    if(json["is_available"] is bool) {
      isAvailable = json["is_available"];
    }
  }

  static List<Color> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Color.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["asin"] = asin;
    _data["value"] = value;
    _data["photo"] = photo;
    _data["is_available"] = isAvailable;
    return _data;
  }

  Color copyWith({
    String? asin,
    String? value,
    String? photo,
    bool? isAvailable,
  }) => Color(
    asin: asin ?? this.asin,
    value: value ?? this.value,
    photo: photo ?? this.photo,
    isAvailable: isAvailable ?? this.isAvailable,
  );
}

class Size {
  String? asin;
  String? value;
  bool? isAvailable;

  Size({this.asin, this.value, this.isAvailable});

  Size.fromJson(Map<String, dynamic> json) {
    if(json["asin"] is String) {
      asin = json["asin"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["is_available"] is bool) {
      isAvailable = json["is_available"];
    }
  }

  static List<Size> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Size.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["asin"] = asin;
    _data["value"] = value;
    _data["is_available"] = isAvailable;
    return _data;
  }

  Size copyWith({
    String? asin,
    String? value,
    bool? isAvailable,
  }) => Size(
    asin: asin ?? this.asin,
    value: value ?? this.value,
    isAvailable: isAvailable ?? this.isAvailable,
  );
}

class CategoryPath {
  String? id;
  String? name;
  String? link;

  CategoryPath({this.id, this.name, this.link});

  CategoryPath.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["link"] is String) {
      link = json["link"];
    }
  }

  static List<CategoryPath> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => CategoryPath.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["link"] = link;
    return _data;
  }

  CategoryPath copyWith({
    String? id,
    String? name,
    String? link,
  }) => CategoryPath(
    id: id ?? this.id,
    name: name ?? this.name,
    link: link ?? this.link,
  );
}

class ProductDetails {
  String? brand;
  String? operatingSystem;
  String? ramMemoryInstalledSize;
  String? memoryStorageCapacity;
  String? screenSize;
  String? modelName;
  String? wirelessCarrier;
  String? cellularTechnology;
  String? connectivityTechnology;
  String? color;

  ProductDetails({this.brand, this.operatingSystem, this.ramMemoryInstalledSize, this.memoryStorageCapacity, this.screenSize, this.modelName, this.wirelessCarrier, this.cellularTechnology, this.connectivityTechnology, this.color});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    if(json["Brand"] is String) {
      brand = json["Brand"];
    }
    if(json["Operating System"] is String) {
      operatingSystem = json["Operating System"];
    }
    if(json["Ram Memory Installed Size"] is String) {
      ramMemoryInstalledSize = json["Ram Memory Installed Size"];
    }
    if(json["Memory Storage Capacity"] is String) {
      memoryStorageCapacity = json["Memory Storage Capacity"];
    }
    if(json["Screen Size"] is String) {
      screenSize = json["Screen Size"];
    }
    if(json["Model Name"] is String) {
      modelName = json["Model Name"];
    }
    if(json["Wireless Carrier"] is String) {
      wirelessCarrier = json["Wireless Carrier"];
    }
    if(json["Cellular Technology"] is String) {
      cellularTechnology = json["Cellular Technology"];
    }
    if(json["Connectivity Technology"] is String) {
      connectivityTechnology = json["Connectivity Technology"];
    }
    if(json["Color"] is String) {
      color = json["Color"];
    }
  }

  static List<ProductDetails> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => ProductDetails.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Brand"] = brand;
    _data["Operating System"] = operatingSystem;
    _data["Ram Memory Installed Size"] = ramMemoryInstalledSize;
    _data["Memory Storage Capacity"] = memoryStorageCapacity;
    _data["Screen Size"] = screenSize;
    _data["Model Name"] = modelName;
    _data["Wireless Carrier"] = wirelessCarrier;
    _data["Cellular Technology"] = cellularTechnology;
    _data["Connectivity Technology"] = connectivityTechnology;
    _data["Color"] = color;
    return _data;
  }

  ProductDetails copyWith({
    String? brand,
    String? operatingSystem,
    String? ramMemoryInstalledSize,
    String? memoryStorageCapacity,
    String? screenSize,
    String? modelName,
    String? wirelessCarrier,
    String? cellularTechnology,
    String? connectivityTechnology,
    String? color,
  }) => ProductDetails(
    brand: brand ?? this.brand,
    operatingSystem: operatingSystem ?? this.operatingSystem,
    ramMemoryInstalledSize: ramMemoryInstalledSize ?? this.ramMemoryInstalledSize,
    memoryStorageCapacity: memoryStorageCapacity ?? this.memoryStorageCapacity,
    screenSize: screenSize ?? this.screenSize,
    modelName: modelName ?? this.modelName,
    wirelessCarrier: wirelessCarrier ?? this.wirelessCarrier,
    cellularTechnology: cellularTechnology ?? this.cellularTechnology,
    connectivityTechnology: connectivityTechnology ?? this.connectivityTechnology,
    color: color ?? this.color,
  );
}




class ProductInformation {
String? productDimensions;
String? itemWeight;
String? asin;
String? itemModelNumber;
String? batteries;
String? bestSellersRank;
String? os;
String? ram;
String? wirelessCommunicationTechnologies;
String? connectivityTechnologies;
String? gps;
String? specialFeatures;
String? otherDisplayFeatures;
String? humanInterfaceInput;
String? otherCameraFeatures;
String? formFactor;
String? color;
String? batteryPowerRating;
String? whatsInTheBox;
String? manufacturer;
String? dateFirstAvailable;
String? memoryStorageCapacity;
String? standingScreenDisplaySize;
String? ramMemoryInstalledSize;
String? weight;

ProductInformation({this.productDimensions, this.itemWeight, this.asin, this.itemModelNumber, this.batteries, this.bestSellersRank, this.os, this.ram, this.wirelessCommunicationTechnologies, this.connectivityTechnologies, this.gps, this.specialFeatures, this.otherDisplayFeatures, this.humanInterfaceInput, this.otherCameraFeatures, this.formFactor, this.color, this.batteryPowerRating, this.whatsInTheBox, this.manufacturer, this.dateFirstAvailable, this.memoryStorageCapacity, this.standingScreenDisplaySize, this.ramMemoryInstalledSize, this.weight});

ProductInformation.fromJson(Map<String, dynamic> json) {
if(json["Product Dimensions"] is String) {
productDimensions = json["Product Dimensions"];
}
if(json["Item Weight"] is String) {
itemWeight = json["Item Weight"];
}
if(json["ASIN"] is String) {
asin = json["ASIN"];
}
if(json["Item model number"] is String) {
itemModelNumber = json["Item model number"];
}
if(json["Batteries"] is String) {
batteries = json["Batteries"];
}
if(json["Best Sellers Rank"] is String) {
bestSellersRank = json["Best Sellers Rank"];
}
if(json["OS"] is String) {
os = json["OS"];
}
if(json["RAM"] is String) {
ram = json["RAM"];
}
if(json["Wireless communication technologies"] is String) {
wirelessCommunicationTechnologies = json["Wireless communication technologies"];
}
if(json["Connectivity technologies"] is String) {
connectivityTechnologies = json["Connectivity technologies"];
}
if(json["GPS"] is String) {
gps = json["GPS"];
}
if(json["Special features"] is String) {
specialFeatures = json["Special features"];
}
if(json["Other display features"] is String) {
otherDisplayFeatures = json["Other display features"];
}
if(json["Human Interface Input"] is String) {
humanInterfaceInput = json["Human Interface Input"];
}
if(json["Other camera features"] is String) {
otherCameraFeatures = json["Other camera features"];
}
if(json["Form Factor"] is String) {
formFactor = json["Form Factor"];
}
if(json["Color"] is String) {
color = json["Color"];
}
if(json["Battery Power Rating"] is String) {
batteryPowerRating = json["Battery Power Rating"];
}
if(json["Whats in the box"] is String) {
whatsInTheBox = json["Whats in the box"];
}
if(json["Manufacturer"] is String) {
manufacturer = json["Manufacturer"];
}
if(json["Date First Available"] is String) {
dateFirstAvailable = json["Date First Available"];
}
if(json["Memory Storage Capacity"] is String) {
memoryStorageCapacity = json["Memory Storage Capacity"];
}
if(json["Standing screen display size"] is String) {
standingScreenDisplaySize = json["Standing screen display size"];
}
if(json["Ram Memory Installed Size"] is String) {
ramMemoryInstalledSize = json["Ram Memory Installed Size"];
}
if(json["Weight"] is String) {
weight = json["Weight"];
}
}

static List<ProductInformation> fromList(List<Map<String, dynamic>> list) {
return list.map((map) => ProductInformation.fromJson(map)).toList();
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> _data = <String, dynamic>{};
_data["Product Dimensions"] = productDimensions;
_data["Item Weight"] = itemWeight;
_data["ASIN"] = asin;
_data["Item model number"] = itemModelNumber;
_data["Batteries"] = batteries;
_data["Best Sellers Rank"] = bestSellersRank;
_data["OS"] = os;
_data["RAM"] = ram;
_data["Wireless communication technologies"] = wirelessCommunicationTechnologies;
_data["Connectivity technologies"] = connectivityTechnologies;
_data["GPS"] = gps;
_data["Special features"] = specialFeatures;
_data["Other display features"] = otherDisplayFeatures;
_data["Human Interface Input"] = humanInterfaceInput;
_data["Other camera features"] = otherCameraFeatures;
_data["Form Factor"] = formFactor;
_data["Color"] = color;
_data["Battery Power Rating"] = batteryPowerRating;
_data["Whats in the box"] = whatsInTheBox;
_data["Manufacturer"] = manufacturer;
_data["Date First Available"] = dateFirstAvailable;
_data["Memory Storage Capacity"] = memoryStorageCapacity;
_data["Standing screen display size"] = standingScreenDisplaySize;
_data["Ram Memory Installed Size"] = ramMemoryInstalledSize;
_data["Weight"] = weight;
return _data;
}

ProductInformation copyWith({
String? productDimensions,
String? itemWeight,
String? asin,
String? itemModelNumber,
String? batteries,
String? bestSellersRank,
String? os,
String? ram,
String? wirelessCommunicationTechnologies,
String? connectivityTechnologies,
String? gps,
String? specialFeatures,
String? otherDisplayFeatures,
String? humanInterfaceInput,
String? otherCameraFeatures,
String? formFactor,
String? color,
String? batteryPowerRating,
String? whatsInTheBox,
String? manufacturer,
String? dateFirstAvailable,
String? memoryStorageCapacity,
String? standingScreenDisplaySize,
String? ramMemoryInstalledSize,
String? weight,
}) => ProductInformation(
productDimensions: productDimensions ?? this.productDimensions,
itemWeight: itemWeight ?? this.itemWeight,
asin: asin ?? this.asin,
itemModelNumber: itemModelNumber ?? this.itemModelNumber,
batteries: batteries ?? this.batteries,
bestSellersRank: bestSellersRank ?? this.bestSellersRank,
os: os ?? this.os,
ram: ram ?? this.ram,
wirelessCommunicationTechnologies: wirelessCommunicationTechnologies ?? this.wirelessCommunicationTechnologies,
connectivityTechnologies: connectivityTechnologies ?? this.connectivityTechnologies,
gps: gps ?? this.gps,
specialFeatures: specialFeatures ?? this.specialFeatures,
otherDisplayFeatures: otherDisplayFeatures ?? this.otherDisplayFeatures,
humanInterfaceInput: humanInterfaceInput ?? this.humanInterfaceInput,
otherCameraFeatures: otherCameraFeatures ?? this.otherCameraFeatures,
formFactor: formFactor ?? this.formFactor,
color: color ?? this.color,
batteryPowerRating: batteryPowerRating ?? this.batteryPowerRating,
whatsInTheBox: whatsInTheBox ?? this.whatsInTheBox,
manufacturer: manufacturer ?? this.manufacturer,
dateFirstAvailable: dateFirstAvailable ?? this.dateFirstAvailable,
memoryStorageCapacity: memoryStorageCapacity ?? this.memoryStorageCapacity,
standingScreenDisplaySize: standingScreenDisplaySize ?? this.standingScreenDisplaySize,
ramMemoryInstalledSize: ramMemoryInstalledSize ?? this.ramMemoryInstalledSize,
weight: weight ?? this.weight,
);
}