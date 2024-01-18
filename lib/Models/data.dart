class Meteo{
  String daydate;
  String temperature;
  String nature;
  String image;
  Meteo(this.daydate, this.temperature, this.nature, this.image);
static List<Meteo> db = [
  Meteo("Lundi 08/01/2024", "23°C", "Ensoleillé", "assets/images/soleil.png"),
  Meteo("Mardi 09/01/2024", "23°C", "Nuageux","assets/images/des-nuages.png"),
  Meteo("Merdi 10/01/2024", "23°C", "Pluie","assets/images/pluie-abondante.png"),
  Meteo("Jeudi 11/01/2024", "23°C", "Ensoleillé", "assets/images/soleil.png"),
];

}

class Meteos{

}