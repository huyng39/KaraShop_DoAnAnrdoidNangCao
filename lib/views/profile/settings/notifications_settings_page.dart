import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/components/app_settings_tile.dart';
import '../../../core/constants/constants.dart';

class NotificationSettingsPage extends StatelessWidget {
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Thay đổi cài đặt thông báo',
        ),
      ),
      backgroundColor: AppColors.cardColor,
      body: Container(
        margin: const EdgeInsets.all(AppDefaults.padding),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDefaults.padding,
          vertical: AppDefaults.padding * 2,
        ),
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackground,
          borderRadius: AppDefaults.borderRadius,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              const SizedBox(height: AppDefaults.padding),
              AppSettingsListTile(
                label: 'Thông báo ứng dụng',
                trailing: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  ),
                ),
              ),
              AppSettingsListTile(
                label: 'Thông báo số điện thoại',
                trailing: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (v) {},
                  ),
                ),
              ),
              AppSettingsListTile(
                label: 'Thông báo ưu đãi',
                trailing: Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (v) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
