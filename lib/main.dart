import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Promosi E-Commerce'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'https://picsum.photos/id/1/2000', // Ganti dengan URL gambar promosi
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Penawaran Spesial',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Ganti dengan jumlah item penawaran
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150.0,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      color: Colors.grey[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://picsum.photos/id/2/200', // Ganti dengan URL gambar penawaran khusus
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Item ${index + 1}',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Produk Terpopuler',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(4, (index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://picsum.photos/id/3/200${index + 1}', // Ganti dengan URL gambar produk
                          height: 100.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Nama Produk ${index + 1}',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '\$${(index + 1) * 25}', // Harga produk berdasarkan indeks
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
