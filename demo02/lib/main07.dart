// 논리 연산자
void main() {
  bool isRainy = true;
  bool hasUmbrella = false;

  // and
  //      T     &&     T    ====> True
  print(isRainy && hasUmbrella);
  print(hasUmbrella && isRainy); // 빠른 평가

  // or
  print(isRainy || hasUmbrella);
  print(hasUmbrella || isRainy);

  // not
  print(!isRainy);
} // end of main
