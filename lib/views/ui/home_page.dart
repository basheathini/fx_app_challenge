import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fx_app_challenge/theme/styles.dart';
import '../../business_logic/blocs/news/news_blocs.dart';
import '../../business_logic/repo/news_repository.dart';
import '../widgets/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(
          create: (BuildContext context) =>
              NewsBloc(NewsRepository()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Top stories',style: TextStyles.header,),
          automaticallyImplyLeading: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
          body: const ArticlesWidget()),
    );
  }
}
