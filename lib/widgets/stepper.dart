import 'package:flutter/material.dart';



class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => new _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
        steps: _mySteps(),
        currentStep: this._currentStep,
        onStepTapped: (step){
          setState(() {
            this._currentStep = step;
          });
        },
        onStepContinue: (){
          setState(() {
            if(this._currentStep < this._mySteps().length - 1){
              this._currentStep = this._currentStep + 1;
            }else{
              //Logic to check if everything is completed
              print('Completed, check fields.');
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if(this._currentStep > 0){
              this._currentStep = this._currentStep - 1;
            }else{
              this._currentStep = 0;
            }
          });
        },
   
    );
  }

  List<Step> _mySteps(){
    List<Step> _steps = [
      Step(
        title: Text('Identity'),
        content: TextField(),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text('Credit'),
        content: TextField(),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text('Employment & Income'),
        content: TextField(),
        isActive: _currentStep >= 2,
      ),
      Step(
        title: Text('Assets'),
        content: TextField(),
        isActive: _currentStep >= 3,
      ),
      Step(
        title: Text('Property'),
        content: TextField(),
        isActive: _currentStep >= 4,
      ),
      Step(
        title: Text('Underwriting Decision'),
        content: TextField(),
        isActive: _currentStep >= 5,
      )
    ];
    return _steps;
  }
}