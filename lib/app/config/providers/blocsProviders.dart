import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/modules/home/cubit/homeCubit.dart';
import '../myApp.dart';
import '../router/routerSimpleCubit.dart';

class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) =>
            RouterSimpleCubit(context.watch<RouterSimpleCubit>().state),
      ),
      BlocProvider(
        create: (context) => HomeCubit(),
      ),
    ], child: const MyApp());
  }
}
