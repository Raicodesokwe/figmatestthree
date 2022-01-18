import 'package:flutter/material.dart';

import 'leadingarrow.dart';

class PastTest extends StatelessWidget {
  const PastTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: LeadingArrow(size: size),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              height: size.height * 0.1,
              width: size.width * 0.33,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset('assets/bahasha.png'),
                    const Text('Test'),
                    const Spacer(),
                    Image.asset('assets/downarrow.png'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              'Figma test',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim pr'),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              height: 50,
              width: size.width * 0.4,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Attachments',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.4,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: size.width * 0.3,
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey.withOpacity(0.2),
                      child: const Center(
                        child: Text(
                          '15.75/20',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: size.width * 0.55,
                    child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'See the solution',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const [
            BottomNavigationBarItem(
              label: '',
                icon: ImageIcon(
              AssetImage(
                'assets/mucii.png',
              ),
              color: Colors.grey,
            )),
            BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(
                  AssetImage(
                    'assets/meso.png',
                  ),
                  color: Colors.grey,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(
                  AssetImage(
                    'assets/wallet.png',
                  ),
                  color: Colors.grey,
                )),
            BottomNavigationBarItem(
                label: '.',
                icon: ImageIcon(
                  AssetImage(
                    'assets/grad.png',
                  ),
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(
                AssetImage('assets/pason.png'),
                color: Colors.grey,
              ),
            )
          ]),
    );
  }
}
