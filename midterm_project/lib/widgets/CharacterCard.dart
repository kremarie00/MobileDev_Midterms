import 'dart:ui';

import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String? characterName;
  final String? vision;
  final String? nation;
  final String? constellation;
  final int? rarity;
  final String? urlName;
  // final String visionArtURL;

  CharacterCard({
    this.characterName,
    this.vision,
    this.nation,
    this.constellation,
    this.rarity,
    this.urlName,
    // required this.visionArtURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.blue.shade50.withOpacity(0.35),
              BlendMode.multiply,
            ),
            image: AssetImage('assets/bg_gacha_splash.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(urlName.toString()),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: Text(
                        characterName.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ))
          ],
        ));
  }
}
