class FeedlyError implements Exception {
  static final generalError =
      'There was an error while accessing the webservice';
  final String message;

  FeedlyError(this.message);
}
