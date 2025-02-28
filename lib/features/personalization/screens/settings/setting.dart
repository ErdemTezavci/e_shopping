import 'package:e_shopping/common/widgets/appbar/appbar.dart';
import 'package:e_shopping/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_shopping/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:e_shopping/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_shopping/common/widgets/texts/section_heading.dart';
import 'package:e_shopping/features/personalization/screens/address/addresses.dart';
import 'package:e_shopping/features/personalization/screens/profile/profile.dart';
import 'package:e_shopping/features/shop/screens/cart/cart.dart';
import 'package:e_shopping/features/shop/screens/order/order.dart';
import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(child: Column(
              children: [
                /// AppBar
                TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                /// User Profile Card
                TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen()),),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Setting
                  const TSectionHeading(title: 'Account Setting', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address', onTap: () => Get.to(() => const UserAddressScreen())),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: () => Get.to(() => const CartScreen())),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In progress and Completed Orders', onTap: () => Get.to(() => const OrderScreen())),
                  const TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                  const TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                  const TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  /// -- App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation', 
                    subTitle: 'Set recomendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'Safe Mode', 
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image, 
                    title: 'HD Image Quality', 
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

