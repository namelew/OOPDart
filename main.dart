void main(List<String> args) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e Amarela";
  String taste = "Doce e cítrica";
  int poolDays = 20;
  bool isMature = funcEstaMadura(poolDays);

  print(quantosDiasMadura(poolDays));

  mostrarMadura(name, poolDays, color: color);
}

void mostrarMadura(String name, int days, {required String color}) {
  if (funcEstaMadura(days)) {
    print("A $name está madura");
  } else {
    print("A $name não está madura");
  }

  print("A $name é $color");
}

int quantosDiasMadura(int days) {
  return 30 - days;
}

bool funcEstaMadura(int days) {
  return days >= 30;
}