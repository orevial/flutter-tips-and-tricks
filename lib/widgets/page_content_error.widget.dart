import 'package:flutter/material.dart';

class PageContentError extends StatelessWidget {
  const PageContentError({
    super.key,
    this.onRetry,
  });

  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            // TODO I18N
            'An error occured',
            textAlign: TextAlign.center,
          ),
          if (onRetry != null)
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: onRetry,
                // TODO I18N
                child: const Text('Retry'),
              ),
            ),
        ],
      ),
    );
  }
}
