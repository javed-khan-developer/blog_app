part of 'tags_imports.dart';

class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;
  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Tags".text.make(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus)),
        ],
      ),
      body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
        bloc: tagsViewModel.tagsModelBloc,
        builder: (context, state) {
          if (state is VelocityInitialState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is VelocityUpdateState) {
            return ListView.separated(
              itemCount: state.data.tags!.length,
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemBuilder: (context, index) {
                var tagsData = state.data.tags![index];
                return Card(
                    child: ListTile(
                  leading: "${tagsData.id}".text.size(16.sp).make(),
                  title: "${tagsData.title}".text.size(16).make(),
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
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
