part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(20.r),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Latest Posts".text.make(),
                  "See All".text.make(),
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Image.asset(
                        MyAssets.assetsImagesNetflix,
                        height: 120.h,
                        width: 180.w,
                        fit: BoxFit.cover,
                      ).cornerRadius(20.r),
                      10.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Netflix Will Charge Money for Password Sharing"
                              .text
                              .maxLines(2)
                              .size(16)
                              .bold
                              .make(),
                          6.h.heightBox,
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock),
                              "6 months ago".text.size(16).make()
                            ],
                          ),
                          6.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "81 Views".text.size(16).make(),
                              const Icon(FeatherIcons.bookmark),
                            ],
                          ),
                        ],
                      ).expand(),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
