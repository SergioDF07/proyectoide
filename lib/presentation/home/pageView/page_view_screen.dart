import 'package:flutter/material.dart';
const List<Widget> elementos = [
  CustomImage(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq02BlOtGweBnHHFmsYGhR6zF4DuJb-c6nDMYQsKUWyA&s=10'),
  CustomImage(url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCAwq0uitRaiCXU5vZAxhRPXCL-M-YpqqSKsHiDF8BOQ&s=10'),
  CustomImage(url: 'https://static.wikia.nocookie.net/monsterhunterespanol/images/e/ee/MHWI-Render_Fatalis.png/revision/latest?cb=20200828161313&path-prefix=es'),
  CustomImage(url: 'https://static.wikia.nocookie.net/monsterhunterespanol/images/f/f3/MHRise-Render_Kulu-Ya-Ku.png/revision/latest?cb=20210325182042&path-prefix=es')
];

class PageViewScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {

  int indicador = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,
          child: PageView.builder(
            onPageChanged: (value){
              setState(() {
                indicador = value;
              });
            },
            scrollDirection: Axis.vertical,
            itemCount: elementos.length,
            itemBuilder: (context, index){
              return elementos[index];
            },
          )),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index){
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: indicador == index ? 12 : 8,
                height: indicador == index ? 12 : 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: indicador == index ? Colors.black : Colors.blueGrey
                ),
              );
            }),
          ),

          const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Text("Titulo"),
                Text("Descripcion")
              ],
            ),
          )
        ],
      )
    );
  }
}


class CustomImage extends StatelessWidget {

  final String url;

  const CustomImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}