import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//creationg provider globaly
final nameProvider = Provider<String>((abc) {
  return 'Sharmila';
});

void main() {
  //ProviderScope is a widget that stores
  //the state of all the providers we create.
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyConsumerWidget(),
      home: const MyWidget(),
      //home: MyNameWidget(),
      //home: const MystlfulWidget(),
    );
  }
}

class MyConsumerWidget extends ConsumerWidget {
  const MyConsumerWidget({key});

  @override
  Widget build(BuildContext context, WidgetRef ref1) {
    final name = ref1.watch(nameProvider);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('1. Using Consumer Widget')),
            body: Center(child: Text(name))));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, WidgetRef ref, __) {
      final name = ref.watch(nameProvider);
      return MaterialApp(
          home: Scaffold(
              appBar: AppBar(title: const Text('2. Using Consumer ')),
              body: Center(child: Text(name))));
    });
  }
}
//So when should we use a Consumer over a ConsumerWidget?

//Here is one example:
/*n this case, we're wrapping only the Text with a Consumer widget,
 but not the parent Scaffold:

Scaffold
├─ AppBar
└─ Consumer
    └─ Text
As a result, only the Text will rebuild if the provider value changes
This may seem like a small detail, but if you have a big widget
 class with a complex layout, you can use Consumer 
to rebuild only the widgets that depend on the provider. */
class MyNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // 1. Add a Consumer
      body: Consumer(
        // 2. specify the builder and obtain a WidgetRef
        builder: (_, WidgetRef ref, __) {
          // 3. use ref.watch() to get the value of the provider
          final name = ref.watch(nameProvider);
          return Text(name);
        },
      ),
    );
  }
}

//3. Using ConsumerStatefulWidget & ConsumerState

class MystlfulWidget extends ConsumerStatefulWidget {
  const MystlfulWidget({key});

  @override
  ConsumerState<MystlfulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MystlfulWidget> {
  @override
  Widget build(BuildContext context) {
    //final name = ref.watch(nameProvider);
    final name = ref.read(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('3. Using ConsumerStatefulWidget & ConsumerState'),
      ),
      body: Center(child: Text(name)),
    );
  }
}
