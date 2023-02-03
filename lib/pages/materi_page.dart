import 'package:flutter/material.dart';
import 'package:matematika_kelas_4_sd/models/materi.dart';
import 'package:matematika_kelas_4_sd/theme.dart';

class Materi extends StatelessWidget {
  Materi({Key? key}) : super(key: key);
  final List<MateriModel> materies = MateriModel.generatedMateri();
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
            child: SizedBox(
              width: width * .7,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: secondaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${index + 1}. ',
                        style: primaryStyle,
                      ),
                      Text(
                        materies[index].name,
                        style: primaryStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (_, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: materies.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
