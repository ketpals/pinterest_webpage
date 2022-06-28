//NAME: KETAKI PALSHIKAR
//ENROLLMENT NO.: BT19CSE091

//REFERENCES:
//Staggered grid view reference: https://medium.com/flutterdevs/staggered-gridview-in-flutter-661f6667595d
//App bar reference: https://www.youtube.com/watch?v=FDNitOxpUks
// hover button reference: https://codepen.io/yeungkc/pen/dyGjrVz
// Adding more than one icon reference (both in App bar and over images): https://github.com/flutter/flutter/issues/11049
// hover widget and hover container function reference: https://pub.dev/packages/hovering
// elevated button reference: https://www.woolha.com/tutorials/flutter-using-elevatedbutton-widget-examples
//overlaying icon on image reference: https://stackoverflow.com/questions/61909064/how-to-overlay-icon-on-image-in-flutter
//image as an icon reference: https://stackoverflow.com/questions/50198885/how-to-use-an-image-instead-of-an-icon-in-flutter
//Icons reference: https://api.flutter.dev/flutter/material/Icons-class.html




import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hovering/hovering.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon cusIcon= Icon(Icons.search);
  Icon cussIcon = Icon(Icons.menu);
  Widget cusSearchBar= Text("Search");
  List<String> image =  [
'assets/photos/1.jpg',
'assets/photos/2.jpg',
'assets/photos/3.jpg',
'assets/photos/4.jpg',
'assets/photos/5.gif',
'assets/photos/6.jpg',
'assets/photos/7.jpg',
'assets/photos/8.jpg',
'assets/photos/9.jpg',
'assets/photos/10.jpg',
'assets/photos/11.jpg',
'assets/photos/12.jpg',
'assets/photos/13.jpg',
'assets/photos/14.jpg',
'assets/photos/15.jpg',
'assets/photos/16.gif',
'assets/photos/17.jpg',
'assets/photos/18.jpg',
'assets/photos/19.jpg',
'assets/photos/20.gif',
'assets/photos/21.jpg',
'assets/photos/22.jpg',
'assets/photos/23.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          
        titleSpacing: 1.0,
        title: Row(
        
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
       IconButton( 
            onPressed:(){ 
            },
            icon:Container(
          child: CircleAvatar(
            child: Image(
            image: AssetImage("assets/photos/pin.png"),
            fit: BoxFit.cover,
            height: 100,
            width: 100,
            alignment: Alignment.center,
                    ),
       ),
            ),
           hoverColor: Colors.deepOrange[300],
           iconSize: 10.0,
           ),
  
            Stack(
               children: <Widget>[
              SizedBox(width:13),
             HoverButton(onpressed: (){},
             color: Colors.white,
             textColor: Colors.black,
             hoverColor: Colors.black,
             hoverTextColor: Colors.white,
             child: Text("Home"),
             padding:  EdgeInsets.all(10.0),
             hoverPadding:  EdgeInsets.all(10.0),),
             
      ],
              
       
            ),
           
          Stack(
            children: <Widget>[
              SizedBox(width:15),
              Padding(padding: EdgeInsets.all(10)),
             HoverButton(onpressed: (){},
             color: Colors.white,
             textColor: Colors.black,
             hoverColor: Colors.black,
             hoverTextColor: Colors.white,
             child: Text("Today"),
              padding:  EdgeInsets.all(10.0),
             hoverPadding:EdgeInsets.all(10.0), ),
             
             
      ],
            ),
             Stack(
            children: <Widget>[
              IconButton(onPressed: (){
                setState(() {
                  if(this.cusIcon.icon == Icons.search){
                    this.cusIcon = Icon(Icons.close_sharp);
                    this.cusSearchBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10, width: 5.0),
            ),
                        hintText: "Search here",
                      ),
                      style: TextStyle(color: Colors.black,
                      fontSize: 16.0,
                      ),
                      );

                  }
                  else
                  {
                    this.cusIcon = Icon(Icons.search);
                   this.cusSearchBar= Text("Search");

                  }
                });
              }, 
              icon: cusIcon,
              hoverColor: Colors.deepOrange[300],
              ),

            ],
             ),
            
            Expanded(
          child: Center(child: cusSearchBar),
        ),
      ],
      
        ),
          

            actions: <Widget> [
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.notifications,color: Colors.black,),
              hoverColor: Colors.deepOrange[300],
              ),
               IconButton(onPressed: (){}, 
              icon: Icon(Icons.sms_rounded, color: Colors.black),
              hoverColor: Colors.deepOrange[300],
              ),
                 IconButton(onPressed: (){
                 },
      
              icon: Icon(Icons.account_circle_rounded, color: Colors.grey[600],),
              hoverColor: Colors.deepOrange[300],
              ),
                 IconButton(onPressed: (){}, 
              icon: Icon(Icons.expand_more_rounded, color: Colors.black,),
              hoverColor: Colors.deepOrange[300],
              ),
            ],
          centerTitle: true,
        ),
        
    
        body: Container(
        
          margin: EdgeInsets.all(12),

          child:  StaggeredGridView.countBuilder(
            
              crossAxisCount: 4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 12,
              itemCount: image.length,
              
              itemBuilder: (context, index) => new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image[index]),
                    fit: BoxFit.cover,),
                   borderRadius: BorderRadius.all(
                        Radius.circular(16)), ),
           child: HoverWidget(
           hoverChild: 
             Container(
              color: Colors.white30,
              child:HoverContainer(cursor: SystemMouseCursors.zoomIn,
               child:Stack(children: <Widget>[
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Padding(padding: EdgeInsets.only(top:8.0, right: 5.0),
               
               child: HoverButton(onpressed: (){},
                 color: Colors.red,
             textColor: Colors.white,
             padding: EdgeInsets.only(left: 5.0),
             child: Text("Save"),
             ),
                   ),
                   ],
                 ),
                 new Stack(
                  children: <Widget>[
              Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                   children: <Widget>[
                  Container(
                     child: Align(
        alignment: Alignment.bottomLeft,
        child:Padding(padding: EdgeInsets.only(left: 10.0,bottom:10.0),

        child: Container(
          padding: EdgeInsets.only(left:5.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: ElevatedButton.icon(onPressed: (){},
            icon: Icon(Icons.call_made_sharp),
             label:Text("Link",) , 
             style: ElevatedButton.styleFrom(
      primary: Colors.white60,
      onPrimary: Colors.black,
      textStyle: TextStyle(
        fontSize: 13.0,),
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
    ), 
    
    ),
        ),
        
        ),
      ),
                  ),
                   ],
                  ),
                 
                  Stack(
                     children: <Widget>[
                       Container(
                     child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(children: <Widget>[
          Padding(padding: EdgeInsets.only(left:20.0,bottom: 10.0),
      child: Container(
         height: 30.0,
         width: 30.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(100)
          ),
          child: IconButton (onPressed: (){},
          padding: EdgeInsets.only(left: 1.0),
           icon: Icon(Icons.publish),
          ),
        ),
          ),
        ],
          
        ),
            
      ),
                       
                     
                  ),
                  
                       



                     ],
                  ),
                   Stack(
                     children: <Widget>[
                       Container(
                     child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(children: <Widget>[
          Padding(padding: EdgeInsets.only(left:20.0,bottom: 10.0),
      child: Container(
         height: 30.0,
         width: 30.0,
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(100)
          ),
          child: IconButton (onPressed: (){},
          padding: EdgeInsets.only(left: 1.0),
           icon: Icon(Icons.more_horiz),
          ),
        ),
          ),
        ],
          
        ),
            
      ),
                       
                     
                  ),
                  
                       



                     ],
                  ),



                    
                ],
                
                
                  ),
                  ],
                 ),
                ]
               
              )
              
               ),
             ),
   
           onHover: (event){},
           child: 
             HoverContainer(cursor: SystemMouseCursors.basic,),),
             
              
             ),
      
              
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
              },
  
 
    
      ),
    ),
    ),
    );

          
    
  }

}
