import 'dart:ffi';

import 'package:cimport/ffi.g.dart';

typedef CImportPoint = c_struct_CImportPoint;
typedef CImportValue = c_union_CImportValue;
typedef CImportPacket = c_struct_CImportPacket;
typedef CImportNode = c_struct_CImportNode;

abstract final class CImportKind {
  static const int invalid = 0;
  static const int point = 1;
  static const int blob = 2;
  static const int packet = 3;
}

class CImportDemo {
  CImportDemo()
    : packet = cimport_make_packet(CImportKind.packet, 7, 11),
      head = _buildDemoList();

  final CImportPacket packet;
  final Pointer<CImportNode> head;

  void close() {
    cimport_node_destroy(head);
  }

  static Pointer<CImportNode> _buildDemoList() {
    final first = cimport_node_create(
      1,
      CImportKind.point,
      cimport_point_make(1, 1),
      cimport_value_from_int(11),
    );
    final second = cimport_node_create(
      2,
      CImportKind.blob,
      cimport_point_make(2, 2),
      cimport_value_from_double(2.5),
    );
    final third = cimport_node_create(
      3,
      CImportKind.packet,
      cimport_point_make(3, 3),
      cimport_value_from_int(33),
    );

    cimport_node_append(first, second);
    cimport_node_append(first, third);
    return first;
  }
}
