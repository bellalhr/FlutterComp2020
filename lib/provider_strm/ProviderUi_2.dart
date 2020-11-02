import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'EligiblityScreenProvider.dart';

class ProviderUi_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligiblityScreenProvider>(
     create: (context) => EligiblityScreenProvider(),
      child: Builder(builder: (context){
        return Scaffold(
          appBar: AppBar(
            title: Text('Provider UI'),
          ),
          body: Consumer<EligiblityScreenProvider>(
            builder: (context,provider,child){
              return Container(
                child: InkWell(
                  onTap: (){
                    provider.setConnectivityData();
                  },
                  child: Center(
                    child: Text('This is new provider data ${provider.connectivityMsg}',style: TextStyle(color: Colors.red),),
                  ),
                ),
              );
            }
          )
        );
      }
      ),
    );
  }
}
