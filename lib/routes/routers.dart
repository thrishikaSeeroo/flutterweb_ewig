import 'package:auto_route/auto_route.dart';
import 'package:east_and_west/routes/route_guard.dart';
import 'package:east_and_west/views/dashboard/dashboard_screen.dart';
import 'package:east_and_west/views/dashboard/products/add_products/add_products_screen.dart';
import 'package:east_and_west/views/dashboard/products/products_screen.dart';
import 'package:east_and_west/views/home/homepage.dart';
import 'package:east_and_west/views/properties_detail/properties_detail_page.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeViewPage,
      name: 'HomeRoute',
      path: '/',
    ),
    AutoRoute(
      page: DashboardScreen,
      name: 'DashboardRoute',
      path: '/dashboard',
      guards: [RouteGuard],
      children: <AutoRoute>[
        AutoRoute<EmptyRouterPage>(
          name: 'ProductsRoute',
          path: 'products',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              page: PropertiesDetailsPage,
              path: '',
            ),
            // AutoRoute(
            //     page: ProductsScreen,
            //     name: 'AddProductsRoute',
            //     path: 'add_products'),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}