import 'package:flutter/material.dart';
import 'package:xlo_mobx/components/custom_drawer/pagetile.dart';

class PageSection extends StatelessWidget {
  const PageSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          labal: 'Anúncios',
          iconData: Icons.list,
          ontap: (){},
          highlinghted: false,

        ),
        PageTile(
          labal: 'Favoritos',
          iconData: Icons.favorite,
          ontap: (){},
          highlinghted: true,

        ),
        PageTile(
          labal: 'Inserir Anúncios',
          iconData: Icons.edit,
          ontap: (){},
          highlinghted: false,

        ),
        PageTile(
          labal: 'Chat',
          iconData: Icons.chat,
          ontap: (){},
          highlinghted: false,

        ),
        PageTile(
          labal: 'Minha Conta',
          iconData: Icons.person,
          ontap: (){},
          highlinghted: false,

        ),
      ],
    );
  }
}