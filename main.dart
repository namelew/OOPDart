void main(List<String> args) {
  Legumes mandioca = Legumes("Mandioca", 1200, "Marrom", true);
  Fruta banana = Fruta("Banana", 75, "Amarela", "Doce", 12);
  Nozes macadamia = Nozes("Macadâmia", 2, "Branco Amarelado", "Doce", 20, 35);
  Citricas limao = Citricas("Limão", 50, "Verde", "Azedo", 20, 9);

  macadamia.printAlimento();
  mandioca.printAlimento();
  banana.printAlimento();
  limao.printAlimento();

  mandioca.cook();

  limao.fazerSuco();
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

class Citricas extends Fruta{
  double dryLevel;

  Citricas(String name, double weight, String color, String taste, int poolDays, this.dryLevel, {bool? isMature}) : super(name, weight, color, taste, poolDays, isMature: isMature);

  void existRefri(bool exist) {
    if (exist) {
      print("Existe refrigerante de $name");
    } else {
      print("Não existe refri de $name");
    }
  }
}

class Nozes extends Fruta{
  double naturalOilPercent;

  Nozes(String name, double weight, String color, String taste, int poolDays, this.naturalOilPercent, {bool? isMature}) : super(name, weight, color, taste, poolDays, isMature: isMature);
}