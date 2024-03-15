class IndexModel {
  String indexName;
  String curVal;
  String preVal;

  IndexModel(
      {required this.indexName, required this.curVal, required this.preVal});

  static List<IndexModel> getIndexVal() {
    List<IndexModel> indexValues = [];

    indexValues.add(IndexModel(
        indexName: 'Sale amount', curVal: '2,658,245', preVal: '1,123,456'));
    indexValues.add(IndexModel(
        indexName: 'Output', curVal: '60,542,154', preVal: '59,120,021'));
    indexValues.add(IndexModel(
        indexName: 'Defective Ratio', curVal: '0.25', preVal: '0.00'));

    return indexValues;
  }
}
