// Prezi 簡報中：常用用法、Isolate & event loop、完整架構模型
import 'dart:async';

// void main() async {
//   print("Top of main()");
  
//   Future.delayed(Duration(seconds: 1), () {
//     print("print future 1");
//   });
  
//   scheduleMicrotask(() {
//     print("Hello microtask 1");
//   });
  
//   Future((){
//     print("print future 2");
//   });
  
//   Future.value("from future.value").then((v){
//     print("Hello microtask $v");
//   });
  
//   scheduleMicrotask(() {
//     print("Hello microtask 2");
//   });
  
//   print("Bottom of main()");
// }

void main() {
  Future f1 = new Future(() => print('f1'));
  Future f2 = new Future(() =>  null);
  Future f3 = new Future.delayed(Duration(seconds: 1) ,() => print('f2'));
  Future f4 = new Future(() => null);
  Future f5 = new Future(() => null);
  Future f6 = new Future(() => print('f9'));
  Future f7 = new Future(() => print('f10'));

  f5.then((_) => print('f3'));
  f4.then((_) {
    print('f4');
    new Future(() => print('f5'));
    
    f6.then((_) {
      print('f6');
    });
    
    f2.then((_) {
      print('f7');
    });
  });
  print('f8');
}


// Future<int> _loadFromDisk() {}

// Future<String> _fetchNetworkData(int id) {}

// class ProcessedData {
//   ProcessedData(this.data);
//   final String data;
//   //...
// }

// Future<ProcessedData> createData() {
//   return _loadFromDisk().then((id){
//     return _fetchNetworkData(id);
//   }).then((data){
//     return ProcessedData(data);
//   }).catchError(
//     (err){
//       print("Network error: $err");
//       return ProcessedData.empty();
//     },
//     test: (err) => err is HttpException,
//   ).whenComplete((){
//     print("All done!");
//   });
// }


// Future<ProcessedData> createData() async {
//   try {
//     final id = await _loadFromDisk();
//     final data = await _fetchNetworkData(id);
//     return ProcessedData(data);
//   } on HttpException catch (err) {
//     print("Network error: $err");
//     return ProcessedData.empty();
//   } finally {
//     print("All done!");
//   }
// }

// Future<int> getTotal(Stream<int> numbers) async {
//   int total = 0;
  
//   for (final value in numbers) {
//     total += value;
//   }
  
//   return total;
// }

// void main(){
//   print(getTotal([1,2,3]));
// }



// Stream<int> NumberCreator() async* {
//   int i = 0;
//   while (true) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i++;
//   }
// }

// void main() {
//   final myStream = NumberCreator();
//   final subscription = myStream.map((i) => i*2).listen(
//     (data) => print("Data: $data")
//   );
// }


// Stream<int> NumberCreator() {
//   var controller = StreamController<int>();
//   int i = 0;
  
//   void tick(Timer timer){
//     i++;
//     controller.add(i);
//   }
  
//   Timer.periodic(Duration(seconds:1), tick);
//   return controller.stream;
// }

// void main() {
//   var myStream = NumberCreator();
//   myStream.listen((data) => print('Data: $data'));
// }


// StreamController<int> NumberCreator() {
//   var controller = StreamController<int>();
//   int i = 0;
  
//   void tick(Timer timer){
//     i++;
//     controller.add(i);
//   }
  
//   Timer.periodic(Duration(seconds:1), tick);
//   return controller;
// }

// void main() {
//   var myStream = NumberCreator().stream;
//   myStream.listen((data) => print('Data: $data'));
// }


// class NumberCreator {
//   var _count = 1;
//   final _controller = StreamController<int>();
  
//   NumberCreator() {
//    Timer.periodic(Duration(seconds:1), (t) {
//         _controller.sink.add(_count);
//         _count++;
//      });
//    }
  
//   Stream<int> get stream => _controller.stream;
// }


// void main() {
//   final myStream = NumberCreator().stream.asBroadcastStream();
//   final subscription = myStream.take(5).listen(
//     (data) {
//       print('Data: $data');
//     },
//     onError: (err) {
//       print('Error! $err');
//     },
//     cancelOnError: false,
//     onDone: () {
//       print('Done');
//     }
//   );
// }







