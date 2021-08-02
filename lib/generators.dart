Iterable<int> generator() sync* {
  yield 5;

  for (int i = 6, max = 10; i < max; i++) yield i;

  yield 10;
}

Stream<int> streamGenerator() async* {
  yield 5;
  for (int i = 6, max = 10; i < max; i++) yield i;
}

void main() {
  // final Iterable<int> result = generator();
  final Stream<int> asyncResult = streamGenerator();

  // print(result);

  asyncResult.listen((event) {
    print(event);
  });
}
