import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cfnews/assets.dart';
import 'package:cfnews/blocs/user_feed//package.dart';
import 'package:cfnews/data/model/user_feed/user_feed.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class FeedsPage extends StatefulWidget {
  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  FeedsBloc _feedsBloc;
  List<UserFeed> items;// = List();

//  List<UserFeed> items = List<UserFeed>.generate(
//    100,
//    (i) => UserFeed((b) => b
//      ..id = "" + i.toString()
//      ..feedLabel = "ttt" + i.toString()
//      ..subscribed = i % 5 == 0
//      ..feedIconUrl = ""
//      ..feedUrl = "uuu"),
//  );
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _feedsBloc = kiwi.Container().resolve<FeedsBloc>();
    _feedsBloc.dispatch(LoadUserFeedsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _feedsBloc,
      child: _buidBody(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _feedsBloc.dispose();
  }

  Widget _buidBody() {
    return BlocBuilder(
      bloc: _feedsBloc,
      builder: (BuildContext context, FeedsState state) {
        if (state is FeedsLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is FeedsLoadedState) {
          items = state.userFeeds;
          return ListView.builder(
            itemCount: items != null ? items.length : 0,
            controller: _scrollController,
            itemBuilder: (context, index) {
              final userFeedItem = items[index];
              return _buildFeedItemListTile(userFeedItem, index);
            },

//            separatorBuilder: (context, index) => Divider(
//              color: Colors.black,
//              height: 5.0,
//            ),

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

  Card _buildFeedItemListTile(UserFeed userFeedItem, int index) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(5.0),
        leading: userFeedItem.feedIconUrl == ""
            ? Text('N/A')
            : CircleAvatar(
                backgroundImage: NetworkImage(
                  userFeedItem.feedIconUrl,
                ),
              ),
        title: Text(userFeedItem.feedLabel ?? "n/a"),
        subtitle: Text(userFeedItem.feedUrl ?? "n/a"),
        trailing: _buildSubscribeButtons(userFeedItem, index),
        onTap: () {
          //TODO display a list of feeds inside this collection
          print('aM APASAT');
        },
      ),
    );
  }

  void _subscriptionBtnPressed(UserFeed item, String message, index) {
    item = item.rebuild((b) => b..subscribed = !b.subscribed);
    items[index] = item;
    Flushbar(
      flushbarPosition: FlushbarPosition.BOTTOM,
      title: item.feedLabel,
      message: message,
      duration: Duration(seconds: 2),
    )..show(context);
    if (mounted) {
      this.setState(() {
        items = this.items;
      });
    }
  }

  Row _buildSubscribeButtons(UserFeed userFeed, int index) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        userFeed.subscribed
            ? new IconButton(
                icon: Icon(
                  Icons.check_circle,
//                  color: Colors.greenAccent[700],
                  color: Colors.greenAccent[700],
                ),
                onPressed: () {
                  _subscriptionBtnPressed(userFeed, "Unsubscribed", index);
                  _feedsBloc.dispatch(FeedsUnsubscribeEvent(userFeed));
                })
            : new IconButton(
                icon: new Icon(
                  Icons.add_circle_outline,
                  color: Colors.red[500],
                ),
                onPressed: () {
                  _subscriptionBtnPressed(userFeed, "Subscribed", index);
                  _feedsBloc.dispatch(FeedsSubscribeEvent(userFeed));
                },
              ),
      ],
    );
  }
}
