import 'package:flutter/material.dart';

class CrazyAnimationAss1 extends StatefulWidget {
  const CrazyAnimationAss1({super.key});

  @override
  State<CrazyAnimationAss1> createState() => _CrazyAnimationAss1State();
}

class _CrazyAnimationAss1State extends State<CrazyAnimationAss1> {
  bool expanBtn = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    expanBtn = true;
                  },
                  child: Text("Expan",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: size.width*.045,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width:expanBtn? size.width: size.width*.53,
                        height:expanBtn? size.width*.54: size.width*.53,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                      // Positioned(
                      //     child: Container(
                      //         width:expanBtn?size.width *.1: size.width*0.3,
                      //         height: expanBtn? size.width*.1: size.width*0.3,
                      //         decoration:BoxDecoration(
                      //             color: Color(0xff3d3b3b),
                      //             borderRadius: BorderRadius.circular(100)
                      // )
                      // ),
                      // ),
                      Container(
                        width: size.width*.47,
                        height: size.width*.47,
                        decoration: BoxDecoration(
                          color: Color(0xff3d3b3b),
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                      Container(
                        width: size.width*.41,
                        height: size.width*.41,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
