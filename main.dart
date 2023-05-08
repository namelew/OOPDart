void main(List<String> args) {
  Fruta banana = Fruta("Banana", 75, "Amarela", "Doce", 12);
  Nozes macadamia = Nozes("Macadâmia", 2, "Branco Amarelado", "Doce", 20, 35);

  banana.separateIngredients();
  macadamia.makeDough();
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

class Fruta extends Alimento implements Bolo{
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

  @override
  void separateIngredients() {
    print("Catar a $name");
  }
  @override
  void makeDough() {
    print("Misturar a fruta com farinha, açucar etc");
  }
  @override
  void grill() {
    print("Colocar no forno");
  }
}

class Legumes extends Alimento implements Bolo{
  bool isNeedToCook;

  Legumes(String name, double weight, String color, this.isNeedToCook) : super(name, weight, color);

  void cook() {
    if(this.isNeedToCook) {
      print("Pronto, o $name está cozinhando!");
    } else {
      print("Nem precisa cozinhar");
    }
  }

  @override
  void grill() {
    // TODO: implement grill
  }

  @override
  void makeDough() {
    // TODO: implement makeDough
  }

  @override
  void separateIngredients() {
    // TODO: implement separateIngredients
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
  @override
  void makeDough() {
    print("Tirar a casca");
    // a chamada a função do pai é opcional
    super.makeDough();
  }
}

abstract class Bolo {
  void separateIngredients();
  void makeDough();
  void grill();
}