import 'package:faithcast/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBarTitle extends StatefulWidget {
  const AppBarTitle({super.key});

  @override
  State<AppBarTitle> createState() => _AppBarTitleState();
}

class _AppBarTitleState extends State<AppBarTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            child:Image.asset('assets/images/titlebar/man.png', height: 40, width: 40,)
          ),
          SizedBox(width: 6,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello,', style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: bodytext),),
              Text('George', style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: subtitles),),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: Offset(-1,1)
                  )
                ],
              ),
              child: Icon(Iconsax.notification),
            ),
          ),
          SizedBox(width: 6,),

        ],
      ),
    );
  }
}
