import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cfnews/blocs/article_detail/package.dart';
import 'package:cfnews/data/model/article/model_article.dart';
import 'package:cfnews/ui/common/Utilities.dart';
import 'package:intl/intl.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:share/share.dart';

class SavedDetailPage extends StatefulWidget {
  final int articleId;

  const SavedDetailPage({
    Key key,
    @required this.articleId,
  }) : super(key: key);

  @override
  _SavedDetailPageState createState() => _SavedDetailPageState();
}

class _SavedDetailPageState extends State<SavedDetailPage> {
  final _articleDetailBloc = kiwi.Container().resolve<ArticleDetailBloc>();

  @override
  void dispose() {
    super.dispose();
    _articleDetailBloc.dispose();
  }

  @override
  void initState() {
    super.initState();
    _articleDetailBloc.onInit(id: widget.articleId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _articleDetailBloc,
      child: Scaffold(
        body: BlocBuilder(
          bloc: _articleDetailBloc,
          builder: _buildContent,
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ArticleDetailState state) {
    if (state is LoadingArticleDetailState) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is LoadedArticleDetailState) {
      var article = state.article;
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
            padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 0),
            child: new Column(
              children: [
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 0.0),
                      child: new Text(
                        "Saved: " +
//                        format(DateTime.fromMillisecondsSinceEpoch(
//                          int.parse(article.dateSaved ?? 0),
//                        ).toIso8601String()
//                      ),
                            _formatMyDate(DateTime.fromMillisecondsSinceEpoch(
                                    int.parse(article.dateSaved ?? 0))
                                .toIso8601String()),
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: EdgeInsets.all(0)),
                _buildCoverImage(article),
                new Padding(padding: EdgeInsets.all(0)),
                new Row(
                  children: [
                    new Expanded(
                      child: _buildArticleContent(article),
                    ),
                    _buildIconUrlColumn(article),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _buildCoverImage(Article article) {
    Widget ret;
    if (article.imageUrl == null || article.imageUrl == "") {
      ret = new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
      );
    } else {
      ret = PageUtilities.retrieveNetworkImage(
        article.imageUrl,
      );
    }
    return ret;
  }

  Widget _buildArticleContent(Article article) {
    return new GestureDetector(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 8.0),
            child: new Text(
              article.title,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 8.0),
            child: new Text(
              article.content ?? "",
              style: new TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 28.0),
            child: new Text(
              "Link: " + article.url,
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
                          int.parse(article.published ?? 0))
                      .toIso8601String()),
              style: new TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.only(
                left: 4.0, right: 8.0, bottom: 2.0, top: 28.0),
            child: Center(
              child: RaisedButton(
                onPressed: () => PageUtilities.launchURL(article.url),
                child: Text(
                  "Go to website",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
//      onTap: () => PageUtilities.launchURL(article.url),
    );
  }

  Widget _buildIconUrlColumn(Article article) {
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            _buildButtonShare(article),
//            _buildButtonNotInterested(cleanFeeds, index),
          ],
        ),
      ],
    );
  }

  GestureDetector _buildButtonShare(Article article) {
    return new GestureDetector(
      child: new Padding(
          padding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
          child: _buildColumnIcon(Icons.share)),
      onTap: () {
        _onShareTap(article.url);
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
}
