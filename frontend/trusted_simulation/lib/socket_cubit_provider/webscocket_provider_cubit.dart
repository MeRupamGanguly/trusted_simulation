import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trusted_simulation/socket_cubit_provider/webscocket_provider_state.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebscocketProvider extends Cubit<WebscocketState> {
  WebscocketProvider() : super(WebscocketStateInitial());
  Stream consumeWebSocket(String url) {
    final socketChannel = WebSocketChannel.connect(Uri.parse(url));
    socketChannel.sink.add("Handshake req with apikey");
    return socketChannel.stream;
  }
}
