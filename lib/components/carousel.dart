import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 9, bottom: 9),
      child: CarouselSlider(
        items: [
          newImage(
            'https://images.unsplash.com/photo-1558637845-c8b7ead71a3e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80'
            ),
          newImage(
            'https://images.unsplash.com/photo-1527843812948-a8c2ddd2fb68?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
            ),
          newImage(
            'https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80'
            ),
          newImage(
            'https://images.unsplash.com/photo-1504672281656-e4981d70414b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
            ),
          newImage(
            'https://images.unsplash.com/photo-1499428665502-503f6c608263?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
            ),
        ],
        options: CarouselOptions(
          aspectRatio: 16/8,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

Container newImage(String image) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image),
        ),
    ),
  );
}
