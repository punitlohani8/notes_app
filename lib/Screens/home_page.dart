import 'package:flutter/material.dart';
import 'package:note_app/Screens/edit_page.dart';
import 'package:note_app/ui_helper/Icon_container.dart';
import 'package:note_app/ui_helper/container_ui.dart';
import 'package:note_app/my_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tile = [
    {
      'color': MyColors.container0,
      'text': 'How to make your personal and stand out online',
      'date': 'May 21,2020',
      'width': 170.0,
      'height': 170.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
    {
      'color': MyColors.container1,
      'text': 'Bueutiful weather to make your prsonal stand out online',
      'date': 'May 18,2020',
      'width': 170.0,
      'height': 170.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
    {
      'color': MyColors.container2,
      'text':
          '10 excellent font pairing tools for designs',
      'date': 'May 16,2020',
      'width': 350.0,
      'height': 170.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
    {
      'color': MyColors.container3,
      'text':
          '10 excellent Beutiful weather How to make your prsonal nrand stand out online',
      'date': 'May 14,2020',
      'width': 170.0,
      'height': 250.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
    {
      'color': MyColors.container4,
      'text':
          '10 excellent Beutiful weather How to make your prsonal nrand stand out online',
      'date': 'May 10,2020',
      'width': 170.0,
      'height': 170.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
    {
      'color': MyColors.container6,
      'text':
          '10 excellent Beutiful weather How to make your prsonal nrand stand out online',
      'date': 'May 09,2020',
      'width': 170.0,
      'height': 170.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
    {
      'color': MyColors.container5,
      'text':
          '10 excellent Beutiful weather How to make your prsonal nrand stand out online',
      'date': 'May 05,2020',
      'width': 170.0,
      'height': 250.0,
      'desc':
          'Est pariatur veniam sit autem fugit vel dolor impedit est enim illo est molestias assumenda. Est quasi eaque est galisum galisum aut vitae tempore et mollitia soluta vel ducimus molestiae et voluptatum consequuntur. Aut enim corporis ab amet quia ut quia nisi et nobis odit. Et laudantium possimus in provident deserunt rem iure dolore eum quis sequi.\n\nLorem ipsum dolor sit amet. At aliquam dignissimos aut assumenda labore ut quas delectus. Et natus magni quo soluta dolorem ut laborum ducimus sed fuga voluptatem ut cumque nobis a quisquam nemo quo corporis omnis. Rem dolor laboriosam id eligendi cumque et cupiditate iste aut laboriosam ipsam aut laboriosam reprehenderit eos iusto culpa.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notes',
                      style: TextStyle(
                          color: MyColors.headingText,
                          fontWeight: FontWeight.w400,
                          fontSize: 36),
                    ),
                    IconContainer(
                      icon: Icons.search_outlined,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ContainerUi(
                                color: tile[0]['color'] as Color,
                                text: tile[0]['text'].toString(),
                                date: tile[0]['date'].toString(),
                                desc: tile[0]['desc'].toString()),
                            ContainerUi(
                                color: tile[1]['color'] as Color,
                                text: tile[1]['text'].toString(),
                                date: tile[1]['date'].toString(),
                                desc: tile[1]['desc'].toString()),
                          ],
                        ),
                        SizedBox(height: 10,),
                        ContainerUi(
                          color: tile[2]['color'] as Color,
                          text: tile[2]['text'].toString(),
                          date: tile[2]['date'].toString(),
                          desc: tile[2]['desc'].toString(),
                          height: tile[2]['height'] as double,
                          width: tile[2]['width'] as double,
                          titleFontSize: 26,
                        ),
                        SizedBox(height: 10,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Column(
                              children: [
                                ContainerUi(
                                  color: tile[3]['color'] as Color,
                                  text: tile[3]['text'].toString(),
                                  date: tile[3]['date'].toString(),
                                  desc: tile[3]['desc'].toString(),
                                  height: tile[3]['height'] as double,
                                  width: tile[3]['width'] as double,
                                ),
                                SizedBox(height: 10,),

                                ContainerUi(
                                    color: tile[5]['color'] as Color,
                                    text: tile[5]['text'].toString(),
                                    date: tile[5]['date'].toString(),
                                    desc: tile[5]['desc'].toString(),
                                  height: tile[5]['height'] as double,
                                  width: tile[5]['width'] as double,
                                ),
                              ],
                            ),
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ContainerUi(
                                  color: tile[4]['color'] as Color,
                                  text: tile[4]['text'].toString(),
                                  date: tile[4]['date'].toString(),
                                  desc: tile[4]['desc'].toString(),
                                  height: tile[4]['height'] as double,
                                  width: tile[4]['width'] as double,
                                ),
                                SizedBox(height: 10,),

                                ContainerUi(
                                  color: tile[6]['color'] as Color,
                                  text: tile[6]['text'].toString(),
                                  date: tile[6]['date'].toString(),
                                  desc: tile[6]['desc'].toString(),
                                  height: tile[6]['height'] as double,
                                  width: tile[6]['width'] as double,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 37,
        ),
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditPage(),
              ));
        },
      ),
    );
  }
}
