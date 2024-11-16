import 'package:go_router/go_router.dart';
import 'package:userapp/presentation/screens/crear_cuenta/crear_cuenta.dart';
import 'package:userapp/presentation/screens/cuenta_detalle/cuenta_detalle.dart';
import 'package:userapp/presentation/screens/inicio/inicio.dart';


final appRouter = GoRouter(
  initialLocation: '/userApp/inicio',
  routes: [
    GoRoute(path: '/userApp/inicio',
    builder: (context, state) {
      return const Inicio();
    }),
    GoRoute(path: '/userApp/crearCuenta',
    builder: (context, state) {
      return const CrearCuenta();
    }),
    GoRoute(path: '/userApp/:nombre/:edad/:ocupacion',
    builder: (context, state) {
      final nombre = state.pathParameters['nombre'].toString();
      final edad = int.parse(state.pathParameters['edad'].toString());
      final ocupacion = state.pathParameters['ocupacion'].toString();
      return CuentaDetalle(nombre: nombre, edad: edad, ocupacion: ocupacion);
    })
  ]
);