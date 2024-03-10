class TICK {
  String? symbol;
  double? ltp;
  String? type;

  TICK({this.symbol, this.ltp, this.type});

  TICK.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    ltp = json['ltp'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbol'] = symbol;
    data['ltp'] = ltp;
    data['type'] = type;
    return data;
  }
}