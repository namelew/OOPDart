void main(List<String> args) {
  Fruta f1 = Fruta("Laranja", 100.2, "Verde e Amarela", "Doce e cítrica", 20);
  Fruta f2 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  print("$f1 $f2");

  mostrarMadura(f1.name, f1.poolDays, color: f1.color);
}

void mostrarMadura(String name, int days, {required String color}) {
  if (funcEstaMadura(days)) {
    print("A $name está madura");
  } else {
    print("A $name não está madura");
  }

  print("A $name é $color");
}

class Fruta {
  String name;
  double weight;
  String color;
  String taste;
  int poolDays;
  bool? isMature;

  Fruta(this.name, this.weight, this.color,this.taste, this.poolDays, {this.isMature});
}

int quantosDiasMadura(int days) {
  return 30 - days;
}

bool funcEstaMadura(int days) {
  return days >= 30;
}