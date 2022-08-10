import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:internet_connectivity_state/page3.dart';

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offline Demo"),
      ),
      body: OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
          return Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                height: 24.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  color: connected
                      ? const Color(0xFF00EE44)
                      : const Color(0xFFEE4400),
                  child: Center(
                    child: Text("${connected ? 'ONLINE' : 'OFFLINE'}"),
                  ),
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text(
                      'Yay!',
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>PageNo3()));
                    }, child: const Text("flutter_online/offline")),
                  ],
                ),
              ),
            ],
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'There are no bottons to push :)',
            ),
            new Text(
              'Just turn off your internet.',
            ),
          ],
        ),
      ),
    );
  }
}
