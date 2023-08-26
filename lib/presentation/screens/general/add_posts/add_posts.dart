part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        title: "Add Posts".text.make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.check),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          5.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/681px-Placeholder_view_vector.svg.png",
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FeatherIcons.camera,
                  color: MyColors.primaryColor,
                ),
              ),
            ],
          ),
          10.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.r,
            hint: "Title",
          ),
          10.h.heightBox,
          VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10.r,
            hint: "Slug",
          ),
          10.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Tags".text.make(),
              const Icon(FeatherIcons.chevronRight),
            ],
          ),
          10.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Categories".text.make(),
              const Icon(FeatherIcons.chevronRight),
            ],
          ),
          10.h.heightBox,
          QuillToolbar.basic(controller: _controller),
          SizedBox(
            height: 500.h,
            child: QuillEditor.basic(
              controller: _controller,
              readOnly: false,
            ),
          )
        ],
      ),
    );
  }
}
