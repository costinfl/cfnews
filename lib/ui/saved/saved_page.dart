import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cfnews/assets.dart';
import 'package:cfnews/blocs/article/package.dart';
import 'package:cfnews/data/model/article/model_article.dart';
import 'package:cfnews/ui/saved/saved_detail_page.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:timeago/timeago.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  ArticleBloc _articleBloc;
  List<Article> items; // = List();

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _articleBloc = kiwi.Container().resolve<ArticleBloc>();
    _articleBloc.dispatch(LoadArticlesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _articleBloc,
      child: _buildBody(),
    );
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Mock button'),
//      ),
//      body: _buidBody(),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: () {
//          _articleBloc.dispatch(
//              AddArticleEvent(RandomArticleGenerator.getRandomArticle()));
//        },
//      ),
//    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _articleBloc.dispose();
  }

  Widget _buildBody() {
    return BlocBuilder(
      bloc: _articleBloc,
      builder: (BuildContext context, ArticleState state) {
        if (state is ArticlesLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ArticlesLoadedState) {
          items = state.articles;
          return ListView.builder(
            itemCount: items != null ? items.length : 0,
            controller: _scrollController,
            itemBuilder: (context, index) {
              final articleItem = items[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(articleItem.imageUrl),
                  ),
                  title: Text(articleItem.title),
                  subtitle: new Text(
                    format(
                      DateTime.fromMillisecondsSinceEpoch(
                        int.parse(articleItem.dateSaved),
                      ),
                    ),
                    style: new TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                  trailing: _buildDeleteButton(articleItem),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return SavedDetailPage(
                          articleId: articleItem.id,
                        );
                      }),
                    );
                  },
                ),
              );
            },
            padding: EdgeInsets.only(
                left: 8.0,
                top: 0.0,
                right: 8.0,
                bottom: DimensionsAssets.customAppBarHeight),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Row _buildDeleteButton(Article article) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () {
            _articleBloc.dispatch(DeleteArticleEvent(article));
          },
        ),
      ],
    );
  }
}
