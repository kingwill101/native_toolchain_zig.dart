import 'dart:io';

import 'package:cimport/cimport.dart';
import 'package:cimport/ffi.g.dart';

void main() {
  stdout.writeln('=== cImport Stress Demo ===');
  stdout.writeln('');

  var demo = CImportDemo();
  stdout.writeln('packet checksum = ${cimport_packet_checksum(demo.packet)}');
  stdout.writeln('node count      = ${cimport_node_count(demo.head)}');
  stdout.writeln('node sum        = ${cimport_node_sum(demo.head)}');
  stdout.writeln('fold points     = ${demo.foldPoints()}');
  demo.close();
}
