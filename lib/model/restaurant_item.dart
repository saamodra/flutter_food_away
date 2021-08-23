import 'package:food_away/model/customer_review.dart';

class RestaurantItem {
  String name;
  String description;
  String pictureUrl;
  String city;
  String address;
  double rating;
  List<String> categories;
  List<String> foodMenus;
  List<String> drinkMenus;
  List<CustomerReview> customerReviews;

  RestaurantItem(
      {required this.name,
      required this.description,
      required this.pictureUrl,
      required this.city,
      required this.address,
      required this.rating,
      required this.categories,
      required this.foodMenus,
      required this.drinkMenus,
      required this.customerReviews});
}

var restaurantList = [
  RestaurantItem(
      name: "Melting Pot",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "melting_pot.jpg",
      city: "Medan",
      address: "Jln. Pandeglang no 19",
      rating: 4.2,
      categories: ["Italia", "Modern"],
      foodMenus:  ["Paket rosemary", "Toastie salmon", "Bebek crepes", "Salad lengkeng"],
      drinkMenus: ["Es krim", "Sirup", "Jus apel", "Jus jeruk", "Coklat panas", "Air", "Es kopi", "Jus alpukat", "Jus mangga", "Teh manis", "Kopi espresso", "Minuman soda", "Jus tomat"],
      customerReviews: [
        CustomerReview(
          name: "Ahmad",
          review: "Tidak rekomendasi untuk pelajar!",
          date: "13 November 2019"
        ),
        CustomerReview(
          name: "aaa",
          review: "bbb",
          date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Kafe Kita",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "kafe_kita.jpg",
      city: "Gorontalo",
      address: "Jln. Pustakawan no 9",
      rating: 4,
      categories: ["Sop", "Modern"],
      foodMenus: [
        "Kari kacang dan telur",
        "Ikan teri dan roti",
        "roket penne",
        "Salad lengkeng",
        "Tumis leek",
        "Salad yuzu",
        "Sosis squash dan mint"
      ],
      drinkMenus: [
        "Jus tomat",
        "Minuman soda",
        "Jus apel",
        "Jus mangga",
        "Es krim",
        "Kopi espresso",
        "Jus alpukat",
        "Coklat panas",
        "Es kopi",
        "Teh manis",
        "Sirup",
        "Jus jeruk"
      ],
      customerReviews: [
        CustomerReview(
            name: "Ahmad",
            review: "Tidak ada duanya!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Arif",
            review: "Tidak rekomendasi untuk pelajar",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Bring Your Phone Cafe",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "03",
      city: "Surabaya",
      address: "Jln. Belimbing Timur no 27",
      rating: 4.2,
      categories: ["Modern", "Italia"],
      foodMenus: [
        "Salad lengkeng", "Sosis squash dan mint", "Toastie salmon", "Salad yuzu", "Matzo farfel", "Kari terong", "roket penne", "Napolitana", "Daging Sapi", "Bebek crepes", "Sup Kohlrabi", "Ikan teri dan roti", "Tumis leek"
      ],
      drinkMenus: [
        "Kopi espresso",
        "Coklat panas",
        "Jus jeruk",
        "Jus apel",
        "Minuman soda",
        "Air",
        "Es kopi"
      ],
      customerReviews: [
        CustomerReview(
            name: "Ian",
            review: "Mahal!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Dayat",
            review: "Ada harga ada kualitas",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Kafein",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "15",
      city: "Aceh",
      address: "Jln. Belimbing Timur no 27",
      rating: 4.6,
      categories: [
        "Italia",
        "Jawa"
      ],
      foodMenus: [
        "Salad lengkeng",
        "Kari terong",
        "Sosis squash dan mint",
        "Napolitana",
        "Salad yuzu",
        "Tumis leek",
        "Ikan teri dan roti",
        "Kari kacang dan telur",
        "Toastie salmon",
        "Bebek crepes",
        "Paket rosemary",
        "Sup Kohlrabi",
        "roket penne"
      ],
      drinkMenus: [
        "Minuman soda",
        "Es teh",
        "Jus tomat",
        "Coklat panas",
        "Jus jeruk",
        "Air",
        "Kopi espresso",
        "Es kopi",
        "Sirup",
        "Jus alpukat",
        "Jus mangga",
        "Jus apel",
        "Es krim"
      ],
      customerReviews: [
        CustomerReview(
            name: "Andri",
            review: "Cukup murah",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Roni",
            review: "Sesuai Pelajar",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Istana Emas",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "05",
      city: "Balikpapan",
      address: "Jln. Belimbing Timur no 27",
      rating: 4.5,
      categories: ["Bali"],
      foodMenus: [
        "Daging Sapi",
        "Bebek crepes",
        "Toastie salmon",
        "Kari terong",
        "Paket rosemary",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Sirup",
        "Jus mangga",
        "Es teh",
        "Jus jeruk",
        "Teh manis",
        "Kopi espresso",
        "Es kopi",
        "Minuman soda",
        "Jus alpukat",
        "Jus tomat",
        "Es krim",
        "Coklat panas"
      ],
      customerReviews: [
        CustomerReview(
            name: "Lyodra",
            review: "Mantap!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Nadya",
            review: "Nice",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Makan mudah",
      description:
          "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.",
      pictureUrl: "22",
      city: "Medan",
      address: "Jln. Pustakawan no 9",
      rating: 3.7,
      categories: ["Jawa"],
      foodMenus: [
        "Kari kacang dan telur",
        "Toastie salmon",
        "Matzo farfel",
        "Napolitana",
        "Salad yuzu",
        "Sosis squash dan mint",
        "Daging Sapi"
      ],
      drinkMenus: [
        "Minuman soda",
        "Jus apel",
        "Air",
        "Jus jeruk",
        "Es krim",
        "Es teh",
        "Jus tomat",
        "Coklat panas"
      ],
      customerReviews: [
        CustomerReview(
          name: "Gilang",
          review: "Good!",
          date: "22 Agustus 2021"
        )
      ]),
  RestaurantItem(
      name: "Drinky Squash",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "18",
      city: "Surabaya",
      address: "Jln. Pustakawan no 9",
      rating: 3.9,
      categories: ["Jawa", "Modern"],
      foodMenus: [
        "Sup Kohlrabi",
        "Paket rosemary",
        "Tumis leek",
        "Kari terong",
        "roket penne",
        "Sosis squash dan mint",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Es kopi",
        "Air",
        "Jus apel",
        "Kopi espresso",
        "Teh manis",
        "Jus jeruk",
        "Es teh",
        "Coklat panas",
        "Jus mangga",
        "Es krim",
        "Jus alpukat",
        "Sirup",
        "Minuman soda"
      ],
      customerReviews: [
        CustomerReview(
            name: "Gilang",
            review: "Good!",
            date: "22 Agustus 2021"
        )
      ]),
  RestaurantItem(
      name: "Ampiran Kota",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "35",
      city: "Balikpapan",
      address: "Jln. Pustakawan no 9",
      rating: 4.1,
      categories: ["Italia", "Modern"],
      foodMenus: [
        "Daging Sapi",
        "Bebek crepes",
        "Toastie salmon",
        "Kari terong",
        "Paket rosemary",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Sirup",
        "Jus mangga",
        "Es teh",
        "Jus jeruk",
        "Teh manis",
        "Kopi espresso",
        "Es kopi",
        "Minuman soda",
        "Jus alpukat",
        "Jus tomat",
        "Es krim",
        "Coklat panas"
      ],
      customerReviews: [
        CustomerReview(
            name: "Lyodra",
            review: "Mantap!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Nadya",
            review: "Nice",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Gigitan Cepat",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "38",
      city: "Bali",
      address: "Jln. Pustakawan no 9",
      rating: 4,
      categories: [],
      foodMenus: [],
      drinkMenus: [],
      customerReviews: []),
  RestaurantItem(
      name: "Tempat Siang Hari",
      description:
          "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.",
      pictureUrl: "10",
      city: "Surabaya",
      address: "Jln. Pustakawan no 9",
      rating: 4.4,
      categories: ["Modern", "Bali"],
      foodMenus: [
        "Salad lengkeng", "Sosis squash dan mint", "Toastie salmon", "Salad yuzu", "Matzo farfel", "Kari terong", "roket penne", "Napolitana", "Daging Sapi", "Bebek crepes", "Sup Kohlrabi", "Ikan teri dan roti", "Tumis leek"
      ],
      drinkMenus: [
        "Kopi espresso",
        "Coklat panas",
        "Jus jeruk",
        "Jus apel",
        "Minuman soda",
        "Air",
        "Es kopi"
      ],
      customerReviews: [
        CustomerReview(
            name: "Ian",
            review: "Mahal!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Dayat",
            review: "Ada harga ada kualitas",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Fairy Cafe",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "24",
      city: "Surabaya",
      address: "Jln. Pustakawan no 9",
      rating: 5,
      categories: ["Italia", "Modern"],
      foodMenus:  ["Paket rosemary", "Toastie salmon", "Bebek crepes", "Salad lengkeng"],
      drinkMenus: ["Es krim", "Sirup", "Jus apel", "Jus jeruk", "Coklat panas", "Air", "Es kopi", "Jus alpukat", "Jus mangga", "Teh manis", "Kopi espresso", "Minuman soda", "Jus tomat"],
      customerReviews: [
        CustomerReview(
            name: "Ahmad",
            review: "Tidak rekomendasi untuk pelajar!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "aaa",
            review: "bbb",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Rumah Senja",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "23",
      city: "Bandung",
      address: "Jln. Pustakawan no 9",
      rating: 3.9,
      categories: [],
      foodMenus: [],
      drinkMenus: [],
      customerReviews: []),
  RestaurantItem(
      name: "Saya Suka",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "34",
      city: "Bandung",
      address: "Jln. Pustakawan no 9",
      rating: 4.3,
      categories: ["Jawa"],
      foodMenus: [
        "Kari kacang dan telur",
        "Toastie salmon",
        "Matzo farfel",
        "Napolitana",
        "Salad yuzu",
        "Sosis squash dan mint",
        "Daging Sapi"
      ],
      drinkMenus: [
        "Minuman soda",
        "Jus apel",
        "Air",
        "Jus jeruk",
        "Es krim",
        "Es teh",
        "Jus tomat",
        "Coklat panas"
      ],
      customerReviews: [
        CustomerReview(
            name: "Gilang",
            review: "Good!",
            date: "22 Agustus 2021"
        )
      ]),
  RestaurantItem(
      name: "Hub Grubber",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "32",
      city: "Balikpapan",
      address: "Jln. Pustakawan no 9",
      rating: 3.8,
      categories: ["Jawa", "Modern"],
      foodMenus: [
        "Sup Kohlrabi",
        "Paket rosemary",
        "Tumis leek",
        "Kari terong",
        "roket penne",
        "Sosis squash dan mint",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Es kopi",
        "Air",
        "Jus apel",
        "Kopi espresso",
        "Teh manis",
        "Jus jeruk",
        "Es teh",
        "Coklat panas",
        "Jus mangga",
        "Es krim",
        "Jus alpukat",
        "Sirup",
        "Minuman soda"
      ],
      customerReviews: [
        CustomerReview(
            name: "Gilang",
            review: "Good!",
            date: "22 Agustus 2021"
        )
      ]),
  RestaurantItem(
      name: "Kafe Cemara",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "27",
      city: "Ternate",
      address: "Jln. Pustakawan no 9",
      rating: 3.6,
      categories: [
        "Italia",
        "Jawa"
      ],
      foodMenus: [
        "Salad lengkeng",
        "Kari terong",
        "Sosis squash dan mint",
        "Napolitana",
        "Salad yuzu",
        "Tumis leek",
        "Ikan teri dan roti",
        "Kari kacang dan telur",
        "Toastie salmon",
        "Bebek crepes",
        "Paket rosemary",
        "Sup Kohlrabi",
        "roket penne"
      ],
      drinkMenus: [
        "Minuman soda",
        "Es teh",
        "Jus tomat",
        "Coklat panas",
        "Jus jeruk",
        "Air",
        "Kopi espresso",
        "Es kopi",
        "Sirup",
        "Jus alpukat",
        "Jus mangga",
        "Jus apel",
        "Es krim"
      ],
      customerReviews: [
        CustomerReview(
            name: "Andri",
            review: "Cukup murah",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Roni",
            review: "Sesuai Pelajar",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Manis Asam Kafe",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "21",
      city: "Malang",
      address: "Jln. Pustakawan no 9",
      rating: 4.6,
      categories: ["Italia", "Modern"],
      foodMenus: [
        "Daging Sapi",
        "Bebek crepes",
        "Toastie salmon",
        "Kari terong",
        "Paket rosemary",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Sirup",
        "Jus mangga",
        "Es teh",
        "Jus jeruk",
        "Teh manis",
        "Kopi espresso",
        "Es kopi",
        "Minuman soda",
        "Jus alpukat",
        "Jus tomat",
        "Es krim",
        "Coklat panas"
      ],
      customerReviews: [
        CustomerReview(
            name: "Lyodra",
            review: "Mantap!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Nadya",
            review: "Nice",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Run The Gun",
      description:
          "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.",
      pictureUrl: "30",
      city: "Aceh",
      address: "Jln. Pustakawan no 9",
      rating: 3.7,
      categories: ["Jawa", "Modern"],
      foodMenus: [
        "Sup Kohlrabi",
        "Paket rosemary",
        "Tumis leek",
        "Kari terong",
        "roket penne",
        "Sosis squash dan mint",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Es kopi",
        "Air",
        "Jus apel",
        "Kopi espresso",
        "Teh manis",
        "Jus jeruk",
        "Es teh",
        "Coklat panas",
        "Jus mangga",
        "Es krim",
        "Jus alpukat",
        "Sirup",
        "Minuman soda"
      ],
      customerReviews: [
        CustomerReview(
            name: "Gilang",
            review: "Good!",
            date: "22 Agustus 2021"
        )
      ]),
  RestaurantItem(
      name: "Bobby",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "19",
      city: "Ternate",
      address: "Jln. Pustakawan no 9",
      rating: 4.7,
      categories: ["Modern", "Italia"],
      foodMenus: [
        "Salad lengkeng", "Sosis squash dan mint", "Toastie salmon", "Salad yuzu", "Matzo farfel", "Kari terong", "roket penne", "Napolitana", "Daging Sapi", "Bebek crepes", "Sup Kohlrabi", "Ikan teri dan roti", "Tumis leek"
      ],
      drinkMenus: [
        "Kopi espresso",
        "Coklat panas",
        "Jus jeruk",
        "Jus apel",
        "Minuman soda",
        "Air",
        "Es kopi"
      ],
      customerReviews: [
        CustomerReview(
            name: "Ian",
            review: "Mahal!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Dayat",
            review: "Ada harga ada kualitas",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Pangsit Express",
      description:
          "Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
      pictureUrl: "43",
      city: "Surabaya",
      address: "Jln. Pustakawan no 9",
      rating: 4.8,
      categories: ["Italia", "Modern"],
      foodMenus: [
        "Daging Sapi",
        "Bebek crepes",
        "Toastie salmon",
        "Kari terong",
        "Paket rosemary",
        "Salad lengkeng"
      ],
      drinkMenus: [
        "Sirup",
        "Jus mangga",
        "Es teh",
        "Jus jeruk",
        "Teh manis",
        "Kopi espresso",
        "Es kopi",
        "Minuman soda",
        "Jus alpukat",
        "Jus tomat",
        "Es krim",
        "Coklat panas"
      ],
      customerReviews: [
        CustomerReview(
            name: "Lyodra",
            review: "Mantap!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Nadya",
            review: "Nice",
            date: "22 Agustus 2021"
        ),
      ]),
  RestaurantItem(
      name: "Gigitan Makro",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureUrl: "04",
      city: "Surabaya",
      address: "Jln. Pustakawan no 9",
      rating: 4.9,
      categories: ["Sop", "Modern"],
      foodMenus: [
        "Kari kacang dan telur",
        "Ikan teri dan roti",
        "roket penne",
        "Salad lengkeng",
        "Tumis leek",
        "Salad yuzu",
        "Sosis squash dan mint"
      ],
      drinkMenus: [
        "Jus tomat",
        "Minuman soda",
        "Jus apel",
        "Jus mangga",
        "Es krim",
        "Kopi espresso",
        "Jus alpukat",
        "Coklat panas",
        "Es kopi",
        "Teh manis",
        "Sirup",
        "Jus jeruk"
      ],
      customerReviews: [
        CustomerReview(
            name: "Ahmad",
            review: "Tidak ada duanya!",
            date: "13 November 2019"
        ),
        CustomerReview(
            name: "Arif",
            review: "Tidak rekomendasi untuk pelajar",
            date: "22 Agustus 2021"
        ),
      ]),
];
