void main(List<String> args) {
  Fruta f1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Doce e cítrica", 30);
  Fruta f2 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  f1.estaMadura(30);
  f2.estaMadura(60);
}

class Fruta {
  String name;
  double weight;
  String color;
  String taste;
  int poolDays;
  bool? isMature;

  Fruta(this.name, this.weight, this.color,this.taste, this.poolDays, {this.isMature});

  void estaMadura(int daysToMature) {
    this.isMature = this.poolDays >= daysToMature;
    if (this.poolDays < daysToMature) {
      print("A sua ${this.name} foi colhida à ${this.poolDays} dias e precisa de $daysToMature para ficar madura");
    } else {
      print("A sua ${this.name} foi colhida à ${this.poolDays} dias e está madura");
    }
  }
}