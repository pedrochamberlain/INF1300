import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/detalhe_empresa.png'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Sobre a empresa',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in varius enim, quis vehicula nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris aliquam ultrices convallis. Fusce vel hendrerit nunc. Aliquam viverra a sem tempus faucibus. Fusce et faucibus justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque luctus urna quam. Proin massa odio, lacinia sed laoreet sed, ultricies eu felis. \n\n'
                    'Nullam commodo, sapien auctor condimentum vulputate, ipsum ipsum rhoncus mi, ac molestie purus tellus tempus quam. Cras eu eros pulvinar, euismod mauris vitae, suscipit nisi. Praesent semper turpis iaculis consequat volutpat. Sed tempor vulputate ex ac fringilla. Sed vel leo et neque laoreet molestie at sed ligula. Etiam elementum vestibulum lectus, nec finibus purus iaculis non.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
