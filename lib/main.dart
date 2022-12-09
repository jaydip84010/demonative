import 'package:flutter/material.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.initialize();
  MobileAds.setTestDeviceIds(['71C4E5B58F6EDD39D33737C347621A72']);
  runApp(MaterialApp(
    home: DemoNative(),
    debugShowCheckedModeBanner: false,
  ));
}

class DemoNative extends StatefulWidget {
  const DemoNative({Key? key}) : super(key: key);

  @override
  State<DemoNative> createState() => _DemoNativeState();
}

class _DemoNativeState extends State<DemoNative>
    with AutomaticKeepAliveClientMixin {
  final controller = NativeAdController();

  @override
  void initState() {
    super.initState();
    controller.load(keywords: ['valorant', 'games', 'fortnite']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Native inline ad',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              NativeAd(
                height: 150,
                builder: (context, child) {
                  return Material(
                    elevation: 8,
                    child: child,
                  );
                },
                buildLayout: smallAdTemplateLayoutBuilder,
                // buildLayout: secondBuilder,
                loading: Text('loading'),
                error: Text('error'),
                icon: AdImageView(size: 70),
                headline: AdTextView(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                ),
                body: AdTextView(style: TextStyle(color: Colors.black)),
                advertiser: AdTextView(style: TextStyle(color: Colors.black)),
                media: AdMediaView(height: 80, width: 120),
                button: AdButtonView(
                  decoration: AdDecoration(backgroundColor: Colors.blue),
                  textStyle: TextStyle(color: Colors.white),
                ),
                attribution: AdTextView(
                  width: WRAP_CONTENT,
                  text: 'Ad',
                  decoration: AdDecoration(
                    border: BorderSide(color: Colors.green, width: 2),
                    borderRadius: AdBorderRadius.all(16.0),
                  ),
                  style: TextStyle(color: Colors.green),
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Native benner ad',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              NativeAd(
                controller: controller,
                height: 60,
                builder: (context, child) {
                  return Material(
                    elevation: 8,
                    child: child,
                  );
                },
                buildLayout: adBannerLayoutBuilder,
                loading: Text('loading'),
                error: Text('error'),
                icon: AdImageView(padding: EdgeInsets.only(left: 6)),
                headline: AdTextView(style: TextStyle(color: Colors.black)),
                advertiser: AdTextView(style: TextStyle(color: Colors.black)),
                body: AdTextView(
                    style: TextStyle(color: Colors.black), maxLines: 1),
                media: AdMediaView(height: 70, width: 120),
                button: AdButtonView(
                  margin: EdgeInsets.only(left: 6, right: 6),
                  textStyle: TextStyle(color: Colors.green, fontSize: 14),
                  elevation: 18,
                  elevationColor: Colors.amber,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Native ad',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              NativeAd(
                height: 320,
                unitId: MobileAds.nativeAdVideoTestUnitId,
                builder: (context, child) {
                  return Material(
                    elevation: 8,
                    child: child,
                  );
                },
                buildLayout: mediumAdTemplateLayoutBuilder,
                // buildLayout: fullBuilder,
                loading: Text('loading'),
                error: Text('error'),
                icon: AdImageView(size: 40),
                headline: AdTextView(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                ),
                body: AdTextView(
                    style: TextStyle(color: Colors.black), maxLines: 1),
                media: AdMediaView(
                  height: 170,
                  width: MATCH_PARENT,
                ),
                attribution: AdTextView(
                  width: WRAP_CONTENT,
                  text: 'Ad',
                  decoration: AdDecoration(
                    border: BorderSide(color: Colors.green, width: 2),
                    borderRadius: AdBorderRadius.all(16.0),
                  ),
                  style: TextStyle(color: Colors.green),
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 1.0),
                ),
                button: AdButtonView(
                  elevation: 18,
                  decoration: AdDecoration(backgroundColor: Colors.blue),
                  height: MATCH_PARENT,
                  textStyle: TextStyle(color: Colors.white),
                ),
                ratingBar: AdRatingBarView(starsColor: Colors.white),
              ),
              SizedBox(height:10,),
              Center(
                child: Text(
                  'Native inline ad',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              NativeAd(
                height: 100,
                builder: (context, child) {
                  return Material(
                    elevation: 8,
                    child: child,
                  );
                },
                buildLayout: secondBuilder,
                loading: Text('loading'),
                error: Text('error'),
                icon: AdImageView(size: 80),
                headline: AdTextView(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
                media: AdMediaView(height: 80, width: 120),
              ),
              SizedBox(height:10,),
              Center(
                child: Text(
                  'Native inline ad',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              NativeAd(
                height: 270,
                // unitId: MobileAds.nativeAdVideoTestUnitId,
                builder: (context, child) {
                  return Material(
                    elevation: 8,
                    child: child,
                  );
                },
                buildLayout: fullBuilder,
                loading: Text('loading'),
                error: Text('error'),
                icon: AdImageView(size: 40),
                headline: AdTextView(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
                media: AdMediaView(
                  height: 180,
                  width: MATCH_PARENT,
                  elevation: 6,
                  elevationColor: Colors.deepPurpleAccent,
                ),
                attribution: AdTextView(
                  width: WRAP_CONTENT,
                  height: WRAP_CONTENT,
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                  margin: EdgeInsets.only(right: 4),
                  maxLines: 1,
                  text: 'Anúncio',
                  decoration: AdDecoration(
                    borderRadius: AdBorderRadius.all(10),
                    border: BorderSide(color: Colors.green, width: 1),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                button: AdButtonView(
                  elevation: 18,
                  elevationColor: Colors.amber,
                  height: MATCH_PARENT,
                ),
                ratingBar: AdRatingBarView(starsColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
  AdLayoutBuilder get secondBuilder => (ratingBar, media, icon, headline,
      advertiser, body, price, store, attribution, button) {
    return AdLinearLayout(
      padding: EdgeInsets.all(10),
      // The first linear layout width needs to be extended to the
      // parents height, otherwise the children won't fit good
      width: MATCH_PARENT,
      orientation: HORIZONTAL,
      decoration: AdDecoration(
        gradient: AdRadialGradient(
          colors: [Colors.blue[300]!, Colors.blue[900]!],
          center: Alignment(0.5, 0.5),
          radius: 1000,
        ),
      ),
      children: [
        icon,
        AdLinearLayout(
          children: [
            headline,
            AdLinearLayout(
              children: [attribution, advertiser, ratingBar],
              orientation: HORIZONTAL,
              width: WRAP_CONTENT,
              height: 20,
            ),
            button,
          ],
          margin: EdgeInsets.symmetric(horizontal: 4),
        ),
      ],
    );
  };

  AdLayoutBuilder get fullBuilder => (ratingBar, media, icon, headline,
      advertiser, body, price, store, attribuition, button) {
    return AdLinearLayout(
      padding: EdgeInsets.all(10),
      // The first linear layout width needs to be extended to the
      // parents height, otherwise the children won't fit good
      width: MATCH_PARENT,
      decoration: AdDecoration(
          gradient: AdLinearGradient(
            colors: [Colors.indigo[300]!, Colors.indigo[700]!],
            orientation: AdGradientOrientation.tl_br,
          )),
      children: [
        media,
        AdLinearLayout(
          children: [
            icon,
            AdLinearLayout(children: [
              headline,
              AdLinearLayout(
                children: [attribuition, advertiser, ratingBar],
                orientation: HORIZONTAL,
                width: MATCH_PARENT,
              ),
            ], margin: EdgeInsets.only(left: 4)),
          ],
          gravity: LayoutGravity.center_horizontal,
          width: WRAP_CONTENT,
          orientation: HORIZONTAL,
          margin: EdgeInsets.only(top: 6),
        ),
        AdLinearLayout(
          children: [button],
          orientation: HORIZONTAL,
        ),
      ],
    );
  };
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
