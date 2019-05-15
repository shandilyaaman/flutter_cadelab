class City {
  //--- Name Of City
  final String name;

  //-- image
  final String image;

  //--- population
  final String population;

  //--- country
  final String country;

  City({this.name, this.country, this.population, this.image});

  static List<City> allCities() {
    var lstOfCities = new List<City>();

    lstOfCities.add(new City(
        name: "Delhi",
        country: "India",
        population: "19 mill",
        image: "delhi.jpeg"));
    lstOfCities.add(new City(
        name: "London",
        country: "Britain",
        population: "8 mill",
        image: "london.jpeg"));
    lstOfCities.add(new City(
        name: "Vancouver",
        country: "Canada",
        population: "2.4 mill",
        image: "vancouver.jpeg"));
    lstOfCities.add(new City(
        name: "New York",
        country: "USA",
        population: "8.1 mill",
        image: "newyork.jpeg"));
    lstOfCities.add(new City(
        name: "Paris",
        country: "France",
        population: "2.2 mill",
        image: "paris.jpeg"));
    lstOfCities.add(new City(
        name: "Berlin",
        country: "Germany",
        population: "3.7 mill",
        image: "berlin.jpeg"));
    return lstOfCities;
  }
}
