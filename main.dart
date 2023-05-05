void main(List<String> args) {
  Fruta f1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Doce e cítrica", 30);
  Fruta f2 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  f1.estaMadura(30);
  f2.estaMadura(60);
}

class Alimento {
  String name;
  double weight;
  String color;

  Alimento(this.name, this.weight, this.color);

  void printAlimento() {
    print("Este(a) $name pesa $weight gramas e é $color.");
  }
}

class Fruta extends Alimento{
  String taste;
  int poolDays;
  bool? isMature;

  Fruta(String name, double weight, String color,this.taste, this.poolDays, {this.isMature}) : super(name, weight, color);

  void estaMadura(int daysToMature) {
    this.isMature = this.poolDays >= daysToMature;
    if (this.poolDays < daysToMature) {
      print("A sua ${this.name} foi colhida à ${this.poolDays} dias e precisa de $daysToMature para ficar madura");
    } else {
      print("A sua ${this.name} foi colhida à ${this.poolDays} dias e está madura");
    }
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $name");
  }
}

class Legumes extends Alimento{
  bool isNeedToCook;

  Legumes(String name, double weight, String color, this.isNeedToCook) : super(name, weight, color);

  void cook() {
    if(this.isNeedToCook) {
      print("Pronto, o $name está cozinhando!");
    } else {
      print("Nem precisa cozinhar");
    }
  }
}

class Citricas {
  String name;
  double weight;
  String color;
  String taste;
  int poolDays;
  bool? isMature;
  double dryLevel;

  Citricas(this.name, this.weight, this.color,this.taste, this.poolDays, this.dryLevel, {this.isMature});
}

class Nozes {
  String name;
  double weight;
  String color;
  String taste;
  int poolDays;
  bool? isMature;
  double naturalOilPercent;

  Nozes(this.name, this.weight, this.color,this.taste, this.poolDays, this.naturalOilPercent, {this.isMature});
}