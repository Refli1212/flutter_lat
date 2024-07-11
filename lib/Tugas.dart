import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Percobaan Pertama',
        ),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        actions: const [
          Icon(
            Icons.logout,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 400,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          color: Colors.green,
                          //menambahkan gambar
                          child: Image.asset('assets/images/img1.jpg'),
                        ),
                        Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          //menambahkan gambar
                          color: Colors.green,
                          child: Image.asset('assets/images/img2.jpg'),
                        ),
                      ],
                    );
                  },
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
              Flexible(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(''),
                        ),
                        title: const Text('Judul'),
                        subtitle: Row(
                          children: [
                            const Text('asik'),
                            const SizedBox(width: 12),
                            Icon(Icons.favorite, color: Colors.grey[800]),
                          ],
                        ),
                        trailing: const Icon(Icons.remove_circle),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
