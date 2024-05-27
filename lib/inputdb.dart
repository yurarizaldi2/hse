import 'package:flutter/material.dart';
import 'package:hse_apps/database_helper.dart';

class InputDB extends StatefulWidget {
  const InputDB({Key? key}) : super(key: key);

  @override
  _InputDBState createState() => _InputDBState();
}

class _InputDBState extends State<InputDB> {
  // semua data
  List<Map<String, dynamic>> myData = [];
  final formKey = GlobalKey<FormState>();

  bool _isLoading = true;
  // mengambil semua data dari database
  void _refreshData() async {
    final data = await DatabaseHelper.getItems();
    setState(() {
      myData = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData(); // Loading data waktu hse apps start
  }

  final TextEditingController _parameterController = TextEditingController();
  final TextEditingController _nilaiController = TextEditingController();

  // akan aktif saatu floating button kanan diklik
  // aktif juga saat update item
  void showMyForm(int? id) async {
    // id == null -> buat item baru
      // id != null -> update item yang ada
    if (id != null) {      
      final existingData = myData.firstWhere((element) => element['id'] == id);
      _parameterController.text = existingData['parameter'];
      _nilaiController.text = existingData['nilai'];
    } else {
      _parameterController.text = "";
      _nilaiController.text = "";
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isDismissible: false,
        isScrollControlled: true,
        builder: (_) => Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              // mencegah tertutup keyboard
              bottom: MediaQuery.of(context).viewInsets.bottom + 120,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    controller: _parameterController,
                    validator: formValidator,
                    decoration: const InputDecoration(hintText: 'Parameter'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: formValidator,
                    controller: _nilaiController,
                    decoration: const InputDecoration(hintText: 'Nilai'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Exit")),
                      ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            if (id == null) {
                              await addItem();
                            }

                            if (id != null) {
                              await updateItem(id);
                            }

                            // Clear the text fields
                            setState(() {
                              _parameterController.text = '';
                              _nilaiController.text = '';
                            });

                            // Close the bottom sheet
                            Navigator.pop(context);
                          }
                          // Save new data
                        },
                        child: Text(id == null ? 'Create New' : 'Update'),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }

  String? formValidator(String? value) {
    if (value!.isEmpty) return 'Field is Required';
    return null;
  }

// Insert data baru ke database
  Future<void> addItem() async {
    await DatabaseHelper.createItem(
        _parameterController.text, _nilaiController.text);
    _refreshData();
  }

  // Update data baru ke database
  Future<void> updateItem(int id) async {
    await DatabaseHelper.updateItem(
        id, _parameterController.text, _nilaiController.text);
    _refreshData();
  }

  // Delete data
  void deleteItem(int id) async {
    await DatabaseHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Successfully deleted!'), backgroundColor: Colors.blue));
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HSE Apps'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : myData.isEmpty
              ? const Center(child: Text("No Data!"))
              : ListView.builder(
                  itemCount: myData.length,
                  itemBuilder: (context, index) => Card(
                    color: index % 2 == 0 ? Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(255, 255, 255, 255),
                    margin: const EdgeInsets.all(15),
                    child: ListTile(
                        title: Text(myData[index]['parameter']),
                        subtitle: Text(myData[index]['nilai']),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              Text(myData[index]['createdAt']),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () =>
                                    showMyForm(myData[index]['id']),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () =>
                                    deleteItem(myData[index]['id']),
                              ),
                              IconButton(
                                icon: const Icon(Icons.camera),
                                onPressed: () =>
                                    deleteItem(myData[index]['id']),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => showMyForm(null),
      ),
    );
  }
}