void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _onIconPressed() {
    print('İnsan ikkonuna tiklandi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.menu),
                    Icon(Icons.menu),
                  ],
                ),
                SizedBox(width: 10),
                Text(
                  ' Hi-Kod ',
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: _onIconPressed,
            ),
          ],
        ),
        backgroundColor: Colors.indigo, // AppBar rengi koyu mavi (indigo)
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Color(0xFFBDF5F2), 
          child: Center(
            child: Container(
              width: 200,
              height: 100,
              color: Colors.indigo,
              child: Center(
                child: Text(
                  ' Hello World ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
