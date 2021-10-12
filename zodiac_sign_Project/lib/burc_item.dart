import 'package:burc_proje/burc_detay.dart';
import 'package:burc_proje/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;

  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 6,
        child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        burcDetay(secilenBurc: listelenenBurc)));
              },
              leading: Image.asset("images/" + listelenenBurc.burcKucukResim),
              title: Text(
                listelenenBurc.burcAdi,
                style: myTextStyle.headline6,
              ),
              subtitle: Text(
                listelenenBurc.burcTarihi,
                style: myTextStyle.subtitle2,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.pink,
              ),
            )),
      ),
    );
  }
}
