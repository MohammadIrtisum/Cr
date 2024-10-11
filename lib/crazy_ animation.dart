import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CrazyAnimation extends StatelessWidget {
  const CrazyAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool expanBtn  = false.obs;
    return Obx(()=>Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SingleChildScrollView(
            child: SizedBox(
              width: size.width,
              height: size.height,
              child:Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top:expanBtn.value?110: 0,
                    left:expanBtn.value?190: 0,
                    child: GestureDetector(
                      onTap: (){
                        expanBtn.value = true;
                      },
                      child: Text(expanBtn.value?"RIPPLE":"Expan",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: size.width*.045,
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 355),
                    curve: Curves.easeOut,
                    width:expanBtn.value? size.width: size.width*.45,
                    height:expanBtn.value? size.width*.6: size.width*.45,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:expanBtn.value?BorderRadius.circular(55): BorderRadius.circular(1000),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width*.04,)
                                    ),
                                    TextSpan(
                                        text: "  item in cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.width*.035,
                                            height: 0,
                                            fontWeight: FontWeight.w900
                                        )
                                    )
                                  ]
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: Text.rich(
                                TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Icon(Icons.history_toggle_off_outlined,color: Colors.white,size: size.width*.04,)
                                      ),
                                      TextSpan(
                                          text: "  purchase history",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: size.width*.035,
                                              height: 0,
                                              fontWeight: FontWeight.w900
                                          )
                                      )
                                    ]
                                ),

                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(Icons.settings_rounded,color: Colors.white,size: size.width*.04,)
                                    ),
                                    TextSpan(
                                        text: "  app setting",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.width*.035,
                                            height: 0,
                                            fontWeight: FontWeight.w900
                                        )
                                    )
                                  ]
                              ),

                            ),
                          ],
                        ),
                      ],
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
                  Positioned(
                    top: expanBtn.value?0:220,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      width:expanBtn.value?size.width*.21:size.width*.38,
                      height:expanBtn.value?size.width*.21: size.width*.38,
                      decoration: BoxDecoration(
                        color: Color(0xff3d3b3b),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom:expanBtn.value?35: 240,
                    right:expanBtn.value?0:155 ,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 355),
                      curve: Curves.easeOut,
                      width:expanBtn.value?size.width*.15: size.width*.31,
                      height:expanBtn.value?size.width*.15: size.width*.31,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}