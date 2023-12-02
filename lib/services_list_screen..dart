import 'package:flutter/material.dart';
import 'package:homepage_salon7/services..dart';


class ServicesListScreen extends StatefulWidget {
  ServicesListScreen({Key? key}) : super(key: key);

  @override
  _ServicesListScreenState createState() => _ServicesListScreenState();
}

class _ServicesListScreenState extends State<ServicesListScreen> {
  List<Services> selectedServices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: serviceList.length,
        itemBuilder: (context, index) {
          Services service = serviceList[index];
          return Card(
            child: Column(
              children: [
                Container(
                  child: ListTile(
                    leading: Image.asset(service.image),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          service.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 3,
                          ),
                        ),
                        Text(
                          service.amount,
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    subtitle: Text(service.description),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      onPressed: () {
                        _toggleService(context, service);
                      },
                      child: Text(
                        _isSelected(service) ? 'Remove' : 'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  bool _isSelected(Services service) {
    return selectedServices.contains(service);
  }

  void _toggleService(BuildContext context, Services service) {
    if (_isSelected(service)) {
      setState(() {
        selectedServices.remove(service);
      });
    } else {
      setState(() {
        selectedServices.add(service);
      });
    }

    _showSelectedServicesPopup(context);
  }

  void _showSelectedServicesPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item(s) Added/Removed to Cart!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Selected Services:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  for (Services service in selectedServices)
                    Text(
                      '- ${service.title}',
                      style: TextStyle(fontSize: 16),
                    ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
