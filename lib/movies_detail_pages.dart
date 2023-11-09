import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'list_pages.dart';
import 'model/model_project.dart';
import 'style_widgets/scaff.dart';

class MoviesDetailPages extends StatelessWidget {
  final Project project;
  const MoviesDetailPages({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          project.moviesName,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: MyScaffold(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFFFFF8EC),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        project.moviesName,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: AspectRatio(
                          aspectRatio: 1.75,
                          child: Image.asset(
                            project.imageUrl,
                            width: 10,
                            height: 10,
                          ),
                        ),
                      ),
                      Text(
                        project.news,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'ความยาวภาพยนตร์: ${project.Rate} นาที',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'ประเภทภาพยนตร์: ${project.type}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'ผู้กำกับ: ${project.Director}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        ' ${project.playerName}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'เรื่องย่อ : ${project.report}',
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MoviesListPage(),
                        )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 217, 139, 139),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.home_outlined,
                                size: 18.0,
                              ),
                              SizedBox(width: 5.0),
                              Text('หน้าหลัก', style: TextStyle(fontSize: 16.0))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 0.0,
                ),
                child: Divider(height: 0.0),
              ),
              const Text('แชร์ให้เพื่อน'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.line,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.discord,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.message,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.tiktok,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 169, 23, 23),
                        //size: 100,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
