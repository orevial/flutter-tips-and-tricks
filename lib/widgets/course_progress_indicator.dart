import 'package:flutter/material.dart';

class TestWidgetSample extends StatelessWidget {
  const TestWidgetSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String user = 'Devoxx';
    return Column(
      children: const [
        Text('Hello $user'),

        // 1. Optionaly display delete icon

        // 2. Display friends list
      ],
    );
  }
}

class TestWidgetForInlineIf extends StatelessWidget {
  const TestWidgetForInlineIf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bool canDeletePost = true;
    const String user = 'Devoxx';
    return Row(
      children: const [
        Text('Hello $user'),
        if (canDeletePost) Icon(Icons.delete),
      ],
    );
  }
}

class TestWidgetForInlineFor extends StatelessWidget {
  const TestWidgetForInlineFor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String user = 'Devoxx';
    final friends = ['Friend 1', 'Friend 2'];
    return Column(
      children: [
        const Text('Hello $user. Your friends :'),
        for (final friend in friends) Text(' - $friend'),
      ],
    );
  }
}

class TestWidgetForSpreadOperator extends StatelessWidget {
  const TestWidgetForSpreadOperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String user = 'Devoxx';
    final friends = ['Friend 1', 'Friend 2'];
    return Column(
      children: [
        const Text('Hello $user. Your friends :'),
        ...friends.map((friend) => Text(' - $friend'))
      ],
    );
  }
}

Widget buildPageIndicator({
  required int currentPage,
  required int totalPages,
  required Color primaryColor,
}) {
  Widget _indicator({
    required bool isActive,
    required bool isViewed,
  }) {
    final Color color;
    if (isActive) {
      color = primaryColor;
    } else if (isViewed) {
      color = primaryColor.withOpacity(0.1);
    } else {
      color = const Color(0XFFEAEAEA);
    }
    return Expanded(
      child: SizedBox(
        height: 8,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          height: isActive ? 10 : 8.0,
          width: isActive ? 12 : 8.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: color,
          ),
        ),
      ),
    );
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(
      totalPages,
      (i) {
        return _indicator(
          isActive: i == currentPage,
          isViewed: i < currentPage,
        );
      },
    ).toList(),
  );
}
