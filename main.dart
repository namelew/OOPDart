void main(List<String> args) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e Amarela";
  String taste = "Doce e cítrica";
  int poolDays = 40;
  bool isMature = funcEstaMadura(poolDays);
}

bool funcEstaMadura(int days) {
  return days >= 30;
}