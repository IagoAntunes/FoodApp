import 'package:flutter/material.dart';

class MessageFavorites extends StatelessWidget {
  const MessageFavorites({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.heart_broken,
            color: Colors.grey,
            size: 90,
          ),
          SizedBox(
            width: 160,
            child: Text(
              'Você não adicionou nada a lista de favoritos.',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
