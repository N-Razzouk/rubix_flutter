import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rubix_flutter/features/cubit/homepage_cubit.dart';
import 'package:rubix_flutter/features/widgets/cube_action_pane.dart';
import 'package:rubix_flutter/features/widgets/cube_display.dart';

/// The homepage of the app.
class Homepage extends StatelessWidget {
  /// Constructor for [Homepage].
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomepageCubit, HomepageState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  flex: 2,
                  child: CubeDisplay(
                    cube: state.cube,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Expanded(
                  child: CubeActionPane(),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
