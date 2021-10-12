import 'package:burc_proje/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:palette_generator/palette_generator.dart';

class burcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const burcDetay({required this.secilenBurc, Key? key,}) : super(key: key);

  @override
  _burcDetayState createState() => _burcDetayState();
}
class _burcDetayState extends State<burcDetay> {

  Color appbarRengi =Colors.transparent;
  //late PaletteGenerator _generator;

  void initState(){
    super.initState();
    //appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri",
                  style: Theme.of(context).textTheme.headline6),
              centerTitle: true,
              background: Image.asset(
                'images/' + widget.secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // void appbarRenginiBul() async{
  //   _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
  //   appbarRengi= _generator.vibrantColor!.color;
  //   setState(() {
  //
  //   });
  //   print(appbarRengi);
  //
  // }
}
