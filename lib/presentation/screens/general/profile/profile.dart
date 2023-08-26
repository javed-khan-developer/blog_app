part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.logOut).pOnly(right: 10),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 450,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(MyAssets.assetsImagesNetflix),
                  ),
                  10.h.heightBox,
                  "Javed Khan".text.bold.xl2.white.make(),
                  "javed123@gmail.com".text.bold.xl2.white.make(),
                  10.h.heightBox,
                  "Users authorized by Licensee to use the Software, which is used for subscription management, and technical support purposes."
                      .text
                      .white
                      .xl
                      .center
                      .make(),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.white.bold.make(),
                          "Posts".text.white.bold.make()
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.white.bold.make(),
                          "Followers".text.white.bold.make()
                        ],
                      ),
                      Column(
                        children: [
                          "0".text.white.bold.make(),
                          "Following".text.white.bold.make()
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My Posts".text.xl3.bold.make(),
                GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(MyAssets.assetsImagesNetflix)
                            .cornerRadius(10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "netflix will charge money for password dharing"
                                .text
                                .medium
                                .make()
                                .expand(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(FeatherIcons.moreVertical),
                            )
                          ],
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
