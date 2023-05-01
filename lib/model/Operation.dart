class Operation {
  String operation;
  String button;
  double result = 0;
  bool error = false;
  Operation(this.operation, this.button);

  void modifyOperation() {
    if (button == 'C') {
      operation = '0';
    } else if (button == 'del') {
      // delete last charcater
      operation = operation.substring(0, operation.length - 1);
      operation = operation.isEmpty || operation == '-' ? '0' : operation;
    } else if (button == "=" ||
        (isOperation(button) && containSign(operation))) {
      if (checkSyntaxBeforeClcul()) {
        return;
      }
      // get result of operation
      result = convertStringToOperation();
      operation = result.toString();
      if (button != '=') {
        operation += button;
      }
    } else {
      // check if user type [+, -, /, *]
      // or type a sign as the first character
      if ((containSign(operation) && isOperation(button)) ||
          (operation == '0' && isOperation(button) && button != '-')) {
        print("8+888");
        return;
      }

      if (isOperation(operation[operation.length - 1]) && isOperation(button)) {
        return;
      }
      
      // delete '0' if the user start typing
      // new operation
      if (operation == '0' && (button != '.' || button == '-')) {
        operation = '';
      }

      // get operation
      operation += button;
    }
  }

  double convertStringToOperation() {
    String firstNumber = '', secondNumber = '', operationType = '';
    List<String> Op = [];

    Op = splitOperation();
    firstNumber = Op[0];
    operationType = Op[1];
    secondNumber = Op[2];
    error = mathCheckError(secondNumber, operationType);
    if (error == true) {
      return 0;
    }
    return calculateOperation(firstNumber, secondNumber, operationType);
  }

  List<String> splitOperation() {
    List<String> op = ["", "", ""];
    int j = 0;

    for (int i = 0; i < operation.length; i++) {
      if (isNumber(operation[i]) ||
          operation[i] == '.' ||
          (operation[i] == '-' && i == 0)) {
        op[0] += operation[i];
      } else if (isOperation(operation[i])) {
        op[1] = operation[i];
        j = i + 1;
        do {
          op[2] += operation[j];
          j++;
        } while (j < operation.length);
        break;
      }
    }

    return op;
  }

  bool isOperation(String char) {
    if (char == '+' || char == '-' || char == '*' || char == '/') {
      return true;
    }
    return false;
  }

  bool isNumber(chracter) {
    if (int.tryParse(chracter).runtimeType == int) {
      return true;
    }
    return false;
  }

  bool containSign(String str) {
    str = str.substring(1, str.length);
    if (str.contains(RegExp(r'[+\-*/]'))) {
      return true;
    }
    return false;
  }

  bool mathCheckError(secondOperand, operationType) {
    print("second Operand = " + secondOperand);
    print("operation Type = " + operationType);
    if (secondOperand == '0' && operationType == '/') {
      return true;
    }
    return false;
  }

  bool checkSyntaxBeforeClcul() {
    bool SynError = false;

    // check if the user push '=' button without entering
    // the second operand
    if (isOperation(operation[operation.length - 1]) || operation == '0') {
      SynError = true;
    }

    // if the user enter just one number and then
    // press '=' button will get that number as a result
    if (!containSign(operation)) {
      try {
        result = double.parse(operation);
        SynError = true;
      } catch (e) {
        throw (e);
      }
    }

    return SynError;
  }

  double calculateOperation(
      String firstOperand, String secondOperand, String operationT) {
    double op1 = double.parse(firstOperand);
    double op2 = double.parse(secondOperand);
    double res = 0;

    switch (operationT) {
      case '+':
        res = op1 + op2;
        break;
      case '-':
        res = op1 - op2;
        break;
      case '*':
        res = op1 * op2;
        break;
      case '/':
        res = op1 / op2;
        break;
    }

    return res;
  }
}
