import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Admin Panel",
      home: AdminPanel(),
    );
  }
}

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff35374B),
        centerTitle: true,
        title: const Text(
          "AdminPanel",
          style: TextStyle(
            color: Color(0xffF2EFE5),
          ),
        ),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://i.pinimg.com/564x/b3/5e/e8/b35ee8a3b36d9f3b88c2e794f6649c11.jpg"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About as",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Setting",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Privecy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff35374B),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SearchBar(
              hintText: "Search",
              backgroundColor: MaterialStatePropertyAll(
                Color(0xffE3E1D9),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  // color: const Color(0xffC7C8CC),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/564x/b1/fa/14/b1fa14c8385a2ff824da7cc50fa7827e.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: PieChart(
                  PieChartData(
                    sections: [
                      //dart
                      PieChartSectionData(
                        title: "Dart",
                        titleStyle: const TextStyle(
                          color: Color(0xffF2EFE5),
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        showTitle: true,
                        radius: 66,
                        color: const Color(0xffBF3131),
                      ),
                      //c++
                      PieChartSectionData(
                        // value: 0,
                        title: "C++",
                        titleStyle: const TextStyle(
                          color: Color(0xffF2EFE5),
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        showTitle: true,
                        radius: 55,
                        color: const Color(0xff607274),
                      ),
                      //Html
                      PieChartSectionData(
                        // value: 0,
                        title: "Html",
                        titleStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                        showTitle: true,
                        radius: 65,
                        color: const Color(0xffC9D7DD),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //1
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF67E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 3),
                              const FlSpot(1, 4),
                              const FlSpot(2, 3.5),
                              const FlSpot(3, 5),
                              const FlSpot(4, 4),
                              const FlSpot(5, 6),
                            ],
                            isCurved: true,
                            color: const Color(0xff222831),
                            barWidth: 4,
                            isStrokeCapRound: true,
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                            color: const Color(0xff37434d),
                            width: 1,
                          ),
                        ),
                        minX: 0,
                        maxX: 5,
                        minY: 0,
                        maxY: 6,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                  ),
                  //2
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.6,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF67E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: BarChart(
                      BarChartData(
                        borderData: FlBorderData(
                          border: const Border(
                            // top: BorderSide.none,
                            // right: BorderSide.none,
                            left: BorderSide(width: 2),
                            bottom: BorderSide(width: 2),
                          ),
                        ),
                        groupsSpace: 10,
                        barGroups: [
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                fromY: 0,
                                toY: 3,
                                width: 15,
                                color: Colors.black,
                              )
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                fromY: 0,
                                toY: 6,
                                width: 18,
                                color: Colors.black,
                              )
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                fromY: 0,
                                toY: 9,
                                width: 15,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                  ),
                  // //3
                  // Container(
                  //   height: size.height * 0.3,
                  //   width: size.width * 0.6,
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xffFFF67E),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  // ),
                  // const Padding(
                  //   padding: EdgeInsets.all(15),
                  // ),
                  // Container(
                  //   height: size.height * 0.3,
                  //   width: size.width * 0.6,
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xffFFF67E),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
