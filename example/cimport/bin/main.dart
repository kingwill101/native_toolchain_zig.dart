import 'package:cimport/cimport.dart';
import 'package:cimport/ffi.g.dart';

void main() {
  print('=== cImport Stress Demo ===');
  print('');

  final demo = CImportDemo();
  print('packet checksum = ${cimport_packet_checksum(demo.packet)}');
  print('node count      = ${cimport_node_count(demo.head)}');
  print('node sum        = ${cimport_node_sum(demo.head)}');
  demo.close();
}
