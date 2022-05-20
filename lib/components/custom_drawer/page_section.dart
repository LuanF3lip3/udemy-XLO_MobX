import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:xlo_mobx/components/custom_drawer/pagetile.dart';
import '../../stores/page_store.dart';

class PageSection extends StatelessWidget {
  PageSection({ Key? key }) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          labal: 'Anúncios',
          iconData: Icons.list,
          ontap: (){
            pageStore.setPage(0);
          },
          highlinghted: pageStore.page == 0,

        ),
        PageTile(
          labal: 'Favoritos',
          iconData: Icons.favorite,
          ontap: (){
            pageStore.setPage(1);
          },
          highlinghted: pageStore.page == 1,

        ),
        PageTile(
          labal: 'Inserir Anúncios',
          iconData: Icons.edit,
          ontap: (){
            pageStore.setPage(2);
          },
          highlinghted: pageStore.page == 2,

        ),
        PageTile(
          labal: 'Chat',
          iconData: Icons.chat,
          ontap: (){
            pageStore.setPage(3);
          },
          highlinghted: pageStore.page == 3,

        ),
        PageTile(
          labal: 'Minha Conta',
          iconData: Icons.person,
          ontap: (){
            pageStore.setPage(4);
          },
          highlinghted: pageStore.page == 4,

        ),
      ],
    );
  }
}