import 'package:flutter/material.dart';
import 'package:flutteradmin/components/side_menu_item.dart';
import 'package:flutteradmin/resources/local_datas/color_data.dart';
import 'package:flutteradmin/resources/models/menu_model.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';

class WrapperComponent extends StatefulWidget {
  final Widget? child;
  const WrapperComponent({super.key, this.child});

  @override
  State<WrapperComponent> createState() => _WrapperComponentState();
}

class _WrapperComponentState extends State<WrapperComponent> {
  bool showMenu = false;
  bool showProfile = false;
  bool showMessage = false;
  bool showNotification = false;

  @override
  Widget build(BuildContext context) {
    double width = context.width();
    double height = context.height();
    bool isDesktop = context.isDesktop();

    return Material(
      child: Stack(
        children: [
          Positioned(
            left: isDesktop
                ? 0
                : showMenu
                    ? 0
                    : -300,
            top: 0,
            child: SizedBox(
              width: 300,
              height: height,
              child: Scaffold(
                // backgroundColor: Colors.black,
                backgroundColor: ColorData().greyDark,
                body: SafeArea(
                  child: SizedBox(
                    height: height,
                    width: width,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: width,
                          height: 80,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            // titleSpacing: 0,
                            color: ColorData().greyDark,
                            // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/logo.png"),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  "FlutterAdmin",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                if (!isDesktop)
                                  InkWell(
                                    onTap: () {
                                      showMenu = !showMenu;
                                      setState(() {});
                                    },
                                    child: SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                        Icons.arrow_back_outlined,
                                        color: Colors.grey[200]!,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.only(
                            top: 80,
                            left: 16,
                            right: 16,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: width,
                                    height: 46,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "MENU",
                                      style: TextStyle(
                                        color: Colors.grey[100],
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      MenuModel(
                                        name: "Dashboard",
                                        icon: Icons.widgets_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "eCommerce",
                                            navigateTo: "dashboard/ecommerce",
                                          ),
                                          SubMenuModel(
                                            name: "Analitycs",
                                            navigateTo: "dashboard/analitycs",
                                          ),
                                          SubMenuModel(
                                            name: "Marketing",
                                            navigateTo: "dashboard/marketing",
                                          ),
                                          SubMenuModel(
                                            name: "CRM",
                                            navigateTo: "dashboard/crm",
                                          ),
                                          SubMenuModel(
                                            name: "Stocks",
                                            navigateTo: "dashboard/stocks",
                                          ),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Calendar",
                                        icon: Icons.calendar_month_outlined,
                                        navigateTo: "calendar",
                                      ),
                                      MenuModel(
                                        name: "Profile",
                                        icon: Icons.account_box_outlined,
                                        navigateTo: "profile",
                                      ),
                                      MenuModel(
                                        name: "Task",
                                        icon: Icons.list_alt_outlined,
                                        navigateTo: "task",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "List",
                                            navigateTo: "task/list",
                                          ),
                                          SubMenuModel(
                                            name: "Kanban",
                                            navigateTo: "task/kanban",
                                          ),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Forms",
                                        icon: Icons.document_scanner_outlined,
                                        navigateTo: "forms",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "Form Elements",
                                            navigateTo: "forms/form_elements",
                                          ),
                                          SubMenuModel(
                                            name: "Pro Form Elements",
                                            navigateTo:
                                                "forms/pro_form_elements",
                                          ),
                                          SubMenuModel(
                                            name: "Form Layout",
                                            navigateTo: "forms/form_layout",
                                          ),
                                          SubMenuModel(
                                            name: "Pro Form Layout",
                                            navigateTo: "forms/pro_form_layout",
                                          ),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Tables",
                                        icon: Icons.table_chart_outlined,
                                        navigateTo: "tables",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "Tables",
                                            navigateTo: "tables/tables",
                                          ),
                                          SubMenuModel(
                                            name: "Pro Tables",
                                            navigateTo: "tables/pro_tables",
                                          ),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Pages",
                                        icon: Icons.web_outlined,
                                        navigateTo: "pages",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "Settings",
                                            navigateTo: "pages/settings",
                                          ),
                                          SubMenuModel(
                                            name: "File Manager",
                                            navigateTo: "pages/file_manager",
                                          ),
                                          SubMenuModel(
                                            name: "Data Tables",
                                            navigateTo: "pages/data_tables",
                                          ),
                                          SubMenuModel(
                                            name: "Pricing Tables",
                                            navigateTo: "pages/pricing_tables",
                                          ),
                                          SubMenuModel(
                                            name: "Error Page",
                                            navigateTo: "pages/error_pages",
                                          ),
                                          SubMenuModel(
                                            name: "Faq's",
                                            navigateTo: "pages/faqs",
                                          ),
                                          SubMenuModel(
                                            name: "Teams",
                                            navigateTo: "pages/teams",
                                          ),
                                          SubMenuModel(
                                            name: "Terms & Conditions",
                                            navigateTo: "pages/tnc",
                                          ),
                                          SubMenuModel(
                                            name: "Mail Success",
                                            navigateTo: "pages/mail_success",
                                          ),
                                        ],
                                      ),
                                    ].map((e) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: SideMenuItem(value: e),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: width,
                                    height: 46,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "SUPPORT",
                                      style: TextStyle(
                                        color: Colors.grey[100],
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      MenuModel(
                                        name: "Messages",
                                        icon: Icons.mail_outline,
                                        navigateTo: "messages",
                                      ),
                                      MenuModel(
                                        name: "Inbox",
                                        icon: Icons.inbox_outlined,
                                        navigateTo: "inbox",
                                      ),
                                      MenuModel(
                                        name: "Invoice",
                                        icon: Icons.inventory_outlined,
                                        navigateTo: "invoice",
                                      ),
                                    ].map((e) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: SideMenuItem(value: e),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: width,
                                    height: 46,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "OTHERS",
                                      style: TextStyle(
                                        color: Colors.grey[100],
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      MenuModel(
                                        name: "Charts",
                                        icon: Icons.line_axis_outlined,
                                        navigateTo: "charts",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "Basic Chart",
                                            navigateTo: "charts/basic_chart",
                                          ),
                                          SubMenuModel(
                                            name: "Advanced Chart",
                                            navigateTo: "charts/advanced_chart",
                                          ),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "UI Elements",
                                        icon: Icons.now_widgets_outlined,
                                        navigateTo: "ui_elements",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "Accordion",
                                            navigateTo: "ui_elements/accordion",
                                          ),
                                          SubMenuModel(
                                            name: "Alerts",
                                            navigateTo: "ui_elements/alerts",
                                          ),
                                          SubMenuModel(
                                            name: "Avatars",
                                            navigateTo: "ui_elements/avatars",
                                          ),
                                          SubMenuModel(
                                            name: "Badge",
                                            navigateTo: "ui_elements/badge",
                                          ),
                                          SubMenuModel(
                                            name: "Breadcrumb",
                                            navigateTo:
                                                "ui_elements/breadcrumb",
                                          ),
                                          SubMenuModel(
                                            name: "Buttons",
                                            navigateTo: "ui_elements/buttons",
                                          ),
                                          SubMenuModel(
                                            name: "Buttons Group",
                                            navigateTo:
                                                "ui_elements/button_group",
                                          ),
                                          SubMenuModel(
                                            name: "Cards",
                                            navigateTo: "ui_elements/cards",
                                          ),
                                          SubMenuModel(
                                            name: "Carousel",
                                            navigateTo: "ui_elements/carousel",
                                          ),
                                          SubMenuModel(
                                            name: "Dropdowns",
                                            navigateTo: "ui_elements/dropdowns",
                                          ),
                                          SubMenuModel(
                                            name: "Images",
                                            navigateTo: "ui_elements/images",
                                          ),
                                          SubMenuModel(
                                            name: "List",
                                            navigateTo: "ui_elements/list",
                                          ),
                                          SubMenuModel(
                                            name: "Modals",
                                            navigateTo: "ui_elements/modals",
                                          ),
                                          SubMenuModel(
                                            name: "Notifications",
                                            navigateTo:
                                                "ui_elements/notifications",
                                          ),
                                          SubMenuModel(
                                            name: "Pagination",
                                            navigateTo:
                                                "ui_elements/pagination",
                                          ),
                                          SubMenuModel(
                                            name: "Popovers",
                                            navigateTo: "ui_elements/popovers",
                                          ),
                                          SubMenuModel(
                                            name: "Progress",
                                            navigateTo: "ui_elements/progress",
                                          ),
                                          SubMenuModel(
                                            name: "Spinners",
                                            navigateTo: "ui_elements/spinners",
                                          ),
                                          SubMenuModel(
                                            name: "Tabs",
                                            navigateTo: "ui_elements/tabs",
                                          ),
                                          SubMenuModel(
                                            name: "Tooltips",
                                            navigateTo: "ui_elements/tooltips",
                                          ),
                                          SubMenuModel(
                                            name: "Videos",
                                            navigateTo: "ui_elements/videos",
                                          ),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Authentication",
                                        icon: Icons.logout_outlined,
                                        navigateTo: "authentication",
                                        subMenu: [
                                          SubMenuModel(
                                            name: "Sign In",
                                            navigateTo:
                                                "authentication/sign_in",
                                          ),
                                          SubMenuModel(
                                            name: "Sign Up",
                                            navigateTo:
                                                "authentication/sign_up",
                                          ),
                                          SubMenuModel(
                                            name: "Reset Password",
                                            navigateTo:
                                                "authentication/reset_password",
                                          ),
                                          SubMenuModel(
                                            name: "Coming Soon",
                                            navigateTo:
                                                "authentication/coming_soon",
                                          ),
                                          SubMenuModel(
                                            name: "2 Step Verification",
                                            navigateTo:
                                                "authentication/2_step_verification",
                                          ),
                                          SubMenuModel(
                                            name: "Under Maintenance",
                                            navigateTo:
                                                "authentication/under_maintenance",
                                          ),
                                        ],
                                      ),
                                    ].map((e) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: SideMenuItem(value: e),
                                      );
                                    }).toList(),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: width,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ].reversed.toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        height: 80,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(1, 1),
                              color: Colors.black.withOpacity(0.12),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            if (isDesktop)
                              const SizedBox(
                                width: 300,
                              ),
                            if (!isDesktop)
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      showMenu = !showMenu;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.menu_outlined,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Image.asset("assets/logo.png"),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                ],
                              ),
                            Expanded(
                              child: Container(
                                height: 60,
                                width: width,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (isDesktop)
                                      const Expanded(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.search_outlined),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Expanded(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          // vertical: 4,
                                                          ),
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            InkWell(
                              onTap: () {
                                showNotification = !showNotification;
                                showMessage = false;
                                showProfile = false;
                                setState(() {});
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      Icons.notifications_outlined,
                                      size: 18,
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              onTap: () {
                                showMessage = !showMessage;
                                showProfile = false;
                                showNotification = false;
                                setState(() {});
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Icon(
                                      Icons.chat_bubble_outline_outlined,
                                      size: 18,
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Builder(
                              builder: (_) {
                                if (isDesktop) {
                                  return InkWell(
                                    onTap: () {
                                      showProfile = !showProfile;
                                      showMessage = false;
                                      showNotification = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      height: 60,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: width,
                                                  child: const Text(
                                                    "Fulan bin Fulan",
                                                    maxLines: 1,
                                                    textAlign: TextAlign.end,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: width,
                                                  child: Text(
                                                    "Sistem Administrator",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.end,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey[600],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            showProfile
                                                ? Icons
                                                    .keyboard_arrow_up_outlined
                                                : Icons
                                                    .keyboard_arrow_down_outlined,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                                return InkWell(
                                  onTap: () {
                                    showProfile = !showProfile;
                                    showMessage = false;
                                    showNotification = false;
                                    setState(() {});
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        // horizontal: 8,
                                        ),
                                    height: 60,
                                    width: 60,
                                    // decoration: BoxDecoration(
                                    //   border: Border.all(
                                    //     color: Colors.grey[400]!,
                                    //   ),
                                    //   borderRadius: BorderRadius.circular(10),
                                    // ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(60),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      if (showProfile)
                        Positioned(
                          top: 86,
                          right: 16,
                          child: Container(
                            width: 250,
                            height: 232,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1, 1),
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  width: width,
                                  height: 40,
                                  child: const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_box_outlined,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Text("My Profile"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  width: width,
                                  height: 40,
                                  child: const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.contact_page_outlined,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Text("My Contacts"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  width: width,
                                  height: 40,
                                  child: const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.settings_outlined,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Text("Account Settings"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Divider(),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  width: width,
                                  height: 40,
                                  child: const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.logout_outlined,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Text("Log Out"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (showMessage)
                        Positioned(
                          top: 86,
                          right: isDesktop ? 266 : 16,
                          child: Container(
                            width: 300,
                            height: 369,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1, 1),
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  height: 50,
                                  width: width,
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                      // border: Border(
                                      //   bottom: BorderSide(
                                      //     color: Colors.grey[600]!,
                                      //   ),
                                      // ),
                                      ),
                                  child: Text(
                                    "Messages",
                                    style: TextStyle(
                                      color: Colors.grey[600]!,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 5,
                                    itemBuilder: (_, index) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        width: width,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Colors.grey[400]!,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: SizedBox(
                                                          width: width,
                                                          child: Text(
                                                            "Orang Ke-$index",
                                                            style:
                                                                const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "$index menit lalu",
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          color:
                                                              Colors.grey[500]!,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  SizedBox(
                                                    width: width,
                                                    child: Text(
                                                      "Percakapan Orang Ke-$index",
                                                      style: TextStyle(
                                                        color:
                                                            Colors.grey[500]!,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (showNotification)
                        Positioned(
                          top: 86,
                          right: isDesktop ? 326 : 76,
                          child: Container(
                            width: 300,
                            height: 369,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1, 1),
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  height: 50,
                                  width: width,
                                  alignment: Alignment.centerLeft,
                                  decoration: const BoxDecoration(
                                      // border: Border(
                                      //   bottom: BorderSide(
                                      //     color: Colors.grey[600]!,
                                      //   ),
                                      // ),
                                      ),
                                  child: Text(
                                    "Notification",
                                    style: TextStyle(
                                      color: Colors.grey[600]!,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder: (_, index) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16,
                                          vertical: 16,
                                        ),
                                        width: width,
                                        // height: 80,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            top: BorderSide(
                                              color: Colors.grey[400]!,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: width,
                                                    child: Text(
                                                      "$index menit lalu",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color:
                                                            Colors.grey[500]!,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  SizedBox(
                                                    width: width,
                                                    child: Text(
                                                      "Notification Ke-$index Lorem ipsum dolor sir amet asgdhjasd ashdjkasd asgdhja sdghasdh gashdj agshdjsda gh",
                                                      style: TextStyle(
                                                        color:
                                                            Colors.grey[500]!,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      Positioned(
                        top: 80,
                        bottom: 0,
                        left: isDesktop ? 300 : 0,
                        right: 0,
                        child: Container(
                          width: width,
                          height: height,
                          color: Colors.grey[100],
                          child: widget.child,
                        ),
                      ),
                    ].reversed.toList(),
                  ),
                ),
              ),
            ),
          ),
        ].reversed.toList(),
      ),
    );
  }
}
