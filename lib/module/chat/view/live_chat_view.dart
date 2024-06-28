import 'package:flutter/material.dart';
import 'package:flutter_tawkto/flutter_tawk.dart';

class LiveChatView extends StatelessWidget {
  const LiveChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Tawk(
          directChatLink:
              'https://tawk.to/chat/667edd9c9d7f358570d48a72/1i1fp3c34',
          visitor: TawkVisitor(
            name: 'Fidelis Gulu',
            email: 'gulofidel74@gmail.com',
          ),
        ),
      ),
    );
  }
}
