import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text("Add New Address"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: "Name"),
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: "Phone Number"),
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: "Street"),
                    )),
                    const SizedBox(
                      width: ESizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: "Postal Code"),
                    )),
                  ],
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: "City"),
                    )),
                    const SizedBox(
                      width: ESizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: "State"),
                    )),
                  ],
                ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: "Country"),
                ),
                const SizedBox(
                  height: ESizes.defaultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("Save"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
