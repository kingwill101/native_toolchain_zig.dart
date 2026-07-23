import 'dart:ffi';

import 'package:cimport/ffi.g.dart';
import 'package:ffi/ffi.dart';

typedef CImportPoint = c_struct_CImportPoint;
typedef CImportValue = c_union_CImportValue;
typedef CImportPacket = c_struct_CImportPacket;
typedef CImportNode = c_struct_CImportNode;
typedef CImportFoldCallback =
    Int32 Function(CImportPoint point, Pointer<Void> user);

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

  int foldPoints() {
    var points = calloc<CImportPoint>(2);
    try {
      points[0] = cimport_point_make(1, 1);
      points[1] = cimport_point_make(2, 3);

      var callback = Pointer.fromFunction<CImportFoldCallback>(_foldPoint, 0);
      return cimport_fold_points(points, 2, callback, nullptr);
    } finally {
      calloc.free(points);
    }
  }

  static Pointer<CImportNode> _buildDemoList() {
    var first = cimport_node_create(
      1,
      CImportKind.point,
      cimport_point_make(1, 1),
      cimport_value_from_int(11),
    );
    var second = cimport_node_create(
      2,
      CImportKind.blob,
      cimport_point_make(2, 2),
      cimport_value_from_double(2.5),
    );
    var third = cimport_node_create(
      3,
      CImportKind.packet,
      cimport_point_make(3, 3),
      cimport_value_from_int(33),
    );

    cimport_node_append(first, second);
    cimport_node_append(first, third);
    return first;
  }

  static int _foldPoint(CImportPoint point, Pointer<Void> _) {
    return point.x + point.y;
  }
}
