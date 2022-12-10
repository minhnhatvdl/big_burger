import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorMenu extends StatelessWidget {
  const ErrorMenu({this.onRefresh, Key? key}) : super(key: key);
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            appLocalizations.serverError,
            style: theme.textTheme.subtitle2,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: theme.primaryColor),
          onPressed: onRefresh,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              appLocalizations.refreshButton,
              style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
