import 'package:flutter/material.dart';
import 'package:projeto_aula/amiibos/amiibo.dart';
import 'package:projeto_aula/amiibos/amiibo_service.dart';
import 'package:projeto_aula/amiibos/card_amiibo.dart';

class AmiiboScreen extends StatefulWidget {
  const AmiiboScreen({super.key});

  @override
  State<AmiiboScreen> createState() => _AmiiboScreenState();
}

class _AmiiboScreenState extends State<AmiiboScreen> {
  bool loading = false;
  List<Amiibo> amiibos = [];
  final AmiiboService amiiboService = AmiiboService();
  final TextEditingController _controllerText = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future getAmiibos(String name) async{
    amiibos = await amiiboService.getAmiibos(name);
    setState(() {
      loading = false;
    });
  }

  Widget renderList(){
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: amiibos.length,
      itemBuilder: (context, item){
        return CardAmiibo(amiibo: amiibos[item]);
      }
    );
  }

  Widget loadingWidget(List<Amiibo> list){
    if(list.isEmpty){
      return Text('Faça uma busca');
    }
    return renderList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amiibo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _controllerText,
            ),
            TextButton(onPressed: 
            () async {
              setState(() {
                loading = true;
              });
              await getAmiibos(_controllerText.text);
              setState(() {
                loading = false;
              });
            }, child: Text('Buscar')),
            loading ? 
            CircularProgressIndicator() : 
            loadingWidget(amiibos)
          ],
        ),
      )
    );
  }
}