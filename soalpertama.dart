void main() {
  // data 1
  testCompetition([96, 108, 89], [88, 91, 110], "Data 1");
  // data bonus 1
  testCompetition([97, 112, 101], [109, 95, 123], "Data Bonus 1");
  // data bonus 2
  testCompetition([97, 112, 101], [109, 95, 106], "Data Bonus 2");
}

void testCompetition(
    List<int> scoresDolphins, List<int> scoresKoalas, String dataSet) {
  // hitung skor rata-rata tiap tim
  double averageDolphins = calculateAverage(scoresDolphins);
  double averageKoalas = calculateAverage(scoresKoalas);

  // tampil data set dan skor rata-rata tiap tim
  print("\n$dataSet:");
  print("Skor rata-rata Tim Lumba-lumba: $averageDolphins");
  print("Skor rata-rata Tim Koala: $averageKoalas");

  // banding skor rata-rata tiap tim untuk menang dengan syarat skor minimal 100
  if (averageDolphins > averageKoalas && averageDolphins >= 100) {
    print("Tim Lumba-lumba menang trofi");
  } else if (averageKoalas > averageDolphins && averageKoalas >= 100) {
    print("Tim Koala menang trofi");
  } else if (averageDolphins == averageKoalas &&
      averageDolphins >= 100 &&
      averageKoalas >= 100) {
    print("Kedua tim seri dan skor di atas 100");
  } else {
    print("Tidak ada tim yang menang trofi.");
  }
}

double calculateAverage(List<int> scores) {
  int sum = 0;
  for (int score in scores) {
    sum += score;
  }
  return sum / scores.length;
}
