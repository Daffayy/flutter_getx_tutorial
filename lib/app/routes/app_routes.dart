part of 'app_pages.dart';


abstract class Routes {
  Routes._();


  static const HOME = _Paths.HOME;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const ALERTS = _Paths.ALERTS;
  static const ACCOUNT = _Paths.ACCOUNT;
  }

  abstract class _Paths {
  static const HOME = '/home';
  static const DASHBOARD = '/dashboard';
  static const ALERTS = '/alerts';
  static const ACCOUNT = '/account';
  }
