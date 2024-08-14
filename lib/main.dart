import 'package:flutter/material.dart';

void main() {
  runApp(const pointsCounter());
}

class pointsCounter extends StatefulWidget {
  const pointsCounter({super.key});

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamA_points = 0, teamB_points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamA_points',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              teamA_points++;
                            });

                            print('add oone point');
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              teamA_points += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              teamA_points += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      // Spacer(
                      //   flex: 12,
                      // )
                    ],
                  ),
                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamB_points',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              teamB_points++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              teamB_points += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              teamB_points += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      // Spacer(
                      //   flex: 12,
                      // )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      teamA_points = 0;
                      teamB_points = 0;
                    });
                  },
                  child: const Text(
                    'Restart',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ],
          )),
    );
  }
}
