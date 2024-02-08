

import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';
import 'package:islami_app/constants/data.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({Key? key}) : super(key: key);

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(
            "assets/images/qur2an_screen_logo.png",
            height: MediaQuery.of(context).size.height * 0.25,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: DataTable(
              dividerThickness: 0,
              showBottomBorder: false,
              columnSpacing: 0,
              // headingRowHeight: 40,
              horizontalMargin: 0,
              border: TableBorder(
                verticalInside: BorderSide(
                  color: primaryLight,
                  width: 2
                )
              ),
              columns: [
                DataColumn(
                  label: Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: primaryLight,
                            width: 2,
                          )
                        )
                      ),
                      child: Text(
                          "عدد الآيات",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  )
                ),
                DataColumn(
                  label: Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: const BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                color: primaryLight,
                                width: 2,
                              )
                          )
                      ),
                      child: Text(
                          "اسم السورة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  )
                ),
              ],
              rows: [
                for (int i = 0; i < suraNames.length; i++)
                  DataRow(
                    cells: [
                      DataCell(
                        Center(
                          child: Text(
                              versesNumber[i].toString(),
                          ),
                        )
                      ),
                      DataCell(
                        Center(
                          child: Text(
                              suraNames[i].toString(),
                          ),
                        )
                      ),
                    ]
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
