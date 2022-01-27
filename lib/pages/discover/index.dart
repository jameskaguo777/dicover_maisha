import 'package:flutter/material.dart';

class IndexDiscover extends StatefulWidget {
  const IndexDiscover({Key? key}) : super(key: key);

  @override
  _IndexDiscoverState createState() => _IndexDiscoverState();
}

class _IndexDiscoverState extends State<IndexDiscover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [_profileRow(), _stories(), _trending()],
        ),
      )),
    );
  }

  Widget _profileRow() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 5.0,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/200/300'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 1.0,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'James Kaguo',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Public',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: Colors.white70))),
                  ],
                )
              ],
            ),
            Ink(
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.softLight,
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.8),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.white70, size: 30.0),
                )),
          ],
        ),
      );

  Widget _stories() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Stories',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.white)),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 200,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          margin: const EdgeInsets.fromLTRB(5.0, 8.0, 5.0, 8.0),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              shape: BoxShape.rectangle,
                              color: Colors.black12),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 100,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://picsum.photos/100/200'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Transform(
                                  transform: Matrix4.identity()..scale(0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Chip(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8.0),
                                        ),
                                      ),
                                      side: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                          style: BorderStyle.solid),
                                      label: Text(
                                        'Live',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      backgroundColor: Colors.red,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                          child: Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 5.0,
                            children: [
                              Text('James Kaguo',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(color: Colors.white)),
                              const Icon(Icons.verified_user,
                                  color: Colors.green, size: 12),
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      );

  Widget _trending() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Text('Trending', style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white)),
          Wrap(
            children: const [
              Text('More'),
              Icon(Icons.arrow_forward_rounded)
            ],
          )
        ],
      )
    ],
  );
}
