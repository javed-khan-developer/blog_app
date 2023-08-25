part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Categories".text.make(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus)),
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            leading: "${index + 1}".text.size(16.sp).make(),
            title: "Title".text.size(16).make(),
            trailing: SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FeatherIcons.edit2),
                    color: MyColors.secondaryColor,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FeatherIcons.trash),
                    color: MyColors.primaryColor,
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
