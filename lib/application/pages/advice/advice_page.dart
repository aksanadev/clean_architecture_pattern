import 'package:clean_architecture_pattern/application/core/services/theme_service.dart';
import 'package:clean_architecture_pattern/application/pages/advice/widgets/advice_field.dart';
import 'package:clean_architecture_pattern/application/pages/advice/widgets/custom_button.dart';
import 'package:clean_architecture_pattern/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Advice',
          style: themeData.textTheme.headline1,
        ),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: Center(
                child: ErrorMessage(message: 'oops, something went wrong!'),

                /*AdviceField(
                  advice: 'examples advice - Keep your eyes on Him!',
                ),*/
              ),

              /*Center(
                child: CircularProgressIndicator(
                  color: themeData.colorScheme.secondary,
                ),*/

              /*Text(
                  'Your Advice is waiting for you!',
                  style: themeData.textTheme.headline1,
                ),*/
            ),
            SizedBox(
              height: 200,
              child: Center(
                child: CustomButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
