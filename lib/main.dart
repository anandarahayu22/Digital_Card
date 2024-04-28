import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital_Card',
      home: DigitalCard(),
    );
  }
}

class DigitalCard extends StatelessWidget {
  final String acara = 'PENGURUS HIMATIF UCIC 2023/2024';
  final String nama = 'Ananda Rahayu';
  final String jabatan = 'Ketua Divisi Public Relations';
  final String no = '+6283873780478';
  final String email = 'anandarahayu967@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Card Kelompok 5 (Kartu Anggota Himpunan)'),
        centerTitle: true,
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return _buildHorizontalCard();
            } else {
              return _buildVerticalCard();
            }
          },
        ),
      ),
    );
  }

  Widget _buildHorizontalCard() {
    return Container(
      width: 600,
      height: 200,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.orange, Colors.yellow],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/yoes.png'),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1.0),
                  ),
                ),
                child: Text(
                  acara,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 8),
              Text(
                nama,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                jabatan,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                no,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                email,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalCard() {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.orange, Colors.yellow],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/yoes.png'),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
            child: Text(
              acara,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Text(
            nama,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            jabatan,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            no,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            email,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
