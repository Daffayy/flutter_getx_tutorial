import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingOverLay extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  const LoadingOverLay({
    Key? key,
    required this.isLoading,
  required this.child}) : assert(child != null),
        super (key: key);

  @override
  Widget build(BuildContext context) {
    if(isLoading){
      return Center(child: CircularProgressIndicator());
    }
    return child;
  }
}