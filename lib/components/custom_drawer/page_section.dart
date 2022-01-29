import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:olx_mock/components/custom_drawer/page_tile.dart';
import 'package:olx_mock/stores/page_store.dart';

class PageSection extends StatelessWidget {
  PageSection({Key? key}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Anúncios',
          iconData: Icons.list,
          highlighted: pageStore.page == 0,
          onTap: () {
            pageStore.setPage(0);
          },
        ),
        PageTile(
          label: 'Inserir Anúncios',
          iconData: Icons.edit,
          highlighted: pageStore.page == 1,
          onTap: () {
            pageStore.setPage(1);
          },
        ),
        PageTile(
          label: 'Chat',
          iconData: Icons.chat,
          highlighted: pageStore.page == 2,
          onTap: () {
            pageStore.setPage(2);
          },
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          highlighted: pageStore.page == 3,
          onTap: () {
            pageStore.setPage(3);
          },
        ),
        PageTile(
          label: 'Minha Conta',
          iconData: Icons.person,
          highlighted: pageStore.page == 4,
          onTap: () {
            pageStore.setPage(4);
          },
        ),
      ],
    );
  }
}
