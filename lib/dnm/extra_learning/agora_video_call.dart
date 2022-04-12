import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

//add dependence agora_uikit
//cupertino_icons: ^1.0.2
// agora_uikit: ^0.0.4

//follow below video
//https://youtu.be/GZZhhwrZMx8
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: "464d9993a15b405c8497a8b99e2aa3f2", channelName: "tryeno"),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

  // @override
  // void initState() {
  //   super.initState();
  //   initAgora();
  // }

  // void initAgora() async {
  //   await client.initialize();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          AgoraVideoViewer(
            client: client,
            layoutType: Layout.floating,
            showAVState: true,
            showNumberOfUsers: true,
          ),
          // AgoraVideoButtons(
          //   client: client,
          //   enabledButtons: const [
          //     BuiltInButtons.callEnd,
          //     BuiltInButtons.toggleMic,
          //   ],
          // ),
          AgoraVideoButtons(
            client: client,
            autoHideButtons: true,
            autoHideButtonTime: 10,
            buttonAlignment: Alignment.bottomCenter,
          )
          // AgoraVideoButtons(
          //   client: client,
          //   disconnectButtonChild: Container(
          //     padding: const EdgeInsets.all(16),
          //     color: Colors.amber,
          //     child: const Text(
          //       "End Call",
          //       style: TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          // AgoraVideoButtons(
          //   client: client,
          //   extraButtons: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: const Text("Extra"),
          //     ),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: const Text("Extra"),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
