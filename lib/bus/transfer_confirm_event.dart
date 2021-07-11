import 'package:event_taxi/event_taxi.dart';
import 'package:trollium_wallet_flutter/network/model/response/account_balance_item.dart';

class TransferConfirmEvent implements Event {
  final Map<String, AccountBalanceItem> balMap;

  TransferConfirmEvent({this.balMap});
}