import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 0;
  String _text = '';
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('홈'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '카운터',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              Text(
                '$count',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        _text = text;
                      },
                      onTap: () {
                        print(_text);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);
                        setState(() {
                          
                        });
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Text(
                _textController.text,
              ),
              Image.network(
                  'https://png.pngtree.com/background/20210714/original/pngtree-cool-background-material-picture-image_1215741.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover),
              Container(
                color: Colors.red,
                width: 120,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/pick.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
