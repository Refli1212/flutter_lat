import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Percobaan Pertama',
        ),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.settings),
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
                          //menambahkan gambar
                          ///child: Image.asset(''),
                          color: Colors.green,
                        ),
                        Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          //menambahkan gambar
                          //child: Image.asset(''),
                          color: Colors.green,
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
                  padding: EdgeInsets.all(16),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(''),
                        ),
                        title: Text('Judul'),
                        subtitle: Row(
                          children: [
                            Text('asik'),
                            SizedBox(width: 12),
                            Icon(Icons.favorite, color: Colors.grey[800]),
                          ],
                        ),
                        trailing: Icon(Icons.remove_circle),
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
