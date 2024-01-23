import 'dart:collection';

import 'package:dicover_maisha/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IndexDiscover extends StatefulWidget {
  const IndexDiscover({Key? key}) : super(key: key);

  @override
  _IndexDiscoverState createState() => _IndexDiscoverState();
}

class _IndexDiscoverState extends State<IndexDiscover> {

  final _pageController = PageController(initialPage: 0);
  int? _currentPageNotifier;


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [_profileRow(), _stories(), _trending(), _discover()],
              ),
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
            Container(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0),
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
                          width: 120,
                          height: 180,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          margin: const EdgeInsets.fromLTRB(5.0, 8.0, 5.0, 8.0),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13.0)),
                              shape: BoxShape.rectangle,
                              color: Colors.black12),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 120,
                                  height: 180,
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
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4.0),
                                        decoration: BoxDecoration(
                                          
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.red[500]!,
                                              Colors.red,
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                        ),
                                        child: Text(
                                          'Live',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              ?.copyWith(
                                                  color: Colors.white,
                                                  shadows: [
                                                const Shadow(
                                                    color: Colors.black,
                                                    blurRadius: 2.0)
                                              ]),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('14.5K',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                ?.copyWith(
                                                    color: Colors.white,
                                                    shadows: [
                                                  const Shadow(
                                                      color: Colors.black,
                                                      blurRadius: 2.0)
                                                ])),
                                      ),
                                    ],
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

  Widget _trending() => Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
    child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => print('tapped'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Trending',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white)),
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 5.0,
                    children: [
                      Text(
                        'More',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.amber),
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.amber,
                        size: 12,
                      ),
                    ],
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 310,
            //   child: Stack(
            //     alignment: Alignment.center,
            //     children: [
            //       ...constPostItem.map((post) => _activeCard(post)),
            //       // _nonActiveCard(),
            //       // _activeCard(),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 310,
              child: GestureDetector(
                onTap: () => print('tapped'),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ...constPostItem.map((post) => _activeCard(post)),
                    // _nonActiveCard(),
                    // _activeCard(),
                  ],
                ),
              ),
            )
            // SizedBox(
            //   height: 310,
            //   child: PageView.custom(
            //     onPageChanged: (value) => setState(() {
            //       _currentPageNotifier = value;
            //     }),
            //     childrenDelegate: SliverChildBuilderDelegate(
            //       (context, index) => _activeCard(constPostItem[index]),
            //       childCount: constPostItem.length
            //       ),
            //       controller: PageController(viewportFraction: 1),
            //       scrollDirection: Axis.horizontal),
            //   ),
            
            // SizedBox(
            //   height: 310,
            //   child: PageView.builder(itemBuilder: (context, index) {
            //     return _activeCard(constPostItem[index]);
            //   }, itemCount: constPostItem.length, scrollDirection: Axis.horizontal,),
            // )
          ],
        ),
  );

  Widget _discover() => Padding(
       padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => print('tapped'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Discover',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white)),
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 5.0,
                    children: [
                      Text(
                        'More',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.amber),
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.amber,
                        size: 12,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 310,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _nonActiveCard(),
                  // _activeCard(),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _nonActiveCard() => Transform(
        // origin: Offset.fromDirection(1.5, 1.5),
        alignment: Alignment.centerRight,
        transform: Matrix4.identity()..scale(0.8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Container(
            width: double.infinity,
            height: 310,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey.shade900.withOpacity(.8),
            ),
          ),
        ),
      );

  Widget _activeCard(Map<String, dynamic> post) => Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(0.95),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Container(
            padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
            width: double.infinity,
            height: 310,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey.shade900.withOpacity(.9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          width: double.infinity,
                          height: 170,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  post['post_img']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () => print('tapped'),
                            borderRadius: BorderRadius.circular(20.0),
                            child: PhysicalShape(
                              elevation: 20,
                              color: Colors.yellow.shade600,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              clipper: const ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0)))),
                              child: Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 12.0, 12.0, 12.0),
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.yellow.shade500,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(20.0)),
                                  ),
                                  child: Wrap(
                                    direction: Axis.horizontal,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    spacing: 5.0,
                                    children: [
                                      const Icon(
                                        Icons.thumb_up_off_alt,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Like',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            ?.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Stack(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.shade800.withOpacity(.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          post['avatar']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              direction: Axis.vertical,
                              alignment: WrapAlignment.spaceBetween,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              spacing: 5.0,
                              children: [
                                Text(post['name'], style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),

                                Text(post['handle'], style: Theme.of(context).textTheme.overline?.copyWith(
                                    color: Colors.grey,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),

                      RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        text: TextSpan(text: post['caption'],)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
