Future<void> main() async {
  final intervel = Duration(seconds: 2);
  var stream =  Stream<int>.periodic(intervel, callback);
  stream = stream.take(5);
  await for (var i in stream) {
    print(i);
  }
}

  int callback(int value){
    return (value +1) * 2;
  }