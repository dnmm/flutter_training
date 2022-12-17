import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//creationg provider globaly
final usingConsumerWidget = Provider<String>((ref) {
  return 'Using Consumer Widget';
});

final usingConsumerStatelessWidgetFirst = Provider<String>((ref) {
  return 'Using Consumer StatelessWidget First';
});

final usingConsumerStatelessWidgetSecond = Provider<String>((ref) {
  return 'Using Consumer StatelessWidget Second';
});

final usingConsumerStatefulWidget = Provider<String>((ref) {
  return 'Using ConsumerStateful Widget';
});

class RiverPodStateManagment extends StatelessWidget {
  const RiverPodStateManagment({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RiverPod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  home: const MyConsumerWidget(),
      //  home: const MyConsumerStatelessWidgetFirst(),
      // home: MyConsumerStatelessWidgetSecond(),
      home: const MyConsumerStatefulWidget(),
    );
  }
}

class MyConsumerWidget extends ConsumerWidget {
  const MyConsumerWidget({key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(usingConsumerWidget);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('1. Using Consumer Widget')),
            body: Center(child: Text(name))));
  }
}

class MyConsumerStatelessWidgetFirst extends StatelessWidget {
  const MyConsumerStatelessWidgetFirst({key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, WidgetRef ref, __) {
      final name = ref.watch(usingConsumerStatelessWidgetFirst);
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
class MyConsumerStatelessWidgetSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // 1. Add a Consumer
      body: Consumer(
        // 2. specify the builder and obtain a WidgetRef
        builder: (_, WidgetRef ref, __) {
          // 3. use ref.watch() to get the value of the provider
          final name = ref.watch(usingConsumerStatelessWidgetSecond);
          return Center(child: Text(name));
        },
      ),
    );
  }
}

//3. Using ConsumerStatefulWidget & ConsumerState

class MyConsumerStatefulWidget extends ConsumerStatefulWidget {
  const MyConsumerStatefulWidget({key});

  @override
  ConsumerState<MyConsumerStatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MyConsumerStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(usingConsumerStatefulWidget);
    //final name = ref.read(usingConsumerStatefulWidget);
    return Scaffold(
      appBar: AppBar(
        title: Text('Using ConsumerStatefulWidget & ConsumerState'),
      ),
      body: Center(child: Text(name)),
    );
  }
}
