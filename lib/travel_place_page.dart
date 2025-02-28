import 'package:flutter/material.dart';

class TravelPlacePage extends StatelessWidget {
  const TravelPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget imageSection = Image.asset('assets/img/place.jpg', width: size.width, height: size.height * .30, fit: BoxFit.cover,);
    Widget imageSectionL = Image.asset('assets/img/place.jpg', width: size.width * .45, height: size.height, fit: BoxFit.cover,);
    Widget titleSection = Padding(
        padding: EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text("San Antonio de las Alazanas", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Text("Arteaga, Coahuila, México", style: TextStyle(color: Colors.blueGrey[600]),)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.amber,),
            Text("41")
          ],
        ),
    );
    Widget buttonsSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBtnColumn("CALL", Icons.call, Colors.blue),
        _buildBtnColumn("ROUTE", Icons.near_me, Colors.blue),
        _buildBtnColumn("SHARE", Icons.share, Colors.blue),
      ],
    );
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(32),
      child: Text('Proin congue malesuada nisl a dapibus. Proin ornare urna accumsan, vulputate leo vel, volutpat dolor. Ut in lacus vitae eros dictum rutrum. Phasellus consequat malesuada nunc, sit amet luctus nunc venenatis in. Vivamus lobortis, lorem at hendrerit porta, dui quam sodales ante, non porttitor nisl mi vitae metus. Nunc fringilla sit amet arcu sit amet sagittis. Etiam sodales tristique auctor. Praesent malesuada imperdiet blandit. Vestibulum leo nunc, posuere non dolor sed, pretium sollicitudin sem. Cras et dui volutpat, ultrices lorem sed, tristique eros. Aliquam nec ex tristique diam vulputate semper nec at ante. Morbi porta ornare pellentesque.'
        'Mauris mollis est tellus, nec convallis dolor auctor quis. Donec nibh libero, vulputate ornare pharetra in, malesuada nec velit. Nam in tempor augue. Vestibulum iaculis nisi tristique vehicula semper. Ut tincidunt eros lacus, in venenatis odio lobortis convallis. Donec metus massa, maximus quis cursus ac, malesuada quis orci. Proin mollis tempor orci sed efficitur. Duis condimentum viverra semper. Curabitur cursus lobortis nisi nec ultricies.'

          'Duis urna mi, euismod id sagittis quis, efficitur eu nulla. Morbi in ipsum eget dui dictum pulvinar non a mi. Curabitur fringilla gravida arcu ut viverra. Mauris faucibus faucibus diam, id mattis ex aliquet id. Etiam commodo dolor vitae tristique commodo. Suspendisse ipsum eros, tincidunt nec lacus at, faucibus euismod nunc. Donec et tristique tellus. Quisque non sodales neque. Curabitur efficitur ligula id orci imperdiet commodo. Quisque vitae arcu id sem elementum elementum a ut risus. Maecenas quis diam tempor libero ornare bibendum. Sed gravida euismod velit. Sed in leo leo.', softWrap: true,textAlign: TextAlign.justify,),
    );

    return Scaffold(
      body: OrientationBuilder(
          builder: (context, orientation) {
            if(orientation == Orientation.portrait){
              return SingleChildScrollView(
                child: Column(
                  children: [
                    imageSection,
                    titleSection,
                    buttonsSection,
                    descriptionSection
                  ],
                ),
              );
            }else{
             return Row(
               children: [
                 imageSectionL,
                 Expanded(child:SingleChildScrollView(
                   child: Column(
                     children: [
                       titleSection,
                       buttonsSection,
                       descriptionSection
                     ],
                   ),
                 ))
               ],
             );
            }
          }
      ),
    );
  }

  Widget _buildBtnColumn(String title, IconData icon, Color color){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color,),
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(title, style: TextStyle(color: color),),
        )
      ],
    );
  }
}
