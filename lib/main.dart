import 'package:flutter/material.dart';
import 'package:flutteradmin/screens/authentication/coming_soon_screen.dart';
import 'package:flutteradmin/screens/authentication/reset_password_screen.dart';
import 'package:flutteradmin/screens/authentication/sign_in_screen.dart';
import 'package:flutteradmin/screens/authentication/sign_up_screen.dart';
import 'package:flutteradmin/screens/authentication/two_step_verification_screen.dart';
import 'package:flutteradmin/screens/authentication/under_maintenance_screen.dart';
import 'package:flutteradmin/screens/calendar/calendar_screen.dart';
import 'package:flutteradmin/screens/charts/advanched_chart_screen.dart';
import 'package:flutteradmin/screens/charts/basic_chart_screen.dart';
import 'package:flutteradmin/screens/dashboard/analitycs_screen.dart';
import 'package:flutteradmin/screens/dashboard/crm_screen.dart';
import 'package:flutteradmin/screens/dashboard/ecommerce_screen.dart';
import 'package:flutteradmin/screens/dashboard/marketing_screen.dart';
import 'package:flutteradmin/screens/dashboard/stocks_screen.dart';
import 'package:flutteradmin/screens/forms/form_elements_screen.dart';
import 'package:flutteradmin/screens/forms/form_layout_screen.dart';
import 'package:flutteradmin/screens/forms/pro_form_elements_screen.dart';
import 'package:flutteradmin/screens/forms/pro_form_layout_screen.dart';
import 'package:flutteradmin/screens/pages/data_tables_screen.dart';
import 'package:flutteradmin/screens/pages/error_page_screen.dart';
import 'package:flutteradmin/screens/pages/faqs_screen.dart';
import 'package:flutteradmin/screens/pages/file_manager_screen.dart';
import 'package:flutteradmin/screens/pages/mail_success_screen.dart';
import 'package:flutteradmin/screens/pages/pricing_tables_screen.dart';
import 'package:flutteradmin/screens/pages/settings_screen.dart';
import 'package:flutteradmin/screens/pages/teams_screen.dart';
import 'package:flutteradmin/screens/pages/tnc_screen.dart';
import 'package:flutteradmin/screens/profile/profile_screen.dart';
import 'package:flutteradmin/screens/support/inbox_screen.dart';
import 'package:flutteradmin/screens/support/invoice_screen.dart';
import 'package:flutteradmin/screens/support/message_screen.dart';
import 'package:flutteradmin/screens/tables/pro_tables_screen.dart';
import 'package:flutteradmin/screens/tables/tables_screen.dart';
import 'package:flutteradmin/screens/task/kanban_screen.dart';
import 'package:flutteradmin/screens/ui_elements/accordion_screen.dart';
import 'package:flutteradmin/screens/ui_elements/alerts_screen.dart';
import 'package:flutteradmin/screens/ui_elements/avatars_screen.dart';
import 'package:flutteradmin/screens/ui_elements/badge_screen.dart';
import 'package:flutteradmin/screens/ui_elements/breadcrumb_screen.dart';
import 'package:flutteradmin/screens/ui_elements/buttons_group_screen.dart';
import 'package:flutteradmin/screens/ui_elements/buttons_screen.dart';
import 'package:flutteradmin/screens/ui_elements/cards_screen.dart';
import 'package:flutteradmin/screens/ui_elements/carousel_screen.dart';
import 'package:flutteradmin/screens/ui_elements/dropdowns_screen.dart';
import 'package:flutteradmin/screens/ui_elements/images_screen.dart';
import 'package:flutteradmin/screens/ui_elements/list_screen.dart';
import 'package:flutteradmin/screens/ui_elements/modals_screen.dart';
import 'package:flutteradmin/screens/ui_elements/notifications_screen.dart';
import 'package:flutteradmin/screens/ui_elements/pagination_screen.dart';
import 'package:flutteradmin/screens/ui_elements/popovers_screen.dart';
import 'package:flutteradmin/screens/ui_elements/progress_screen.dart';
import 'package:flutteradmin/screens/ui_elements/spinners_screen.dart';
import 'package:flutteradmin/screens/ui_elements/tabs_screen.dart';
import 'package:flutteradmin/screens/ui_elements/tooltips_screen.dart';
import 'package:flutteradmin/screens/ui_elements/videos_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admin Live Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ECommerceScreen(),
      routes: {
        "#": (_) => const ECommerceScreen(),
        "authentication/coming_soon": (_) => const ComingSoonScreen(),
        "authentication/reset_password": (_) => const ResetPasswordScreen(),
        "authentication/sign_in": (_) => const SignInScreen(),
        "authentication/sign_up": (_) => const SignUpScreen(),
        "authentication/two_step_verification": (_) =>
            const TwoStepVerificationScreen(),
        "authentication/under_maintenance": (_) =>
            const UnderMaintenanceScreen(),
        "calendar": (_) => const CalendarScreen(),
        "charts/basic_chart": (_) => const BasicChartScreen(),
        "charts/advanched_chart": (_) => const AdvanchedChartScreen(),
        "dashboard/analitycs": (_) => const AnalitycsScreen(),
        "dashboard/crm": (_) => const CRMScreen(),
        "dashboard/ecommerce": (_) => const ECommerceScreen(),
        "dashboard/marketing": (_) => const MarketingScreen(),
        "dashboard/stocks": (_) => const StocksScreen(),
        "forms/form_elements": (_) => const FormElementsScreen(),
        "forms/form_layout": (_) => const FormLayoutScreen(),
        "forms/pro_form_elements": (_) => const ProFormElementsScreen(),
        "forms/pro_form_layout": (_) => const ProFormLayoutScreen(),
        "pages/data_tables": (_) => const DataTablesScreen(),
        "pages/error_page": (_) => const ErrorPageScreen(),
        "pages/faqs": (_) => const FaQsScreen(),
        "pages/file_manager": (_) => const FileManagerScreen(),
        "pages/mail_success": (_) => const MailSuccessScreen(),
        "pages/pricing_tables": (_) => const PricingTablesScreen(),
        "pages/settings": (_) => const SettingsScreen(),
        "pages/teams": (_) => const TeamsScreen(),
        "pages/tnc": (_) => const TnCScreen(),
        "profile": (_) => const ProfileScreen(),
        "inbox": (_) => const InboxScreen(),
        "invoice": (_) => const InvoiceScreen(),
        "messages": (_) => const MessageScreen(),
        "tables/pro_tables": (_) => const ProTablesScreen(),
        "tables/tables": (_) => const TablesScreen(),
        "task/kanban": (_) => const KanbanScreen(),
        "task/list": (_) => const ListScreen(),
        "ui_elements/accordion": (_) => const AccordionScreen(),
        "ui_elements/alerts": (_) => const AlertsScreen(),
        "ui_elements/avatars": (_) => const AvatarsScreen(),
        "ui_elements/badge": (_) => const BadegeScreen(),
        "ui_elements/breadcrumb": (_) => const BreadcrumbScreen(),
        "ui_elements/buttons": (_) => const ButtonsScreen(),
        "ui_elements/buttons_group": (_) => const ButtonsGroupScreen(),
        "ui_elements/cards": (_) => const CardsScreen(),
        "ui_elements/carousel": (_) => const CarouselScreen(),
        "ui_elements/dropdowns": (_) => const DropdownsScreen(),
        "ui_elements/images": (_) => const ImagesScreen(),
        "ui_elements/list": (_) => const ListScreen(),
        "ui_elements/modals": (_) => const ModalsScreen(),
        "ui_elements/notifications": (_) => const NotificationsScreen(),
        "ui_elements/pagination": (_) => const PaginationScreen(),
        "ui_elements/popovers": (_) => const PopoversScreen(),
        "ui_elements/progress": (_) => const ProgressScreen(),
        "ui_elements/spinners": (_) => const SpinnersScreen(),
        "ui_elements/tabs": (_) => const TabsScreen(),
        "ui_elements/tooltips": (_) => const TooltipsScreen(),
        "ui_elements/videos": (_) => const VideosScreen(),
      },
    );
  }
}
