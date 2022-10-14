import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class McmCalculatorComponent extends StatefulWidget {
  const McmCalculatorComponent({Key? key}) : super(key: key);

  @override
  State<McmCalculatorComponent> createState() => _McmCalculatorComponentState();
}

String result = '0';
String initialFirstValue = '0';
String initialSecondValue = '0';
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController firstNumberController = TextEditingController();
final TextEditingController secondNumberController = TextEditingController();
final FocusNode focusNodeFirst = FocusNode();
final FocusNode focusNodeSecond = FocusNode();

class _McmCalculatorComponentState extends State<McmCalculatorComponent> {
  @override
  void initState() {
    firstNumberController.text = initialFirstValue.toString();
    secondNumberController.text = initialSecondValue.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Calculadora de MCM',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: CustomTextFormField(
                textInputType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], //
                controller: firstNumberController,
                focusNode: focusNodeFirst,
                textStyle: Theme.of(context).textTheme.headline5,
                onSubmitted: (value) {
                  onSubmitted(
                    firstNumberController.text,
                    secondNumberController.text,
                  );
                },
                inputDecoration: InputDecoration(
                  labelText: '',
                  errorMaxLines: 2,
                  iconColor: Colors.black,
                  //  suffixIcon: _suffixIcon,
                  errorStyle: const TextStyle(fontSize: 12),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  enabledBorder: Helpers.outlineInputBorder(Colors.black26),
                  focusedBorder: Helpers.outlineInputBorder(Colors.blueAccent),
                ),
                //  validator: _validator,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: CustomTextFormField(
                textInputType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], //
                controller: secondNumberController,
                focusNode: focusNodeSecond,
                textStyle: Theme.of(context).textTheme.headline5,
                onSubmitted: (value) {
                  onSubmitted(
                    firstNumberController.text,
                    secondNumberController.text,
                  );
                },
                inputDecoration: InputDecoration(
                  labelText: '',
                  errorMaxLines: 2,
                  iconColor: Colors.black,
                  //  suffixIcon: _suffixIcon,
                  errorStyle: const TextStyle(fontSize: 12),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  enabledBorder: Helpers.outlineInputBorder(Colors.black26),
                  focusedBorder: Helpers.outlineInputBorder(Colors.blueAccent),
                ),
                //  validator: _validator,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              height: 50,
              width: double.infinity,
              child: CustomElevatedButton(
                label: 'Calcular',
                buttonStyle: Theme.of(context).elevatedButtonTheme.style,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
                onTap: () {
                  onSubmitted(
                    firstNumberController.text,
                    secondNumberController.text,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Resultado:',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    result,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onSubmitted(String firstValue, String secondValue) {
    if (Helpers.isNumber(firstValue) && Helpers.isNumber(secondValue)) {
      var firstVal = int.tryParse(firstValue.trim())!;
      var secondVal = int.tryParse(secondValue.trim())!;
      var leastCommonMultiple =
          Helpers.leastCommonMultiple(firstVal, secondVal);
      setState(() {
        result = leastCommonMultiple.toString();
        initialFirstValue = firstValue;
        initialSecondValue = secondValue;
      });
    }
  }
}
