// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.theme.canvasColor,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}"
                .text
                .xl4
                .color(context.theme.hintColor)
                .bold
                .make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.highlightColor),
                shape: MaterialStateProperty.all(const StadiumBorder()),
              ),
              child: "Add to cart".text.make(),
            ).wh(120, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  width: context.screenWidth,
                  color: context.theme.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.xl3
                          .color(context.theme.highlightColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .lg
                          .make(),
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque auctor, elit eget consectetur rhoncus, ligula sapien malesuada enim, nec vestibulum arcu lorem eu tellus. Sed bibendum eros pretium, commodo est et, auctor metus. Aliquam erat volutpat. Maecenas id sapien bibendum, tempor ex sed, mattis ex."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p8(),
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
