
class SignUpWithEmailAndPassFailure {
  final String message;

  const SignUpWithEmailAndPassFailure([this.message = "An Unknown error occured"]);
  factory SignUpWithEmailAndPassFailure.code(String code){
    switch(code){
      case 'weak-password' :
        return const SignUpWithEmailAndPassFailure('Please enter a stronger password.');
      case 'invalid-email' :
        return const SignUpWithEmailAndPassFailure('Email is not valid or badly formatted.');
      case 'email-already-in-use' :
        return const SignUpWithEmailAndPassFailure('An account already exists for that email.');
      case 'operation-not-allowed' :
        return const SignUpWithEmailAndPassFailure('Operation is not allowed. Please contact support.');
      case 'user-disabled' :
        return const SignUpWithEmailAndPassFailure('This user has been displayed. Please contact support for help.');
      default:
        return const SignUpWithEmailAndPassFailure();
    }
  }
}