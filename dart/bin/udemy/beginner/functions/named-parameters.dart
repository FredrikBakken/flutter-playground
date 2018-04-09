
int squareFeet({int width, int length})  {
  return width * length;
}


void download(String file, {int port: 80}) {
  print('Downloading ${file} on port ${port}');
}


main() {
  int footage = squareFeet(length: 10, width: 5);
  print('Footage: ${footage}');

  download('myfile.txt');
  download('myfile2.txt', port: 5050);
}