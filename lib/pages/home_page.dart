import 'package:flutter/material.dart';
import 'package:matematika_kelas_4_sd/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background_home.png',
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Belajar',
                        style: primaryStyle.copyWith(
                            fontSize: 30, fontWeight: bold),
                      ),
                      Text(
                        'Matematika',
                        style: primaryStyle.copyWith(
                            fontSize: 30, fontWeight: bold),
                      ),
                      Text(
                        'Kelas 4 SD',
                        style: primaryStyle.copyWith(
                            fontSize: 30, fontWeight: bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/materi');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(width * .5, 60),
                      primary: secondaryColor),
                  child: Text(
                    'Mulai',
                    style:
                        primaryStyle.copyWith(fontWeight: bold, fontSize: 18),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
