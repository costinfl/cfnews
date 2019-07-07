import 'package:cfnews/data/model/article/article.dart';
import 'package:cfnews/repository/article_dao.dart';
import 'package:sembast/sembast.dart';

class ArticleService {
  final ArticleDao _articleDao;

  ArticleService(this._articleDao);

  Future addArticle({Article article}) async {
    await _articleDao.insert(article);
  }

  Future updateArticle({Article article}) async {
    await _articleDao.update(article);
  }

  Future deleteArticle({int id}) async {
    await _articleDao.delete(id);
  }

  Future retrieveArticle({int id}) async {
    return await _articleDao.getById(id);
  }

  Future retrieveAllSorted({List<SortOrder> sortOrders}) async {
    List<SortOrder> realSortOrders = List<SortOrder>();
//    realSortOrders.add(SortOrder('dateAdded', false));
    realSortOrders.addAll(sortOrders);
    return await _articleDao.retrieveAllSorted(realSortOrders);
  }
}
