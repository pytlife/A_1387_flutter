
import 'package:flutter/material.dart';

void main() {
  runApp(const A1387App());
}

class A1387App extends StatelessWidget {
  const A1387App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A_1387',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Dummy list of codes
  List<Map<String, String>> codes = [
    {'name': 'کد نمونه ۱', 'value': '123456789'},
    {'name': 'کد نمونه ۲', 'value': '987654321'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A_1387 Remote'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutPage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: codes.length,
        itemBuilder: (context, index) {
          var code = codes[index];
          return ListTile(
            title: Text(code['name']!),
            subtitle: Text(code['value']!),
            trailing: Wrap(
              spacing: 8,
              children: [
                IconButton(
                  icon: const Icon(Icons.send),
                  tooltip: 'ارسال',
                  onPressed: () {
                    // TODO: Implement send code functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('ارسال کد: \${code['name']}')),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  tooltip: 'ویرایش',
                  onPressed: () {
                    // TODO: Implement edit code functionality
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  tooltip: 'حذف',
                  onPressed: () {
                    // TODO: Implement delete code functionality
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add new code
        },
        child: const Icon(Icons.add),
        tooltip: 'افزودن کد جدید',
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('درباره برنامه')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('اپلیکیشن: A_1387', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(height: 8),
            Text('طراحی و توسعه توسط: amirmahdizolfghary'),
            SizedBox(height: 16),
            Text('📧 ایمیل: amirmahdizolfghary@gmail.com'),
            SizedBox(height: 8),
            Text('📞 شماره تماس: 09155538924'),
            SizedBox(height: 8),
            Text('📸 اینستاگرام: @p.ytlife'),
            SizedBox(height: 8),
            Text('✈️ تلگرام: @p.ytlife'),
          ],
        ),
      ),
    );
  }
}
