import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AwsCognitoService {
  final userPool = CognitoUserPool('${(dotenv.env['POOL_ID'])}', '${(dotenv.env['POOL_ID'])}');

  Future<void> login(String email, String password) async {
    final user = CognitoUser(email, userPool);
    final authDetails = AuthenticationDetails(
      validationData: {'USERNAME': email, 'PASSWORD': password},
    );
    CognitoUserSession? session;
    try{
      session = await user.authenticateUser(authDetails);
    }catch (e){
      if (kDebugMode) {
        print(e);
      }
    }

  }

// Other authentication-related methods can be implemented here
}
