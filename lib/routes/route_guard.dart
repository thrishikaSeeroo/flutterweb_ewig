import 'package:auto_route/auto_route.dart';
import 'package:east_and_west/routes/router.gr.dart';
import 'package:east_and_west/util/auth_service.dart';

class RouteGuard extends AutoRedirectGuard {
  final AuthService authService;

  RouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        // should be called when the logic effecting this guard changes
        // e.g when the user is no longer authenticated
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    print("Auth service index value is ${authService.index}");

    String path = resolver.route.path;
    print("path $path");

    if (path == 'dashboard') {
      resolver.next(true);
      router.push(DashboardRoute());
    } else if (path == 'products') {
      resolver.next(true);
      router.push(ProductsRoute());
    } else if (path == 'add_products') {
      resolver.next(true);
      router.push(AddProductsRoute());
    }
    resolver.next(true);

   // if(authService.index == 1){
   //    resolver.next();
   //    router.push(DashboardRoute());
   //  } else if(authService.index == 2){
   //    resolver.next();
   //    router.push(ProductsRoute());
   //  }else if(authService.index == 3){
   //    resolver.next();
   //    router.push(AddProductsRoute());
   //  } else if(authService.index == 0){
   //   resolver.next();
   //   router.push(
   //     LoginRoute(
   //       onLoginCallback: (_) {
   //         resolver.next();
   //         // router.removeLast();
   //       },
   //     ),
   //   );
   // }

    // if (authService.authenticated)
    //   return resolver.next();
    // router.push(
    //   LoginRoute(
    //     onLoginCallback: (_) {
    //       resolver.next();
    //       router.removeLast();
    //     },
    //   ),
    // );
  }


}
