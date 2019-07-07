import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cfnews/blocs/article/package.dart';
import 'package:cfnews/data/model/article/article.dart';
import 'package:cfnews/data/model/home_list/model_home_list.dart';
import 'package:cfnews/ui/common/Utilities.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:share/share.dart';

class HomeDetailPage extends StatefulWidget {
  final HomeListItem homeListItem;

  const HomeDetailPage({
    Key key,
    @required this.homeListItem,
  }) : super(key: key);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState(this.homeListItem);
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  ArticleBloc _articleBloc;
  final HomeListItem homeListItem;

  _HomeDetailPageState(this.homeListItem);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _articleBloc = kiwi.Container().resolve<ArticleBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _articleBloc,
      child: Scaffold(
        body: BlocBuilder(
          bloc: _articleBloc,
          builder: _buildContent,
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ArticleState state) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 30),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          child: new Padding(
            padding:
                EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    new Padding(padding: EdgeInsets.all(0)),
                    _buildCoverImage(homeListItem),
                    new Padding(padding: EdgeInsets.all(0)),
                    new Row(
                      children: [
                        new Expanded(
                          child: _buildArticleContent(homeListItem),
                        ),
                        _buildIconUrlColumn(homeListItem),
                      ],
                    ),
                    Padding(
                      padding: new EdgeInsets.only(
                          left: 4.0, right: 8.0, bottom: 2.0, top: 18.0),
                      child: Center(
                        child: RaisedButton(
                          onPressed: () =>
                              PageUtilities.launchURL(homeListItem.articleUrl),
                          child: Text(
                            "Go to website",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _buildCoverImage(HomeListItem homeListItem) {
    Widget ret;
    if (homeListItem.coverUrl == null || homeListItem.coverUrl == "") {
      ret = new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
      );
    } else {
      ret = PageUtilities.retrieveNetworkImage(
        homeListItem.coverUrl,
      );
    }
    return ret;
  }

  Widget _buildArticleContent(HomeListItem homeListItem) {
    return new GestureDetector(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 8.0),
            child: new Text(
              homeListItem.title,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 8.0),
            child: new Text(
              homeListItem.content ?? "",
              style: new TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 28.0),
            child: new Text(
              "Link: " + homeListItem.articleUrl,
              style: new TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 8.0),
            child: new Text(
              "Published: " +
                  _formatMyDate(DateTime.fromMillisecondsSinceEpoch(
                          int.parse(homeListItem.publishDate ?? 0))
                      .toIso8601String()),
              style: new TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
//      onTap: () => PageUtilities.launchURL(article.url),
    );
  }

  Widget _buildIconUrlColumn(HomeListItem homeListItem) {
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            _buildButtonShare(homeListItem),
            _buildButtonBookmark(homeListItem),
//            _buildButtonNotInterested(cleanFeeds, index),
          ],
        ),
      ],
    );
  }

  GestureDetector _buildButtonShare(HomeListItem homeListItem) {
    return new GestureDetector(
      child: new Padding(
          padding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
          child: _buildColumnIcon(Icons.share)),
      onTap: () {
        _onShareTap(homeListItem.articleUrl);
      },
    );
  }

  Column _buildColumnIcon(IconData icon) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new Icon(icon, color: color),
      ],
    );
  }

  void _onShareTap(String url) {
    Share.share(url);
  }

  String _formatMyDate(String sourceDate) {
    String finalDate = sourceDate;
    finalDate = finalDate.replaceAll("-", "");
    finalDate = finalDate.substring(0, sourceDate.lastIndexOf(".") - 2);
    finalDate = finalDate.replaceAll(":", "");
    finalDate = finalDate.replaceAll("T", "");
    String dateWithT = finalDate.substring(0, 8) + 'T' + finalDate.substring(8);
    DateTime dateTime = DateTime.parse(dateWithT);
    final f = new DateFormat.yMMMMd("en_US").add_Hms();
    finalDate = f.format(dateTime);
    return finalDate;
  }

  GestureDetector _buildButtonBookmark(HomeListItem homeListItem) {
    return new GestureDetector(
      child: new Padding(
          padding: new EdgeInsets.all(5.0),
          child: _buildColumnIcon(Icons.bookmark)),
      onTap: () {
        _onBookmarkTap(homeListItem);
      },
    );
  }

  void _onBookmarkTap(HomeListItem homeListItem) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      title: homeListItem.title,
      message: 'Article saved',
      duration: Duration(seconds: 2),
    )..show(context);
    Article article = _convertHomeListItemToArticle(homeListItem);
    _articleBloc.dispatch(AddArticleEvent(article));
  }

  Article _convertHomeListItemToArticle(HomeListItem homeListItem) {
    Article article = Article((b) => b
      ..id = 1
      ..title = homeListItem.title
      ..content = homeListItem.content
      ..logoUrl = homeListItem.iconUrl
      ..imageUrl = homeListItem.coverUrl
      ..url = homeListItem.articleUrl
      ..published = homeListItem.publishDate
      ..dateSaved = DateTime.now().millisecondsSinceEpoch.toString());
    return article;
  }
}
