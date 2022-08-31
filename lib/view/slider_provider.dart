import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice_tut2/provider/slider_model_provider.dart';

class SliderProvider extends StatefulWidget {
  const SliderProvider({Key? key}) : super(key: key);

  @override
  State<SliderProvider> createState() => _SliderProviderState();
}

class _SliderProviderState extends State<SliderProvider> {
  double value = 1;
  @override
  Widget build(BuildContext context) {
    // final SliderModelProvider slideProvider =
    //     Provider.of<SliderModelProvider>(context);
//todo:----  We Don't need this because of Consumer Widget */

    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiProvider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Adjust The Opacity'),
          const SizedBox(height: 20),
          Consumer<SliderModelProvider>(builder: (context, value, child) {
            return Slider(
                // min: 0,
                // max: 1,
                value: value.range,
                onChanged: (val) {
                  value.setOpacity(val);
                });
          }),
          Consumer<SliderModelProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(value.range)),
                    child: const Text('Counter 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.range)),
                    child: const Text('Counter 2'),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
