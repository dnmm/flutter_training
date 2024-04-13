# Create a new Flutter project using the `flutter create` command.
        Here are the steps to create a new Flutter app project in Visual Studio Code using shortcuts:

        - Open Visual Studio Code.
        - Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac) to open the command palette.
        - Type "Flutter: New Project" and select it from the list. Press `Enter`.
        - Choose a location for your project and enter a name for it. Press `Enter`.
        - Select the type of Flutter project you want to create (e.g., "Flutter Application") and press `Enter`.
        - Wait for Visual Studio Code to create the project and set up the necessary files.
        - Once the project is created, open a terminal in Visual Studio Code (Ctrl+`) and run `flutter pub get` to get the dependencies.
        - You can now run your Flutter app using the "Run" button in the top menu bar or by pressing `F5`.

        That's it! You've successfully created a new Flutter app project in Visual Studio Code.

- Run your Flutter project using an emulator or a connected device to verify the installation.


class firsflutterapplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' first Flutter aplication ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
