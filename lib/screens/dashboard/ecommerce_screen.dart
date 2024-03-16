import 'package:flutter/material.dart';
import 'package:flutteradmin/components/side_menu_item.dart';
import 'package:flutteradmin/resources/local_datas/color_data.dart';
import 'package:flutteradmin/resources/models/menu_model.dart';

class ECommerceScreen extends StatefulWidget {
  const ECommerceScreen({super.key});

  @override
  State<ECommerceScreen> createState() => _ECommerceScreenState();
}

class _ECommerceScreenState extends State<ECommerceScreen> {
  bool showMenu = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: Stack(
        children: [
          Positioned(
            left: 0,
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
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "FlutterAdmin",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
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
                                              navigateTo:
                                                  "dashboard/ecommerce"),
                                          SubMenuModel(
                                              name: "Analitycs",
                                              navigateTo:
                                                  "dashboard/analitycs"),
                                          SubMenuModel(
                                              name: "Marketing",
                                              navigateTo:
                                                  "dashboard/marketing"),
                                          SubMenuModel(
                                              name: "CRM",
                                              navigateTo: "dashboard/crm"),
                                          SubMenuModel(
                                              name: "Stocks",
                                              navigateTo: "dashboard/stocks"),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Calendar",
                                        icon: Icons.calendar_month_outlined,
                                        navigateTo: "dashboard",
                                      ),
                                      MenuModel(
                                        name: "Profile",
                                        icon: Icons.account_box_outlined,
                                        navigateTo: "dashboard",
                                      ),
                                      MenuModel(
                                        name: "Task",
                                        icon: Icons.list_alt_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "List", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Kanban", navigateTo: ""),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Forms",
                                        icon: Icons.document_scanner_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "Form Elements",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Pro Form ELements",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Form Layout",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Pro Form Layout",
                                              navigateTo: ""),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Tables",
                                        icon: Icons.table_chart_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "Tables", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Pro Tables",
                                              navigateTo: ""),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Pages",
                                        icon: Icons.web_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "Settings", navigateTo: ""),
                                          SubMenuModel(
                                              name: "File Manager",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Data Tables",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Pricing Tables",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Error Page",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Faq's", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Teams", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Terms & Conditions",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Mail Success",
                                              navigateTo: ""),
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
                                        navigateTo: "dashboard",
                                      ),
                                      MenuModel(
                                        name: "Inbox",
                                        icon: Icons.inbox_outlined,
                                        navigateTo: "dashboard",
                                      ),
                                      MenuModel(
                                        name: "Invoice",
                                        icon: Icons.inventory_outlined,
                                        navigateTo: "dashboard",
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
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "Basic Chart",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Advanced Chart",
                                              navigateTo: ""),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "UI Elements",
                                        icon: Icons.now_widgets_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "Accordion",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Alerts", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Avatar", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Badge", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Breadcrumb",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Buttons", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Buttons Group",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Cards", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Carousel", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Dropdowns",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Images", navigateTo: ""),
                                          SubMenuModel(
                                              name: "List", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Modals", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Notifications",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Pagination",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Popovers", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Progress", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Spinners", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Tabs", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Tooltips", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Videos", navigateTo: ""),
                                        ],
                                      ),
                                      MenuModel(
                                        name: "Authentication",
                                        icon: Icons.logout_outlined,
                                        navigateTo: "dashboard",
                                        subMenu: [
                                          SubMenuModel(
                                              name: "Sign In", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Sign Up", navigateTo: ""),
                                          SubMenuModel(
                                              name: "Reset Password",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Coming Soon",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "2 Step Verification",
                                              navigateTo: ""),
                                          SubMenuModel(
                                              name: "Under Maintenance",
                                              navigateTo: ""),
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
          const Expanded(
            child: SizedBox(),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
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
                          const SizedBox(
                            width: 300,
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              width: width,
                              alignment: Alignment.center,
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.search_outlined),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            // vertical: 4,
                                            ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.notifications_outlined,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 60,
                            width: 250,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Fulan bin Fulan",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "Sistem Administrator",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: ColorData().greyDark,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ].reversed.toList(),
                ),
              ),
            ),
          ),
        ].reversed.toList(),
      ),
    );
  }
}
