import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rubix_flutter/core/constants.dart';
import 'package:rubix_flutter/core/styles/button_styles.dart';
import 'package:rubix_flutter/core/styles/text_styles.dart';
import 'package:rubix_flutter/features/cubit/homepage_cubit.dart';

import 'package:rubix_flutter/features/widgets/cube_action.dart';

class CubeActionPane extends StatelessWidget {
  const CubeActionPane({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomepageCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...MoveLetterCodes.moveLettersList.map(
                (String moveCode) => CubeAction(
                  icon: Icons.rotate_left,
                  caption: moveCode,
                  onClick: () => switch (moveCode) {
                    'R' => cubit.right(),
                    'L' => cubit.left(),
                    'U' => cubit.up(),
                    'D' => cubit.down(),
                    'F' => cubit.front(),
                    'B' => cubit.back(),
                    String() => throw Exception('Invalid move code'),
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...MoveLetterCodes.moveLettersList.map(
                (String moveCode) => CubeAction(
                  icon: Icons.rotate_left,
                  caption: moveCode,
                  onClick: () => switch (moveCode) {
                    'R' => cubit.right(inverse: true),
                    'L' => cubit.left(inverse: true),
                    'U' => cubit.up(inverse: true),
                    'D' => cubit.down(inverse: true),
                    'F' => cubit.front(inverse: true),
                    'B' => cubit.back(inverse: true),
                    String() => throw Exception('Invalid move code'),
                  },
                  isReverse: true,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyles.lightBlueButtonStyle,
                  onPressed: cubit.turnUp,
                  child: const Text(
                    'X',
                    style: TextStyles.black12,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyles.lightBlueButtonStyle,
                  onPressed: cubit.turnRight,
                  child: const Text(
                    'Y',
                    style: TextStyles.black12,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyles.lightBlueButtonStyle,
                  onPressed: cubit.turnDown,
                  child: const Text(
                    'X`',
                    style: TextStyles.black12,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyles.lightBlueButtonStyle,
                  onPressed: cubit.turnLeft,
                  child: const Text(
                    'Y`',
                    style: TextStyles.black12,
                  ),
                ),
              ),
            ],
          ),

          // CubeAction(
          //   icon: Icons.rotate_left,
          //   caption: 'Back',
          //   onClick: () => Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) => const AnimatedPage(),
          //     ),
        ],
      ),
    );
  }
}
