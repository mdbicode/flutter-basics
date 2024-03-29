import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppBarExample()
    );
  }
}

class AppBarExample extends StatelessWidget{
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.abc),
          title: const Text("APLIKASI ILMI"),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar'))
              );
            },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: (){
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context){
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Next page'),
                      ),
                      body: const Center(
                        child: Text(
                          'This is the next page',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  }));
              },
              )
          ],
        ),
    );
  }


}
