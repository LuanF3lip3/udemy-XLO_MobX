import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  PageTile({Key? key,
   this.labal,
   this.iconData,
   this.ontap,
   this.highlinghted}) : super(key: key);
 
  final String? labal;
  final IconData? iconData;
  final VoidCallback? ontap;
  final bool? highlinghted;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(labal!,
      style: TextStyle(color: highlinghted! ? Colors.purple : Colors.black87,
      fontWeight: FontWeight.w700,
      ),
      ),
      leading: Icon(iconData,
      color: highlinghted! ? Colors.purple : Colors.black,
      ),
      onTap: ontap,

    );
  }
}