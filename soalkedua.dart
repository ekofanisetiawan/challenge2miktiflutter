void main() {
  // data 1
  compareBMI(78, 1.69, 92, 1.95, "Data 1");
  // data 2
  compareBMI(95, 1.88, 85, 1.76, "Data 2");
}

void compareBMI(double massMark, double heightMark, double massJohn,
    double heightJohn, String dataLabel) {
  // hitung BMI Mark -> massa / tinggi^2
  double bmiMark = massMark / (heightMark * heightMark);
  // hitung BMI John -> massa / tinggi^2
  double bmiJohn = massJohn / (heightJohn * heightJohn);

  // cetak BMI Mark dan John
  print("$dataLabel - BMI Mark: $bmiMark, BMI John: $bmiJohn");

  // variabel boolean -> apakah BMI Mark lebih tinggi dari John
  bool markHigherBMI = bmiMark > bmiJohn;

  // cetak hasil perbandingan BMI
  if (markHigherBMI) {
    print("Pada $dataLabel, Mark memiliki BMI yang lebih tinggi dari John.\n");
  } else {
    print("Pada $dataLabel, John memiliki BMI yang lebih tinggi dari Mark.\n");
  }
}
