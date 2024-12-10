import 'package:faithcast/models/constants.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';

class ContentSlides extends StatefulWidget {
  const ContentSlides({super.key, required this.title});

  final String title;

  @override
  State<ContentSlides> createState() => _ContentSlidesState();
}

class _ContentSlidesState extends State<ContentSlides> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: bodytexttitle,
                    fontFamily: primaryFont),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Show all',
                  style: TextStyle(
                      color: buttonColor,
                      fontSize: smalltext,
                      fontFamily: primaryFont),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: podcastImages.length,
                itemBuilder: (_, index) {
                  final podcastImage = podcastImages[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            SizedBox(
                              child: FastCachedImage(
                                url: podcastImage,
                              ),
                              height: 130,
                              width: 130,
                            ),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
