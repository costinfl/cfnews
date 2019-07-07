import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cfnews/assets.dart';
import 'package:cfnews/blocs/article/package.dart';
import 'package:cfnews/blocs/home_list/package.dart';
import 'package:cfnews/data/model/article/model_article.dart';
import 'package:cfnews/data/model/home_list/model_home_list.dart';
import 'package:cfnews/ui/common/Utilities.dart';
import 'package:cfnews/ui/home/home_detail_page.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:share/share.dart';
import 'package:timeago/timeago.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeListBloc _homeListBloc;
  ArticleBloc _articleBloc;

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _homeListBloc = kiwi.Container().resolve<HomeListBloc>();
    _articleBloc = kiwi.Container().resolve<ArticleBloc>();
    _homeListBloc.dispatch(LoadHomeListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      child: _buidBody(),
      blocProviders: <BlocProvider>[
        BlocProvider(
          bloc: _homeListBloc,
        ),
        BlocProvider(
          bloc: _articleBloc,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _homeListBloc.dispose();
  }

  Future<void> _refreshScreen() async {
    _homeListBloc.dispatch(LoadHomeListEvent());
  }

  Widget _buidBody() {
    return BlocBuilder(
      bloc: _homeListBloc,
      builder: (BuildContext context, HomeListState state) {
        if (state is InitialHomeListState) {
          return _displayMessage(
            message: 'Subscribe to some feeds',
            icon: Icons.collections,
          );
        }
        if (state is HomeListLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is HomeListLoadedState) {
          return RefreshIndicator(
            onRefresh: _refreshScreen,
            child: ListView.builder(
              itemCount:
                  state.homeList != null ? state.homeList.items.length : 0,
              controller: _scrollController,
              itemBuilder: (context, index) {
                final homeListItem = state.homeList.items[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(5),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    child: new Padding(
                      padding: new EdgeInsets.all(8.0),
                      child: new Column(
                        children: [
                          new Row(
                            children: <Widget>[
                              new Padding(
                                padding: new EdgeInsets.only(left: 0.0),
                                child: new Text(
                                  format(
                                    DateTime.fromMillisecondsSinceEpoch(
                                      homeListItem.updated,
                                    ),
                                  ),
                                  style: new TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          new Padding(padding: EdgeInsets.all(5)),
                          _buildCoverImage(homeListItem),
                          new Padding(padding: EdgeInsets.all(0)),
                          new Row(
                            children: [
                              new Expanded(
                                child: _buildOpenFeedUrl(homeListItem),
                              ),
                              _buildIconUrlColumn(homeListItem)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              padding:
                  EdgeInsets.only(bottom: DimensionsAssets.customAppBarHeight),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _displayMessage({String message, IconData icon}) {
    return Center(
      child: Opacity(
        opacity: 0.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 40,
            ),
            Text(
              message,
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCoverImage(HomeListItem homeListItem) {
    Widget ret;
    if (homeListItem.coverUrl == null || homeListItem.coverUrl == "") {
      if (homeListItem.visualUrl == null || homeListItem.visualUrl == "") {
        ret = new Container(
          decoration: new BoxDecoration(
            color: homeListItem.coverColor == null ||
                    homeListItem.coverColor == ""
                ? Colors.white
                : Color(
                    0xFF000000 + int.parse(homeListItem.coverColor, radix: 16)),
          ),
        );
      } else {
        ret = PageUtilities.retrieveNetworkImage(
          homeListItem.visualUrl,
        );
      }
    } else {
      ret = PageUtilities.retrieveNetworkImage(
        homeListItem.coverUrl,
      );
    }
    return ret;
  }

  GestureDetector _buildOpenFeedUrl(HomeListItem homeListItem) {
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
            padding: new EdgeInsets.only(left: 4.0, right: 4.0, bottom: 4.0),
            child: new Text(
              homeListItem.articleUrl,
              style: new TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) {
            return HomeDetailPage(
              homeListItem: homeListItem,
            );
          }),
        );
      },
//      onTap: () => PageUtilities.launchURL(homeListItem.articleUrl),
    );
  }

  Column _buildIconUrlColumn(HomeListItem homeListItem) {
//    var iconDomain = Uri.parse(homeListItem.articleUrl).host;
    return new Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 5.0),
          child: homeListItem.iconUrl != null
              ? PageUtilities.retrieveNetworkImage(homeListItem.iconUrl,
                  width: DimensionsAssets.iconImageWidth,
                  height: DimensionsAssets.iconImageHeight)
              : new Icon(Icons.add_a_photo),
        ),
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

  void _onShareTap(String url) {
    Share.share(url);
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
