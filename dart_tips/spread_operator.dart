///This is an example of spread operator in dat language
///use-case : spread Lists,Sets or Maps

void main() {
  List<int> oldList = <int>[3, 5, 6];
  List<int> newList = <int>[
    1,
    ...oldList,
    2,
    8,
  ];

  print(newList); //output : [1, 3, 5, 6, 2, 8]
}
