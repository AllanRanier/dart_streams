Future<void> main() async {
  final intervel = Duration(seconds: 2);
  final stream =  Stream<int>.periodic(intervel, callback);

  await for (var i in stream) {
    print(i);
  }
}

  int callback(int value){
    return (value +1) * 2;
  }