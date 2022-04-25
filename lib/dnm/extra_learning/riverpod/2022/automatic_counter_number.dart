import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Use Web socket Client
abstract class WebsocketClient {
  Stream<int> getCounterStream();
}

class AutometicCounter implements WebsocketClient {
  @override
  Stream<int> getCounterStream() async* {
    int i = 0;
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield i++;
    }
  }
}

final websocketClientProvider = Provider<WebsocketClient>((ref) {
  return AutometicCounter();
});

// use- StateProvider.autoDispose for remove counter ++ value
final counterProvider = StreamProvider<int>((ref) {
  final wsClient = ref.watch(websocketClientProvider);
  return wsClient.getCounterStream();
});

void main() {
  debugPrint("Go to home page");
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Return Material App");
    return MaterialApp(
      title: 'Counter App',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
          surface: const Color(0xff003909),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Return Scaffold");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Go to Counter Page'),
        onPressed: () {
          debugPrint("Go to on Counter Page");
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const CounterPage()),
            ),
          );
        },
      )),
    );
  }
}

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("Go to automatic ++ counter");
    //  final Stream<int> counter = ref.watch(counterProvider.stream);
    final AsyncValue<int> counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Text(
          // use for show counter value value
          counter
              .when(
                  data: (int value) => value,
                  error: (Object e, _) => e,
                  loading: () => 0)
              .toString(),
          //   use below in place of counter for counter valute in string
          // counter.toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
