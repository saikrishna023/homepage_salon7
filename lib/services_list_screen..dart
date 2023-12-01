import 'package:flutter/material.dart';
import 'package:homepage_salon7/services..dart';


class ServicesListScreen extends StatelessWidget {
  const ServicesListScreen({Key? key});

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
                        _showAddPopup(context, service.title);
                      },
                      child: Text(
                        'Add',
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

  void _showAddPopup(BuildContext context, String serviceName) {
    List<String> selectedServices = []; // Initialize an empty list

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
                    'Item Added to Cart!',
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
                  for (String service in selectedServices)
                    Text(
                      '- $service',
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
