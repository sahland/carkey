import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoriteWrapperScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const FavoriteWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) => const AutoRouter();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}
