import 'package:contacts/core/enums/connectivity_status.dart';
import 'package:contacts/core/services/stoppable_service.dart';

abstract class ConnectivityService implements StoppableService {
  Stream<ConnectivityStatus> get connectivity$;

  Future<bool> get isConnected;
}
