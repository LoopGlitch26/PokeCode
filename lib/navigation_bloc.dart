//<<<<<<<---------------------TRY
//<<<<<<<----------------------------NOT
//<<<<<<<------------------------------------TO
//<<<<<<<---------------------------------------------TOUCH
//<<<<<<<-----------------------------------------------------------THIS
//<<<<<<<--------------------------------------------------------------------------FILE!!!!!!!!!!!!!!!!!!!!

import 'package:bloc/bloc.dart';
import 'project_sub_and_disc.dart';
import 'my_cards_page.dart';
import 'course_page.dart';
import 'messages.dart';
import 'settings.dart';
import 'homepage.dart';
enum NavigationEvents {
  DashboardClickedEvent,
  MessagesClickedEvent,
  UtilityClickedEvent,
  ProjectsClickedEvent,
  SettingsClickedEvent,
  GraphClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => MyCardsPage(
    onMenuTap: onMenuTap,
  );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield MyCardsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.MessagesClickedEvent:
        yield MessagesPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.UtilityClickedEvent:
        yield CoursePage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ProjectsClickedEvent:
        yield ProjectsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield SettingsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.GraphClickedEvent:
        yield SettingsPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}