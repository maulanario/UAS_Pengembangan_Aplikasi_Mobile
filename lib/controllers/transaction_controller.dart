// import 'dart:developer';

// import 'package:degrees_36_interior_app/models/transaction_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TransactionController extends GetxController {
//   RxBool isLoading = false.obs;
//   RxList<TransactionModel> transactionItems = <TransactionModel>[].obs;

//   @override
//   void onInit() {
//     getTransactionItems();
//     super.onInit();
//   }

//   Future<bool> addToTransaction(TransactionModel listTransactionModel) async {
//     try {
//       await TransactionDatabaseHelper.instance.insert(listTransactionModel);
//       return true;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   Future getTransactionItems() async {
//     try {
//       isLoading.value = true;
//       log("jrj");
//       final datas = await TransactionDatabaseHelper.instance.query();
//       log("Datas = $datas");
//       transactionItems.value = datas;
//       isLoading.value = false;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   Future deleteTransactionItem(int id) async {
//     try {
//       await TransactionDatabaseHelper.instance.delete(id).then((value) {});
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
// }
