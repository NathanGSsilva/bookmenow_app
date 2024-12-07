// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DetalhesServicosPage extends StatelessWidget {
  
  final Map<String, dynamic>servico;
  
  const DetalhesServicosPage({super.key, required this.servico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Detalhes"),
      backgroundColor: Colors.white,
    ),
    backgroundColor: Colors.white,
    body: Column(
      children: [
        Image.network(servico['fotos'][0]['imagem'], 
        height: 200, 
        width: double.infinity,
        fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(servico['titulo'], style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(height: 10,),
        Text(servico['descricao']),
        SizedBox(height: 10,),
        Text('R\$ ${double.parse(servico['valor']).toStringAsFixed(2)}', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.amber),),

          Divider(),

          Text(servico['endereco']),
          Text(servico['bairro']),
          Text(servico['cep']),
          Text(servico['telefone']),
          Text(servico['celular']),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.phone),
            label: Text("Ligar") 
            ),
            
          ElevatedButton.icon(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.whatsapp),
            label: Text("Ligar") 
            ),

            ]
          )
      ],
    ),
    );
  }
}