pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub extern fn __assert_fail(__assertion: [*c]const u8, __file: [*c]const u8, __line: c_uint, __function: [*c]const u8) noreturn;
pub extern fn __assert_perror_fail(__errnum: c_int, __file: [*c]const u8, __line: c_uint, __function: [*c]const u8) noreturn;
pub extern fn __assert(__assertion: [*c]const u8, __file: [*c]const u8, __line: c_int) noreturn;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const __gwchar_t = c_int;
pub const imaxdiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub extern fn imaxabs(__n: intmax_t) intmax_t;
pub extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
pub extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) intmax_t;
pub extern fn wcstoumax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) uintmax_t;
pub const struct__Dart_Isolate = opaque {};
pub const Dart_Isolate = ?*struct__Dart_Isolate;
pub const struct__Dart_IsolateGroup = opaque {};
pub const Dart_IsolateGroup = ?*struct__Dart_IsolateGroup;
pub const struct__Dart_Handle = opaque {};
pub const Dart_Handle = ?*struct__Dart_Handle;
pub const Dart_PersistentHandle = Dart_Handle;
pub const struct__Dart_WeakPersistentHandle = opaque {};
pub const Dart_WeakPersistentHandle = ?*struct__Dart_WeakPersistentHandle;
pub const struct__Dart_FinalizableHandle = opaque {};
pub const Dart_FinalizableHandle = ?*struct__Dart_FinalizableHandle;
pub const Dart_HandleFinalizer = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub extern fn Dart_IsError(handle: Dart_Handle) bool;
pub extern fn Dart_IsApiError(handle: Dart_Handle) bool;
pub extern fn Dart_IsUnhandledExceptionError(handle: Dart_Handle) bool;
pub extern fn Dart_IsCompilationError(handle: Dart_Handle) bool;
pub extern fn Dart_IsFatalError(handle: Dart_Handle) bool;
pub extern fn Dart_GetError(handle: Dart_Handle) [*c]const u8;
pub extern fn Dart_ErrorHasException(handle: Dart_Handle) bool;
pub extern fn Dart_ErrorGetException(handle: Dart_Handle) Dart_Handle;
pub extern fn Dart_ErrorGetStackTrace(handle: Dart_Handle) Dart_Handle;
pub extern fn Dart_NewApiError(@"error": [*c]const u8) Dart_Handle;
pub extern fn Dart_NewCompilationError(@"error": [*c]const u8) Dart_Handle;
pub extern fn Dart_NewUnhandledExceptionError(exception: Dart_Handle) Dart_Handle;
pub extern fn Dart_PropagateError(handle: Dart_Handle) void;
pub extern fn Dart_ToString(object: Dart_Handle) Dart_Handle;
pub extern fn Dart_IdentityEquals(obj1: Dart_Handle, obj2: Dart_Handle) bool;
pub extern fn Dart_HandleFromPersistent(object: Dart_PersistentHandle) Dart_Handle;
pub extern fn Dart_HandleFromWeakPersistent(object: Dart_WeakPersistentHandle) Dart_Handle;
pub extern fn Dart_NewPersistentHandle(object: Dart_Handle) Dart_PersistentHandle;
pub extern fn Dart_SetPersistentHandle(obj1: Dart_PersistentHandle, obj2: Dart_Handle) void;
pub extern fn Dart_DeletePersistentHandle(object: Dart_PersistentHandle) void;
pub extern fn Dart_NewWeakPersistentHandle(object: Dart_Handle, peer: ?*anyopaque, external_allocation_size: isize, callback: Dart_HandleFinalizer) Dart_WeakPersistentHandle;
pub extern fn Dart_DeleteWeakPersistentHandle(object: Dart_WeakPersistentHandle) void;
pub extern fn Dart_NewFinalizableHandle(object: Dart_Handle, peer: ?*anyopaque, external_allocation_size: isize, callback: Dart_HandleFinalizer) Dart_FinalizableHandle;
pub extern fn Dart_DeleteFinalizableHandle(object: Dart_FinalizableHandle, strong_ref_to_object: Dart_Handle) void;
pub extern fn Dart_VersionString() [*c]const u8;
pub const Dart_IsolateFlags = extern struct {
    version: i32 = @import("std").mem.zeroes(i32),
    enable_asserts: bool = @import("std").mem.zeroes(bool),
    use_field_guards: bool = @import("std").mem.zeroes(bool),
    use_osr: bool = @import("std").mem.zeroes(bool),
    obfuscate: bool = @import("std").mem.zeroes(bool),
    load_vmservice_library: bool = @import("std").mem.zeroes(bool),
    null_safety: bool = @import("std").mem.zeroes(bool),
    is_system_isolate: bool = @import("std").mem.zeroes(bool),
    is_service_isolate: bool = @import("std").mem.zeroes(bool),
    is_kernel_isolate: bool = @import("std").mem.zeroes(bool),
    snapshot_is_dontneed_safe: bool = @import("std").mem.zeroes(bool),
    branch_coverage: bool = @import("std").mem.zeroes(bool),
    coverage: bool = @import("std").mem.zeroes(bool),
};
pub extern fn Dart_IsolateFlagsInitialize(flags: [*c]Dart_IsolateFlags) void;
pub const Dart_IsolateGroupCreateCallback = ?*const fn ([*c]const u8, [*c]const u8, [*c]const u8, [*c]const u8, [*c]Dart_IsolateFlags, ?*anyopaque, [*c][*c]u8) callconv(.c) Dart_Isolate;
pub const Dart_InitializeIsolateCallback = ?*const fn ([*c]?*anyopaque, [*c][*c]u8) callconv(.c) bool;
pub const Dart_IsolateShutdownCallback = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const Dart_IsolateCleanupCallback = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const Dart_IsolateGroupCleanupCallback = ?*const fn (?*anyopaque) callconv(.c) void;
pub const Dart_ThreadStartCallback = ?*const fn () callconv(.c) void;
pub const Dart_ThreadExitCallback = ?*const fn () callconv(.c) void;
pub const Dart_FileOpenCallback = ?*const fn ([*c]const u8, bool) callconv(.c) ?*anyopaque;
pub const Dart_FileReadCallback = ?*const fn ([*c][*c]u8, [*c]isize, ?*anyopaque) callconv(.c) void;
pub const Dart_FileWriteCallback = ?*const fn (?*const anyopaque, isize, ?*anyopaque) callconv(.c) void;
pub const Dart_FileCloseCallback = ?*const fn (?*anyopaque) callconv(.c) void;
pub const Dart_EntropySource = ?*const fn ([*c]u8, isize) callconv(.c) bool;
pub const Dart_GetVMServiceAssetsArchive = ?*const fn () callconv(.c) Dart_Handle;
pub const Dart_OnNewCodeCallback = ?*const fn ([*c]struct_Dart_CodeObserver, [*c]const u8, usize, usize) callconv(.c) void;
pub const struct_Dart_CodeObserver = extern struct {
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    on_new_code: Dart_OnNewCodeCallback = @import("std").mem.zeroes(Dart_OnNewCodeCallback),
};
pub const Dart_CodeObserver = struct_Dart_CodeObserver;
pub const Dart_InitializeParams = extern struct {
    version: i32 = @import("std").mem.zeroes(i32),
    vm_snapshot_data: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    vm_snapshot_instructions: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    create_group: Dart_IsolateGroupCreateCallback = @import("std").mem.zeroes(Dart_IsolateGroupCreateCallback),
    initialize_isolate: Dart_InitializeIsolateCallback = @import("std").mem.zeroes(Dart_InitializeIsolateCallback),
    shutdown_isolate: Dart_IsolateShutdownCallback = @import("std").mem.zeroes(Dart_IsolateShutdownCallback),
    cleanup_isolate: Dart_IsolateCleanupCallback = @import("std").mem.zeroes(Dart_IsolateCleanupCallback),
    cleanup_group: Dart_IsolateGroupCleanupCallback = @import("std").mem.zeroes(Dart_IsolateGroupCleanupCallback),
    thread_start: Dart_ThreadStartCallback = @import("std").mem.zeroes(Dart_ThreadStartCallback),
    thread_exit: Dart_ThreadExitCallback = @import("std").mem.zeroes(Dart_ThreadExitCallback),
    file_open: Dart_FileOpenCallback = @import("std").mem.zeroes(Dart_FileOpenCallback),
    file_read: Dart_FileReadCallback = @import("std").mem.zeroes(Dart_FileReadCallback),
    file_write: Dart_FileWriteCallback = @import("std").mem.zeroes(Dart_FileWriteCallback),
    file_close: Dart_FileCloseCallback = @import("std").mem.zeroes(Dart_FileCloseCallback),
    entropy_source: Dart_EntropySource = @import("std").mem.zeroes(Dart_EntropySource),
    get_service_assets: Dart_GetVMServiceAssetsArchive = @import("std").mem.zeroes(Dart_GetVMServiceAssetsArchive),
    start_kernel_isolate: bool = @import("std").mem.zeroes(bool),
    code_observer: [*c]Dart_CodeObserver = @import("std").mem.zeroes([*c]Dart_CodeObserver),
};
pub extern fn Dart_Initialize(params: [*c]Dart_InitializeParams) [*c]u8;
pub extern fn Dart_Cleanup() [*c]u8;
pub extern fn Dart_SetVMFlags(argc: c_int, argv: [*c][*c]const u8) [*c]u8;
pub extern fn Dart_IsVMFlagSet(flag_name: [*c]const u8) bool;
pub extern fn Dart_CreateIsolateGroup(script_uri: [*c]const u8, name: [*c]const u8, isolate_snapshot_data: [*c]const u8, isolate_snapshot_instructions: [*c]const u8, flags: [*c]Dart_IsolateFlags, isolate_group_data: ?*anyopaque, isolate_data: ?*anyopaque, @"error": [*c][*c]u8) Dart_Isolate;
pub extern fn Dart_CreateIsolateInGroup(group_member: Dart_Isolate, name: [*c]const u8, shutdown_callback: Dart_IsolateShutdownCallback, cleanup_callback: Dart_IsolateCleanupCallback, child_isolate_data: ?*anyopaque, @"error": [*c][*c]u8) Dart_Isolate;
pub extern fn Dart_CreateIsolateGroupFromKernel(script_uri: [*c]const u8, name: [*c]const u8, kernel_buffer: [*c]const u8, kernel_buffer_size: isize, flags: [*c]Dart_IsolateFlags, isolate_group_data: ?*anyopaque, isolate_data: ?*anyopaque, @"error": [*c][*c]u8) Dart_Isolate;
pub extern fn Dart_ShutdownIsolate() void;
pub extern fn Dart_CurrentIsolate() Dart_Isolate;
pub extern fn Dart_CurrentIsolateData() ?*anyopaque;
pub extern fn Dart_IsolateData(isolate: Dart_Isolate) ?*anyopaque;
pub extern fn Dart_CurrentIsolateGroup() Dart_IsolateGroup;
pub extern fn Dart_CurrentIsolateGroupData() ?*anyopaque;
pub const Dart_IsolateGroupId = i64;
pub extern fn Dart_CurrentIsolateGroupId() Dart_IsolateGroupId;
pub extern fn Dart_IsolateGroupData(isolate: Dart_Isolate) ?*anyopaque;
pub extern fn Dart_DebugName() Dart_Handle;
pub extern fn Dart_DebugNameToCString() [*c]const u8;
pub extern fn Dart_IsolateServiceId(isolate: Dart_Isolate) [*c]const u8;
pub extern fn Dart_EnterIsolate(isolate: Dart_Isolate) void;
pub extern fn Dart_KillIsolate(isolate: Dart_Isolate) void;
pub extern fn Dart_NotifyIdle(deadline: i64) void;
pub const Dart_HeapSamplingReportCallback = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const Dart_HeapSamplingCreateCallback = ?*const fn (Dart_Isolate, Dart_IsolateGroup, [*c]const u8, isize) callconv(.c) ?*anyopaque;
pub const Dart_HeapSamplingDeleteCallback = ?*const fn (?*anyopaque) callconv(.c) void;
pub extern fn Dart_EnableHeapSampling() void;
pub extern fn Dart_DisableHeapSampling() void;
pub extern fn Dart_RegisterHeapSamplingCallback(create_callback: Dart_HeapSamplingCreateCallback, delete_callback: Dart_HeapSamplingDeleteCallback) void;
pub extern fn Dart_ReportSurvivingAllocations(callback: Dart_HeapSamplingReportCallback, context: ?*anyopaque, force_gc: bool) void;
pub extern fn Dart_SetHeapSamplingPeriod(bytes: isize) void;
pub extern fn Dart_NotifyDestroyed() void;
pub extern fn Dart_NotifyLowMemory() void;
pub const Dart_PerformanceMode_Default: c_int = 0;
pub const Dart_PerformanceMode_Latency: c_int = 1;
pub const Dart_PerformanceMode_Throughput: c_int = 2;
pub const Dart_PerformanceMode_Memory: c_int = 3;
pub const Dart_PerformanceMode = c_uint;
pub extern fn Dart_SetPerformanceMode(mode: Dart_PerformanceMode) Dart_PerformanceMode;
pub extern fn Dart_StartProfiling() void;
pub extern fn Dart_StopProfiling() void;
pub extern fn Dart_ThreadDisableProfiling() void;
pub extern fn Dart_ThreadEnableProfiling() void;
pub extern fn Dart_AddSymbols(dso_name: [*c]const u8, buffer: ?*anyopaque, buffer_size: isize) void;
pub extern fn Dart_ExitIsolate() void;
pub extern fn Dart_CreateSnapshot(vm_snapshot_data_buffer: [*c][*c]u8, vm_snapshot_data_size: [*c]isize, isolate_snapshot_data_buffer: [*c][*c]u8, isolate_snapshot_data_size: [*c]isize, is_core: bool) Dart_Handle;
pub extern fn Dart_IsKernel(buffer: [*c]const u8, buffer_size: isize) bool;
pub extern fn Dart_IsBytecode(buffer: [*c]const u8, buffer_size: isize) bool;
pub extern fn Dart_IsolateMakeRunnable(isolate: Dart_Isolate) [*c]u8;
pub const Dart_Port = i64;
pub const Dart_PortEx = extern struct {
    port_id: i64 = @import("std").mem.zeroes(i64),
    origin_id: i64 = @import("std").mem.zeroes(i64),
};
pub const Dart_MessageNotifyCallback = ?*const fn (Dart_Isolate) callconv(.c) void;
pub extern fn Dart_SetMessageNotifyCallback(message_notify_callback: Dart_MessageNotifyCallback) void;
pub extern fn Dart_GetMessageNotifyCallback() Dart_MessageNotifyCallback;
pub extern fn Dart_ShouldPauseOnStart() bool;
pub extern fn Dart_SetShouldPauseOnStart(should_pause: bool) void;
pub extern fn Dart_IsPausedOnStart() bool;
pub extern fn Dart_SetPausedOnStart(paused: bool) void;
pub extern fn Dart_ShouldPauseOnExit() bool;
pub extern fn Dart_SetShouldPauseOnExit(should_pause: bool) void;
pub extern fn Dart_IsPausedOnExit() bool;
pub extern fn Dart_SetPausedOnExit(paused: bool) void;
pub extern fn Dart_SetStickyError(@"error": Dart_Handle) void;
pub extern fn Dart_HasStickyError() bool;
pub extern fn Dart_GetStickyError() Dart_Handle;
pub extern fn Dart_HandleMessage() Dart_Handle;
pub extern fn Dart_HandleServiceMessages() bool;
pub extern fn Dart_HasServiceMessages() bool;
pub extern fn Dart_RunLoop() Dart_Handle;
pub extern fn Dart_RunLoopAsync(errors_are_fatal: bool, on_error_port: Dart_Port, on_exit_port: Dart_Port, @"error": [*c][*c]u8) bool;
pub extern fn Dart_GetMainPortId() Dart_Port;
pub extern fn Dart_HasLivePorts() bool;
pub extern fn Dart_Post(port_id: Dart_Port, object: Dart_Handle) bool;
pub extern fn Dart_NewSendPort(port_id: Dart_Port) Dart_Handle;
pub extern fn Dart_NewSendPortEx(portex_id: Dart_PortEx) Dart_Handle;
pub extern fn Dart_SendPortGetId(port: Dart_Handle, port_id: [*c]Dart_Port) Dart_Handle;
pub extern fn Dart_SendPortGetIdEx(port: Dart_Handle, portex_id: [*c]Dart_PortEx) Dart_Handle;
pub extern fn Dart_SetCurrentThreadOwnsIsolate() void;
pub extern fn Dart_GetCurrentThreadOwnsIsolate(port: Dart_Port) bool;
pub extern fn Dart_EnterScope() void;
pub extern fn Dart_ExitScope() void;
pub extern fn Dart_ScopeAllocate(size: isize) [*c]u8;
pub extern fn Dart_Null() Dart_Handle;
pub extern fn Dart_IsNull(object: Dart_Handle) bool;
pub extern fn Dart_EmptyString() Dart_Handle;
pub extern fn Dart_TypeDynamic() Dart_Handle;
pub extern fn Dart_TypeVoid() Dart_Handle;
pub extern fn Dart_TypeNever() Dart_Handle;
pub extern fn Dart_TypeString(...) Dart_Handle;
pub extern fn Dart_TypeDouble(...) Dart_Handle;
pub extern fn Dart_TypeInt(...) Dart_Handle;
pub extern fn Dart_TypeBoolean(...) Dart_Handle;
pub extern fn Dart_TypeObject(...) Dart_Handle;
pub extern fn Dart_ObjectEquals(obj1: Dart_Handle, obj2: Dart_Handle, equal: [*c]bool) Dart_Handle;
pub extern fn Dart_ObjectIsType(object: Dart_Handle, @"type": Dart_Handle, instanceof: [*c]bool) Dart_Handle;
pub extern fn Dart_IsInstance(object: Dart_Handle) bool;
pub extern fn Dart_IsNumber(object: Dart_Handle) bool;
pub extern fn Dart_IsInteger(object: Dart_Handle) bool;
pub extern fn Dart_IsDouble(object: Dart_Handle) bool;
pub extern fn Dart_IsBoolean(object: Dart_Handle) bool;
pub extern fn Dart_IsString(object: Dart_Handle) bool;
pub extern fn Dart_IsStringLatin1(object: Dart_Handle) bool;
pub extern fn Dart_IsList(object: Dart_Handle) bool;
pub extern fn Dart_IsMap(object: Dart_Handle) bool;
pub extern fn Dart_IsLibrary(object: Dart_Handle) bool;
pub extern fn Dart_IsType(handle: Dart_Handle) bool;
pub extern fn Dart_IsFunction(handle: Dart_Handle) bool;
pub extern fn Dart_IsVariable(handle: Dart_Handle) bool;
pub extern fn Dart_IsTypeVariable(handle: Dart_Handle) bool;
pub extern fn Dart_IsClosure(object: Dart_Handle) bool;
pub extern fn Dart_IsTypedData(object: Dart_Handle) bool;
pub extern fn Dart_IsByteBuffer(object: Dart_Handle) bool;
pub extern fn Dart_IsFuture(object: Dart_Handle) bool;
pub extern fn Dart_InstanceGetType(instance: Dart_Handle) Dart_Handle;
pub extern fn Dart_ClassName(cls_type: Dart_Handle) Dart_Handle;
pub extern fn Dart_FunctionName(function: Dart_Handle) Dart_Handle;
pub extern fn Dart_FunctionOwner(function: Dart_Handle) Dart_Handle;
pub extern fn Dart_FunctionIsStatic(function: Dart_Handle, is_static: [*c]bool) Dart_Handle;
pub extern fn Dart_IsTearOff(object: Dart_Handle) bool;
pub extern fn Dart_ClosureFunction(closure: Dart_Handle) Dart_Handle;
pub extern fn Dart_ClassLibrary(cls_type: Dart_Handle) Dart_Handle;
pub extern fn Dart_IntegerFitsIntoInt64(integer: Dart_Handle, fits: [*c]bool) Dart_Handle;
pub extern fn Dart_IntegerFitsIntoUint64(integer: Dart_Handle, fits: [*c]bool) Dart_Handle;
pub extern fn Dart_NewInteger(value: i64) Dart_Handle;
pub extern fn Dart_NewIntegerFromUint64(value: u64) Dart_Handle;
pub extern fn Dart_NewIntegerFromHexCString(value: [*c]const u8) Dart_Handle;
pub extern fn Dart_IntegerToInt64(integer: Dart_Handle, value: [*c]i64) Dart_Handle;
pub extern fn Dart_IntegerToUint64(integer: Dart_Handle, value: [*c]u64) Dart_Handle;
pub extern fn Dart_IntegerToHexCString(integer: Dart_Handle, value: [*c][*c]const u8) Dart_Handle;
pub extern fn Dart_NewDouble(value: f64) Dart_Handle;
pub extern fn Dart_DoubleValue(double_obj: Dart_Handle, value: [*c]f64) Dart_Handle;
pub extern fn Dart_GetStaticMethodClosure(library: Dart_Handle, cls_type: Dart_Handle, function_name: Dart_Handle) Dart_Handle;
pub extern fn Dart_True() Dart_Handle;
pub extern fn Dart_False() Dart_Handle;
pub extern fn Dart_NewBoolean(value: bool) Dart_Handle;
pub extern fn Dart_BooleanValue(boolean_obj: Dart_Handle, value: [*c]bool) Dart_Handle;
pub extern fn Dart_StringLength(str: Dart_Handle, length: [*c]isize) Dart_Handle;
pub extern fn Dart_StringUTF8Length(str: Dart_Handle, length: [*c]isize) Dart_Handle;
pub extern fn Dart_NewStringFromCString(str: [*c]const u8) Dart_Handle;
pub extern fn Dart_NewStringFromUTF8(utf8_array: [*c]const u8, length: isize) Dart_Handle;
pub extern fn Dart_NewStringFromUTF16(utf16_array: [*c]const u16, length: isize) Dart_Handle;
pub extern fn Dart_NewStringFromUTF32(utf32_array: [*c]const i32, length: isize) Dart_Handle;
pub extern fn Dart_StringToCString(str: Dart_Handle, cstr: [*c][*c]const u8) Dart_Handle;
pub extern fn Dart_StringToUTF8(str: Dart_Handle, utf8_array: [*c][*c]u8, length: [*c]isize) Dart_Handle;
pub extern fn Dart_CopyUTF8EncodingOfString(str: Dart_Handle, utf8_array: [*c]u8, length: isize) Dart_Handle;
pub extern fn Dart_StringToLatin1(str: Dart_Handle, latin1_array: [*c]u8, length: [*c]isize) Dart_Handle;
pub extern fn Dart_StringToUTF16(str: Dart_Handle, utf16_array: [*c]u16, length: [*c]isize) Dart_Handle;
pub extern fn Dart_StringStorageSize(str: Dart_Handle, size: [*c]isize) Dart_Handle;
pub extern fn Dart_StringGetProperties(str: Dart_Handle, char_size: [*c]isize, str_len: [*c]isize, peer: [*c]?*anyopaque) Dart_Handle;
pub extern fn Dart_NewList(length: isize) Dart_Handle;
pub extern fn Dart_NewListOfType(element_type: Dart_Handle, length: isize) Dart_Handle;
pub extern fn Dart_NewListOfTypeFilled(element_type: Dart_Handle, fill_object: Dart_Handle, length: isize) Dart_Handle;
pub extern fn Dart_ListLength(list: Dart_Handle, length: [*c]isize) Dart_Handle;
pub extern fn Dart_ListGetAt(list: Dart_Handle, index: isize) Dart_Handle;
pub extern fn Dart_ListGetRange(list: Dart_Handle, offset: isize, length: isize, result: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_ListSetAt(list: Dart_Handle, index: isize, value: Dart_Handle) Dart_Handle;
pub extern fn Dart_ListGetAsBytes(list: Dart_Handle, offset: isize, native_array: [*c]u8, length: isize) Dart_Handle;
pub extern fn Dart_ListSetAsBytes(list: Dart_Handle, offset: isize, native_array: [*c]const u8, length: isize) Dart_Handle;
pub extern fn Dart_MapGetAt(map: Dart_Handle, key: Dart_Handle) Dart_Handle;
pub extern fn Dart_MapContainsKey(map: Dart_Handle, key: Dart_Handle) Dart_Handle;
pub extern fn Dart_MapKeys(map: Dart_Handle) Dart_Handle;
pub extern fn Dart_NewMap(keys_type: Dart_Handle, keys_handle: Dart_Handle, values_type: Dart_Handle, values_handle: Dart_Handle) Dart_Handle;
pub const Dart_TypedData_kByteData: c_int = 0;
pub const Dart_TypedData_kInt8: c_int = 1;
pub const Dart_TypedData_kUint8: c_int = 2;
pub const Dart_TypedData_kUint8Clamped: c_int = 3;
pub const Dart_TypedData_kInt16: c_int = 4;
pub const Dart_TypedData_kUint16: c_int = 5;
pub const Dart_TypedData_kInt32: c_int = 6;
pub const Dart_TypedData_kUint32: c_int = 7;
pub const Dart_TypedData_kInt64: c_int = 8;
pub const Dart_TypedData_kUint64: c_int = 9;
pub const Dart_TypedData_kFloat32: c_int = 10;
pub const Dart_TypedData_kFloat64: c_int = 11;
pub const Dart_TypedData_kInt32x4: c_int = 12;
pub const Dart_TypedData_kFloat32x4: c_int = 13;
pub const Dart_TypedData_kFloat64x2: c_int = 14;
pub const Dart_TypedData_kInvalid: c_int = 15;
pub const Dart_TypedData_Type = c_uint;
pub extern fn Dart_GetTypeOfTypedData(object: Dart_Handle) Dart_TypedData_Type;
pub extern fn Dart_GetTypeOfExternalTypedData(object: Dart_Handle) Dart_TypedData_Type;
pub extern fn Dart_NewTypedData(@"type": Dart_TypedData_Type, length: isize) Dart_Handle;
pub extern fn Dart_NewExternalTypedData(@"type": Dart_TypedData_Type, data: ?*anyopaque, length: isize) Dart_Handle;
pub extern fn Dart_NewExternalTypedDataWithFinalizer(@"type": Dart_TypedData_Type, data: ?*anyopaque, length: isize, peer: ?*anyopaque, external_allocation_size: isize, callback: Dart_HandleFinalizer) Dart_Handle;
pub extern fn Dart_NewUnmodifiableExternalTypedDataWithFinalizer(@"type": Dart_TypedData_Type, data: ?*const anyopaque, length: isize, peer: ?*anyopaque, external_allocation_size: isize, callback: Dart_HandleFinalizer) Dart_Handle;
pub extern fn Dart_NewByteBuffer(typed_data: Dart_Handle) Dart_Handle;
pub extern fn Dart_TypedDataAcquireData(object: Dart_Handle, @"type": [*c]Dart_TypedData_Type, data: [*c]?*anyopaque, len: [*c]isize) Dart_Handle;
pub extern fn Dart_TypedDataReleaseData(object: Dart_Handle) Dart_Handle;
pub extern fn Dart_GetDataFromByteBuffer(byte_buffer: Dart_Handle) Dart_Handle;
pub extern fn Dart_New(@"type": Dart_Handle, constructor_name: Dart_Handle, number_of_arguments: c_int, arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_Allocate(@"type": Dart_Handle) Dart_Handle;
pub extern fn Dart_AllocateWithNativeFields(@"type": Dart_Handle, num_native_fields: isize, native_fields: [*c]const isize) Dart_Handle;
pub extern fn Dart_Invoke(target: Dart_Handle, name: Dart_Handle, number_of_arguments: c_int, arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_InvokeClosure(closure: Dart_Handle, number_of_arguments: c_int, arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_InvokeConstructor(object: Dart_Handle, name: Dart_Handle, number_of_arguments: c_int, arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_GetField(container: Dart_Handle, name: Dart_Handle) Dart_Handle;
pub extern fn Dart_SetField(container: Dart_Handle, name: Dart_Handle, value: Dart_Handle) Dart_Handle;
pub extern fn Dart_ThrowException(exception: Dart_Handle) Dart_Handle;
pub extern fn Dart_ReThrowException(exception: Dart_Handle, stacktrace: Dart_Handle) Dart_Handle;
pub extern fn Dart_GetNativeInstanceFieldCount(obj: Dart_Handle, count: [*c]c_int) Dart_Handle;
pub extern fn Dart_GetNativeInstanceField(obj: Dart_Handle, index: c_int, value: [*c]isize) Dart_Handle;
pub extern fn Dart_SetNativeInstanceField(obj: Dart_Handle, index: c_int, value: isize) Dart_Handle;
pub const struct__Dart_NativeArguments = opaque {};
pub const Dart_NativeArguments = ?*struct__Dart_NativeArguments;
pub extern fn Dart_GetNativeIsolateGroupData(args: Dart_NativeArguments) ?*anyopaque;
pub const Dart_NativeArgument_kBool: c_int = 0;
pub const Dart_NativeArgument_kInt32: c_int = 1;
pub const Dart_NativeArgument_kUint32: c_int = 2;
pub const Dart_NativeArgument_kInt64: c_int = 3;
pub const Dart_NativeArgument_kUint64: c_int = 4;
pub const Dart_NativeArgument_kDouble: c_int = 5;
pub const Dart_NativeArgument_kString: c_int = 6;
pub const Dart_NativeArgument_kInstance: c_int = 7;
pub const Dart_NativeArgument_kNativeFields: c_int = 8;
pub const Dart_NativeArgument_Type = c_uint;
pub const struct__Dart_NativeArgument_Descriptor = extern struct {
    type: u8 = @import("std").mem.zeroes(u8),
    index: u8 = @import("std").mem.zeroes(u8),
};
pub const Dart_NativeArgument_Descriptor = struct__Dart_NativeArgument_Descriptor;
const struct_unnamed_1 = extern struct {
    dart_str: Dart_Handle = @import("std").mem.zeroes(Dart_Handle),
    peer: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
const struct_unnamed_2 = extern struct {
    num_fields: isize = @import("std").mem.zeroes(isize),
    values: [*c]isize = @import("std").mem.zeroes([*c]isize),
};
pub const union__Dart_NativeArgument_Value = extern union {
    as_bool: bool,
    as_int32: i32,
    as_uint32: u32,
    as_int64: i64,
    as_uint64: u64,
    as_double: f64,
    as_string: struct_unnamed_1,
    as_native_fields: struct_unnamed_2,
    as_instance: Dart_Handle,
};
pub const Dart_NativeArgument_Value = union__Dart_NativeArgument_Value;
pub const kNativeArgNumberPos: c_int = 0;
pub const kNativeArgNumberSize: c_int = 8;
pub const kNativeArgTypePos: c_int = 8;
pub const kNativeArgTypeSize: c_int = 8;
const enum_unnamed_3 = c_uint;
pub extern fn Dart_GetNativeArguments(args: Dart_NativeArguments, num_arguments: c_int, arg_descriptors: [*c]const Dart_NativeArgument_Descriptor, arg_values: [*c]Dart_NativeArgument_Value) Dart_Handle;
pub extern fn Dart_GetNativeArgument(args: Dart_NativeArguments, index: c_int) Dart_Handle;
pub extern fn Dart_GetNativeArgumentCount(args: Dart_NativeArguments) c_int;
pub extern fn Dart_GetNativeFieldsOfArgument(args: Dart_NativeArguments, arg_index: c_int, num_fields: c_int, field_values: [*c]isize) Dart_Handle;
pub extern fn Dart_GetNativeReceiver(args: Dart_NativeArguments, value: [*c]isize) Dart_Handle;
pub extern fn Dart_GetNativeStringArgument(args: Dart_NativeArguments, arg_index: c_int, peer: [*c]?*anyopaque) Dart_Handle;
pub extern fn Dart_GetNativeIntegerArgument(args: Dart_NativeArguments, index: c_int, value: [*c]i64) Dart_Handle;
pub extern fn Dart_GetNativeBooleanArgument(args: Dart_NativeArguments, index: c_int, value: [*c]bool) Dart_Handle;
pub extern fn Dart_GetNativeDoubleArgument(args: Dart_NativeArguments, index: c_int, value: [*c]f64) Dart_Handle;
pub extern fn Dart_SetReturnValue(args: Dart_NativeArguments, retval: Dart_Handle) void;
pub extern fn Dart_SetWeakHandleReturnValue(args: Dart_NativeArguments, rval: Dart_WeakPersistentHandle) void;
pub extern fn Dart_SetBooleanReturnValue(args: Dart_NativeArguments, retval: bool) void;
pub extern fn Dart_SetIntegerReturnValue(args: Dart_NativeArguments, retval: i64) void;
pub extern fn Dart_SetDoubleReturnValue(args: Dart_NativeArguments, retval: f64) void;
pub const Dart_NativeFunction = ?*const fn (Dart_NativeArguments) callconv(.c) void;
pub const Dart_NativeEntryResolver = ?*const fn (Dart_Handle, c_int, [*c]bool) callconv(.c) Dart_NativeFunction;
pub const Dart_NativeEntrySymbol = ?*const fn (Dart_NativeFunction) callconv(.c) [*c]const u8;
pub const Dart_FfiNativeResolver = ?*const fn ([*c]const u8, usize) callconv(.c) ?*anyopaque;
pub const Dart_EnvironmentCallback = ?*const fn (Dart_Handle) callconv(.c) Dart_Handle;
pub extern fn Dart_SetEnvironmentCallback(callback: Dart_EnvironmentCallback) Dart_Handle;
pub extern fn Dart_SetNativeResolver(library: Dart_Handle, resolver: Dart_NativeEntryResolver, symbol: Dart_NativeEntrySymbol) Dart_Handle;
pub extern fn Dart_GetNativeResolver(library: Dart_Handle, resolver: [*c]Dart_NativeEntryResolver) Dart_Handle;
pub extern fn Dart_GetNativeSymbol(library: Dart_Handle, resolver: [*c]Dart_NativeEntrySymbol) Dart_Handle;
pub extern fn Dart_SetFfiNativeResolver(library: Dart_Handle, resolver: Dart_FfiNativeResolver) Dart_Handle;
pub const Dart_NativeAssetsDlopenCallback = ?*const fn ([*c]const u8, [*c][*c]u8) callconv(.c) ?*anyopaque;
pub const Dart_NativeAssetsDlopenCallbackNoPath = ?*const fn ([*c][*c]u8) callconv(.c) ?*anyopaque;
pub const Dart_NativeAssetsDlopenAssetId = ?*const fn ([*c]const u8, [*c][*c]u8) callconv(.c) ?*anyopaque;
pub const Dart_NativeAssetsAvailableAssets = ?*const fn () callconv(.c) [*c]u8;
pub const Dart_NativeAssetsDlsymCallback = ?*const fn (?*anyopaque, [*c]const u8, [*c][*c]u8) callconv(.c) ?*anyopaque;
pub const NativeAssetsApi = extern struct {
    dlopen_absolute: Dart_NativeAssetsDlopenCallback = @import("std").mem.zeroes(Dart_NativeAssetsDlopenCallback),
    dlopen_relative: Dart_NativeAssetsDlopenCallback = @import("std").mem.zeroes(Dart_NativeAssetsDlopenCallback),
    dlopen_system: Dart_NativeAssetsDlopenCallback = @import("std").mem.zeroes(Dart_NativeAssetsDlopenCallback),
    dlopen_process: Dart_NativeAssetsDlopenCallbackNoPath = @import("std").mem.zeroes(Dart_NativeAssetsDlopenCallbackNoPath),
    dlopen_executable: Dart_NativeAssetsDlopenCallbackNoPath = @import("std").mem.zeroes(Dart_NativeAssetsDlopenCallbackNoPath),
    dlsym: Dart_NativeAssetsDlsymCallback = @import("std").mem.zeroes(Dart_NativeAssetsDlsymCallback),
    dlopen: Dart_NativeAssetsDlopenAssetId = @import("std").mem.zeroes(Dart_NativeAssetsDlopenAssetId),
    available_assets: Dart_NativeAssetsAvailableAssets = @import("std").mem.zeroes(Dart_NativeAssetsAvailableAssets),
};
pub extern fn Dart_InitializeNativeAssetsResolver(native_assets_api: [*c]NativeAssetsApi) void;
pub const Dart_kCanonicalizeUrl: c_int = 0;
pub const Dart_kImportTag: c_int = 1;
pub const Dart_kKernelTag: c_int = 2;
pub const Dart_LibraryTag = c_uint;
pub const Dart_LibraryTagHandler = ?*const fn (Dart_LibraryTag, Dart_Handle, Dart_Handle) callconv(.c) Dart_Handle;
pub extern fn Dart_SetLibraryTagHandler(handler: Dart_LibraryTagHandler) Dart_Handle;
pub const Dart_DeferredLoadHandler = ?*const fn (isize) callconv(.c) Dart_Handle;
pub extern fn Dart_SetDeferredLoadHandler(handler: Dart_DeferredLoadHandler) Dart_Handle;
pub extern fn Dart_DeferredLoadComplete(loading_unit_id: isize, snapshot_data: [*c]const u8, snapshot_instructions: [*c]const u8) Dart_Handle;
pub extern fn Dart_DeferredLoadCompleteError(loading_unit_id: isize, error_message: [*c]const u8, transient: bool) Dart_Handle;
pub extern fn Dart_LoadScriptFromKernel(kernel_buffer: [*c]const u8, kernel_size: isize) Dart_Handle;
pub extern fn Dart_LoadScriptFromBytecode(kernel_buffer: [*c]const u8, kernel_size: isize) Dart_Handle;
pub extern fn Dart_RootLibrary() Dart_Handle;
pub extern fn Dart_SetRootLibrary(library: Dart_Handle) Dart_Handle;
pub extern fn Dart_GetType(library: Dart_Handle, class_name: Dart_Handle, number_of_type_arguments: isize, type_arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_GetNullableType(library: Dart_Handle, class_name: Dart_Handle, number_of_type_arguments: isize, type_arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_GetNonNullableType(library: Dart_Handle, class_name: Dart_Handle, number_of_type_arguments: isize, type_arguments: [*c]Dart_Handle) Dart_Handle;
pub extern fn Dart_TypeToNullableType(@"type": Dart_Handle) Dart_Handle;
pub extern fn Dart_TypeToNonNullableType(@"type": Dart_Handle) Dart_Handle;
pub extern fn Dart_IsNullableType(@"type": Dart_Handle, result: [*c]bool) Dart_Handle;
pub extern fn Dart_IsNonNullableType(@"type": Dart_Handle, result: [*c]bool) Dart_Handle;
pub extern fn Dart_GetClass(library: Dart_Handle, class_name: Dart_Handle) Dart_Handle;
pub extern fn Dart_LibraryUrl(library: Dart_Handle) Dart_Handle;
pub extern fn Dart_LibraryResolvedUrl(library: Dart_Handle) Dart_Handle;
pub extern fn Dart_GetLoadedLibraries() Dart_Handle;
pub extern fn Dart_LookupLibrary(url: Dart_Handle) Dart_Handle;
pub extern fn Dart_LibraryHandleError(library: Dart_Handle, @"error": Dart_Handle) Dart_Handle;
pub extern fn Dart_LoadLibraryFromKernel(kernel_buffer: [*c]const u8, kernel_buffer_size: isize) Dart_Handle;
pub extern fn Dart_LoadLibrary(kernel_buffer: Dart_Handle) Dart_Handle;
pub extern fn Dart_LoadLibraryFromBytecode(bytecode_buffer: Dart_Handle) Dart_Handle;
pub extern fn Dart_FinalizeLoading(complete_futures: bool) Dart_Handle;
pub extern fn Dart_GetPeer(object: Dart_Handle, peer: [*c]?*anyopaque) Dart_Handle;
pub extern fn Dart_SetPeer(object: Dart_Handle, peer: ?*anyopaque) Dart_Handle;
pub const Dart_KernelCompilationStatus_Unknown: c_int = -1;
pub const Dart_KernelCompilationStatus_Ok: c_int = 0;
pub const Dart_KernelCompilationStatus_Error: c_int = 1;
pub const Dart_KernelCompilationStatus_Crash: c_int = 2;
pub const Dart_KernelCompilationStatus_MsgFailed: c_int = 3;
pub const Dart_KernelCompilationStatus = c_int;
pub const Dart_KernelCompilationResult = extern struct {
    status: Dart_KernelCompilationStatus = @import("std").mem.zeroes(Dart_KernelCompilationStatus),
    @"error": [*c]u8 = @import("std").mem.zeroes([*c]u8),
    kernel: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    kernel_size: isize = @import("std").mem.zeroes(isize),
};
pub const Dart_KernelCompilationVerbosityLevel_Error: c_int = 0;
pub const Dart_KernelCompilationVerbosityLevel_Warning: c_int = 1;
pub const Dart_KernelCompilationVerbosityLevel_Info: c_int = 2;
pub const Dart_KernelCompilationVerbosityLevel_All: c_int = 3;
pub const Dart_KernelCompilationVerbosityLevel = c_uint;
pub extern fn Dart_IsKernelIsolate(isolate: Dart_Isolate) bool;
pub extern fn Dart_KernelIsolateIsRunning() bool;
pub extern fn Dart_KernelPort() Dart_Port;
pub extern fn Dart_CompileToKernel(script_uri: [*c]const u8, platform_kernel: [*c]const u8, platform_kernel_size: isize, incremental_compile: bool, snapshot_compile: bool, embed_sources: bool, package_config: [*c]const u8, verbosity: Dart_KernelCompilationVerbosityLevel) Dart_KernelCompilationResult;
pub const Dart_SourceFile = extern struct {
    uri: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    source: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub extern fn Dart_KernelListDependencies() Dart_KernelCompilationResult;
pub extern fn Dart_SetDartLibrarySourcesKernel(platform_kernel: [*c]const u8, platform_kernel_size: isize) void;
pub extern fn Dart_DetectNullSafety(script_uri: [*c]const u8, package_config: [*c]const u8, original_working_directory: [*c]const u8, snapshot_data: [*c]const u8, snapshot_instructions: [*c]const u8, kernel_buffer: [*c]const u8, kernel_buffer_size: isize) bool;
pub extern fn Dart_IsServiceIsolate(isolate: Dart_Isolate) bool;
pub extern fn Dart_WriteProfileToTimeline(main_port: Dart_Port, @"error": [*c][*c]u8) bool;
pub extern fn Dart_Precompile() Dart_Handle;
pub const Dart_CreateLoadingUnitCallback = ?*const fn (?*anyopaque, isize, [*c]?*anyopaque, [*c]?*anyopaque) callconv(.c) void;
pub const Dart_StreamingWriteCallback = ?*const fn (?*anyopaque, [*c]const u8, isize) callconv(.c) void;
pub const Dart_StreamingCloseCallback = ?*const fn (?*anyopaque) callconv(.c) void;
pub extern fn Dart_LoadingUnitLibraryUris(loading_unit_id: isize) Dart_Handle;
pub extern fn Dart_CreateAppAOTSnapshotAsAssembly(callback: Dart_StreamingWriteCallback, callback_data: ?*anyopaque, stripped: bool, debug_callback_data: ?*anyopaque) Dart_Handle;
pub extern fn Dart_CreateAppAOTSnapshotAsAssemblies(next_callback: Dart_CreateLoadingUnitCallback, next_callback_data: ?*anyopaque, stripped: bool, write_callback: Dart_StreamingWriteCallback, close_callback: Dart_StreamingCloseCallback) Dart_Handle;
pub extern fn Dart_CreateAppAOTSnapshotAsElf(callback: Dart_StreamingWriteCallback, callback_data: ?*anyopaque, stripped: bool, debug_callback_data: ?*anyopaque) Dart_Handle;
pub extern fn Dart_CreateAppAOTSnapshotAsElfs(next_callback: Dart_CreateLoadingUnitCallback, next_callback_data: ?*anyopaque, stripped: bool, write_callback: Dart_StreamingWriteCallback, close_callback: Dart_StreamingCloseCallback) Dart_Handle;
pub const Dart_AotBinaryFormat_Elf: c_int = 0;
pub const Dart_AotBinaryFormat_Assembly: c_int = 1;
pub const Dart_AotBinaryFormat_MachO_Dylib: c_int = 2;
pub const Dart_AotBinaryFormat = c_uint;
pub extern fn Dart_CreateAppAOTSnapshotAsBinary(format: Dart_AotBinaryFormat, callback: Dart_StreamingWriteCallback, callback_data: ?*anyopaque, stripped: bool, debug_callback_data: ?*anyopaque, identifier: [*c]const u8, path: [*c]const u8) Dart_Handle;
pub extern fn Dart_CreateVMAOTSnapshotAsAssembly(callback: Dart_StreamingWriteCallback, callback_data: ?*anyopaque) Dart_Handle;
pub extern fn Dart_SortClasses() Dart_Handle;
pub extern fn Dart_CreateAppJITSnapshotAsBlobs(isolate_snapshot_data_buffer: [*c][*c]u8, isolate_snapshot_data_size: [*c]isize, isolate_snapshot_instructions_buffer: [*c][*c]u8, isolate_snapshot_instructions_size: [*c]isize) Dart_Handle;
pub extern fn Dart_GetObfuscationMap(buffer: [*c][*c]u8, buffer_length: [*c]isize) Dart_Handle;
pub extern fn Dart_IsPrecompiledRuntime() bool;
pub extern fn Dart_DumpNativeStackTrace(context: ?*anyopaque) void;
pub extern fn Dart_PrepareToAbort() void;
pub const Dart_DwarfStackTraceFootnoteCallback = ?*const fn ([*c]?*anyopaque, isize) callconv(.c) [*c]u8;
pub extern fn Dart_SetDwarfStackTraceFootnoteCallback(callback: Dart_DwarfStackTraceFootnoteCallback) void;
pub const Dart_CObject_kNull: c_int = 0;
pub const Dart_CObject_kBool: c_int = 1;
pub const Dart_CObject_kInt32: c_int = 2;
pub const Dart_CObject_kInt64: c_int = 3;
pub const Dart_CObject_kDouble: c_int = 4;
pub const Dart_CObject_kString: c_int = 5;
pub const Dart_CObject_kArray: c_int = 6;
pub const Dart_CObject_kTypedData: c_int = 7;
pub const Dart_CObject_kExternalTypedData: c_int = 8;
pub const Dart_CObject_kSendPort: c_int = 9;
pub const Dart_CObject_kCapability: c_int = 10;
pub const Dart_CObject_kNativePointer: c_int = 11;
pub const Dart_CObject_kUnsupported: c_int = 12;
pub const Dart_CObject_kUnmodifiableExternalTypedData: c_int = 13;
pub const Dart_CObject_kNumberOfTypes: c_int = 14;
pub const Dart_CObject_Type = c_uint;
const struct_unnamed_5 = extern struct {
    id: Dart_Port = @import("std").mem.zeroes(Dart_Port),
    origin_id: Dart_Port = @import("std").mem.zeroes(Dart_Port),
};
const struct_unnamed_6 = extern struct {
    id: i64 = @import("std").mem.zeroes(i64),
};
const struct_unnamed_7 = extern struct {
    length: isize = @import("std").mem.zeroes(isize),
    values: [*c][*c]struct__Dart_CObject = @import("std").mem.zeroes([*c][*c]struct__Dart_CObject),
};
const struct_unnamed_8 = extern struct {
    type: Dart_TypedData_Type = @import("std").mem.zeroes(Dart_TypedData_Type),
    length: isize = @import("std").mem.zeroes(isize),
    values: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
const struct_unnamed_9 = extern struct {
    type: Dart_TypedData_Type = @import("std").mem.zeroes(Dart_TypedData_Type),
    length: isize = @import("std").mem.zeroes(isize),
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    peer: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    callback: Dart_HandleFinalizer = @import("std").mem.zeroes(Dart_HandleFinalizer),
};
const struct_unnamed_10 = extern struct {
    ptr: isize = @import("std").mem.zeroes(isize),
    size: isize = @import("std").mem.zeroes(isize),
    callback: Dart_HandleFinalizer = @import("std").mem.zeroes(Dart_HandleFinalizer),
};
const union_unnamed_4 = extern union {
    as_bool: bool,
    as_int32: i32,
    as_int64: i64,
    as_double: f64,
    as_string: [*c]const u8,
    as_send_port: struct_unnamed_5,
    as_capability: struct_unnamed_6,
    as_array: struct_unnamed_7,
    as_typed_data: struct_unnamed_8,
    as_external_typed_data: struct_unnamed_9,
    as_native_pointer: struct_unnamed_10,
};
pub const struct__Dart_CObject = extern struct {
    type: Dart_CObject_Type = @import("std").mem.zeroes(Dart_CObject_Type),
    value: union_unnamed_4 = @import("std").mem.zeroes(union_unnamed_4),
};
pub const Dart_CObject = struct__Dart_CObject;
pub extern fn Dart_PostCObject(port_id: Dart_Port, message: [*c]Dart_CObject) bool;
pub extern fn Dart_PostInteger(port_id: Dart_Port, message: i64) bool;
pub const Dart_NativeMessageHandler = ?*const fn (Dart_Port, [*c]Dart_CObject) callconv(.c) void;
pub extern fn Dart_NewNativePort(name: [*c]const u8, handler: Dart_NativeMessageHandler, handle_concurrently: bool) Dart_Port;
pub extern fn Dart_NewConcurrentNativePort(name: [*c]const u8, handler: Dart_NativeMessageHandler, max_concurrency: isize) Dart_Port;
pub extern fn Dart_CloseNativePort(native_port_id: Dart_Port) bool;
pub extern fn Dart_CompileAll() Dart_Handle;
pub extern fn Dart_FinalizeAllClasses() Dart_Handle;
pub extern fn Dart_ExecuteInternalCommand(command: [*c]const u8, arg: ?*anyopaque) ?*anyopaque;
pub extern fn Dart_InitializeApiDL(data: ?*anyopaque) isize;
pub const Dart_Port_DL = i64;
pub const Dart_PortEx_DL = extern struct {
    port_id: i64 = @import("std").mem.zeroes(i64),
    origin_id: i64 = @import("std").mem.zeroes(i64),
};
pub const Dart_NativeMessageHandler_DL = ?*const fn (Dart_Port_DL, [*c]Dart_CObject) callconv(.c) void;
pub const Dart_PostCObject_Type = ?*const fn (Dart_Port_DL, [*c]Dart_CObject) callconv(.c) bool;
pub extern var Dart_PostCObject_DL: Dart_PostCObject_Type;
pub const Dart_PostInteger_Type = ?*const fn (Dart_Port_DL, i64) callconv(.c) bool;
pub extern var Dart_PostInteger_DL: Dart_PostInteger_Type;
pub const Dart_NewNativePort_Type = ?*const fn ([*c]const u8, Dart_NativeMessageHandler_DL, bool) callconv(.c) Dart_Port_DL;
pub extern var Dart_NewNativePort_DL: Dart_NewNativePort_Type;
pub const Dart_CloseNativePort_Type = ?*const fn (Dart_Port_DL) callconv(.c) bool;
pub extern var Dart_CloseNativePort_DL: Dart_CloseNativePort_Type;
pub const Dart_IsError_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_IsError_DL: Dart_IsError_Type;
pub const Dart_IsApiError_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_IsApiError_DL: Dart_IsApiError_Type;
pub const Dart_IsUnhandledExceptionError_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_IsUnhandledExceptionError_DL: Dart_IsUnhandledExceptionError_Type;
pub const Dart_IsCompilationError_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_IsCompilationError_DL: Dart_IsCompilationError_Type;
pub const Dart_IsFatalError_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_IsFatalError_DL: Dart_IsFatalError_Type;
pub const Dart_GetError_Type = ?*const fn (Dart_Handle) callconv(.c) [*c]const u8;
pub extern var Dart_GetError_DL: Dart_GetError_Type;
pub const Dart_ErrorHasException_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_ErrorHasException_DL: Dart_ErrorHasException_Type;
pub const Dart_ErrorGetException_Type = ?*const fn (Dart_Handle) callconv(.c) Dart_Handle;
pub extern var Dart_ErrorGetException_DL: Dart_ErrorGetException_Type;
pub const Dart_ErrorGetStackTrace_Type = ?*const fn (Dart_Handle) callconv(.c) Dart_Handle;
pub extern var Dart_ErrorGetStackTrace_DL: Dart_ErrorGetStackTrace_Type;
pub const Dart_NewApiError_Type = ?*const fn ([*c]const u8) callconv(.c) Dart_Handle;
pub extern var Dart_NewApiError_DL: Dart_NewApiError_Type;
pub const Dart_NewCompilationError_Type = ?*const fn ([*c]const u8) callconv(.c) Dart_Handle;
pub extern var Dart_NewCompilationError_DL: Dart_NewCompilationError_Type;
pub const Dart_NewUnhandledExceptionError_Type = ?*const fn (Dart_Handle) callconv(.c) Dart_Handle;
pub extern var Dart_NewUnhandledExceptionError_DL: Dart_NewUnhandledExceptionError_Type;
pub const Dart_PropagateError_Type = ?*const fn (Dart_Handle) callconv(.c) void;
pub extern var Dart_PropagateError_DL: Dart_PropagateError_Type;
pub const Dart_HandleFromPersistent_Type = ?*const fn (Dart_PersistentHandle) callconv(.c) Dart_Handle;
pub extern var Dart_HandleFromPersistent_DL: Dart_HandleFromPersistent_Type;
pub const Dart_HandleFromWeakPersistent_Type = ?*const fn (Dart_WeakPersistentHandle) callconv(.c) Dart_Handle;
pub extern var Dart_HandleFromWeakPersistent_DL: Dart_HandleFromWeakPersistent_Type;
pub const Dart_NewPersistentHandle_Type = ?*const fn (Dart_Handle) callconv(.c) Dart_PersistentHandle;
pub extern var Dart_NewPersistentHandle_DL: Dart_NewPersistentHandle_Type;
pub const Dart_SetPersistentHandle_Type = ?*const fn (Dart_PersistentHandle, Dart_Handle) callconv(.c) void;
pub extern var Dart_SetPersistentHandle_DL: Dart_SetPersistentHandle_Type;
pub const Dart_DeletePersistentHandle_Type = ?*const fn (Dart_PersistentHandle) callconv(.c) void;
pub extern var Dart_DeletePersistentHandle_DL: Dart_DeletePersistentHandle_Type;
pub const Dart_NewWeakPersistentHandle_Type = ?*const fn (Dart_Handle, ?*anyopaque, isize, Dart_HandleFinalizer) callconv(.c) Dart_WeakPersistentHandle;
pub extern var Dart_NewWeakPersistentHandle_DL: Dart_NewWeakPersistentHandle_Type;
pub const Dart_DeleteWeakPersistentHandle_Type = ?*const fn (Dart_WeakPersistentHandle) callconv(.c) void;
pub extern var Dart_DeleteWeakPersistentHandle_DL: Dart_DeleteWeakPersistentHandle_Type;
pub const Dart_NewFinalizableHandle_Type = ?*const fn (Dart_Handle, ?*anyopaque, isize, Dart_HandleFinalizer) callconv(.c) Dart_FinalizableHandle;
pub extern var Dart_NewFinalizableHandle_DL: Dart_NewFinalizableHandle_Type;
pub const Dart_DeleteFinalizableHandle_Type = ?*const fn (Dart_FinalizableHandle, Dart_Handle) callconv(.c) void;
pub extern var Dart_DeleteFinalizableHandle_DL: Dart_DeleteFinalizableHandle_Type;
pub const Dart_CurrentIsolate_Type = ?*const fn () callconv(.c) Dart_Isolate;
pub extern var Dart_CurrentIsolate_DL: Dart_CurrentIsolate_Type;
pub const Dart_ExitIsolate_Type = ?*const fn () callconv(.c) void;
pub extern var Dart_ExitIsolate_DL: Dart_ExitIsolate_Type;
pub const Dart_EnterIsolate_Type = ?*const fn (Dart_Isolate) callconv(.c) void;
pub extern var Dart_EnterIsolate_DL: Dart_EnterIsolate_Type;
pub const Dart_GetMainPortId_Type = ?*const fn () callconv(.c) Dart_Port;
pub extern var Dart_GetMainPortId_DL: Dart_GetMainPortId_Type;
pub const Dart_Post_Type = ?*const fn (Dart_Port_DL, Dart_Handle) callconv(.c) bool;
pub extern var Dart_Post_DL: Dart_Post_Type;
pub const Dart_NewSendPort_Type = ?*const fn (Dart_Port_DL) callconv(.c) Dart_Handle;
pub extern var Dart_NewSendPort_DL: Dart_NewSendPort_Type;
pub const Dart_NewSendPortEx_Type = ?*const fn (Dart_PortEx_DL) callconv(.c) Dart_Handle;
pub extern var Dart_NewSendPortEx_DL: Dart_NewSendPortEx_Type;
pub const Dart_SendPortGetId_Type = ?*const fn (Dart_Handle, [*c]Dart_Port_DL) callconv(.c) Dart_Handle;
pub extern var Dart_SendPortGetId_DL: Dart_SendPortGetId_Type;
pub const Dart_SendPortGetIdEx_Type = ?*const fn (Dart_Handle, [*c]Dart_PortEx_DL) callconv(.c) Dart_Handle;
pub extern var Dart_SendPortGetIdEx_DL: Dart_SendPortGetIdEx_Type;
pub const Dart_GetCurrentThreadOwnsIsolate_Type = ?*const fn (Dart_Port) callconv(.c) bool;
pub extern var Dart_GetCurrentThreadOwnsIsolate_DL: Dart_GetCurrentThreadOwnsIsolate_Type;
pub const Dart_EnterScope_Type = ?*const fn () callconv(.c) void;
pub extern var Dart_EnterScope_DL: Dart_EnterScope_Type;
pub const Dart_ExitScope_Type = ?*const fn () callconv(.c) void;
pub extern var Dart_ExitScope_DL: Dart_ExitScope_Type;
pub const Dart_IsNull_Type = ?*const fn (Dart_Handle) callconv(.c) bool;
pub extern var Dart_IsNull_DL: Dart_IsNull_Type;
pub const Dart_Null_Type = ?*const fn () callconv(.c) Dart_Handle;
pub extern var Dart_Null_DL: Dart_Null_Type;
pub const Dart_UpdateExternalSize_Type = ?*const fn (Dart_WeakPersistentHandle, isize) callconv(.c) void;
pub extern var Dart_UpdateExternalSize_DL: Dart_UpdateExternalSize_Type;
pub const Dart_UpdateFinalizableExternalSize_Type = ?*const fn (Dart_FinalizableHandle, Dart_Handle, isize) callconv(.c) void;
pub extern var Dart_UpdateFinalizableExternalSize_DL: Dart_UpdateFinalizableExternalSize_Type;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):373:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):374:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const RUNTIME_INCLUDE_DART_API_DL_H_ = "";
pub const RUNTIME_INCLUDE_DART_API_H_ = "";
pub const __STDC_FORMAT_MACROS = "";
pub const _ASSERT_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:197:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2Y = @as(c_int, 0);
pub const __GLIBC_USE_ISOC23 = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 202405);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K24 = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C23_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 43);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = @compileError("unable to translate macro: undefined identifier `__overloadable__`");
// /usr/include/sys/cdefs.h:151:10
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:370:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/sys/cdefs.h:371:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/sys/cdefs.h:379:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:463:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:622:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:623:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/sys/cdefs.h:666:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:715:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:792:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:793:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/sys/cdefs.h:807:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/sys/cdefs.h:808:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __glibc_const_generic = @compileError("unable to translate C expr: unexpected token '_Generic'");
// /usr/include/sys/cdefs.h:837:10
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:865:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:866:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:867:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:877:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/sys/cdefs.h:884:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`");
// /usr/include/sys/cdefs.h:893:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __ASSERT_VOID_CAST = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/assert.h:46:10
pub const __ASSERT_VARIADIC = @as(c_int, 0);
pub const assert = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /usr/include/assert.h:166:12
pub const __ASSERT_FUNCTION = @compileError("unable to translate C expr: unexpected token '__extension__'");
// /usr/include/assert.h:189:12
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'");
// /usr/include/assert.h:207:10
pub const _INTTYPES_H = @as(c_int, 1);
pub const _STDINT_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const ____gwchar_t_defined = @as(c_int, 1);
pub const __PRI64_PREFIX = "l";
pub const __PRIPTR_PREFIX = "l";
pub const PRId8 = "hhd";
pub const PRId16 = "hd";
pub const PRId32 = "d";
pub const PRId64 = __PRI64_PREFIX ++ "d";
pub const PRIdLEAST8 = "hhd";
pub const PRIdLEAST16 = "hd";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = __PRI64_PREFIX ++ "d";
pub const PRIdFAST8 = "hhd";
pub const PRIdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST64 = __PRI64_PREFIX ++ "d";
pub const PRIi8 = "hhi";
pub const PRIi16 = "hi";
pub const PRIi32 = "i";
pub const PRIi64 = __PRI64_PREFIX ++ "i";
pub const PRIiLEAST8 = "hhi";
pub const PRIiLEAST16 = "hi";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = __PRI64_PREFIX ++ "i";
pub const PRIiFAST8 = "hhi";
pub const PRIiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST64 = __PRI64_PREFIX ++ "i";
pub const PRIo8 = "hho";
pub const PRIo16 = "ho";
pub const PRIo32 = "o";
pub const PRIo64 = __PRI64_PREFIX ++ "o";
pub const PRIoLEAST8 = "hho";
pub const PRIoLEAST16 = "ho";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = __PRI64_PREFIX ++ "o";
pub const PRIoFAST8 = "hho";
pub const PRIoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST64 = __PRI64_PREFIX ++ "o";
pub const PRIu8 = "hhu";
pub const PRIu16 = "hu";
pub const PRIu32 = "u";
pub const PRIu64 = __PRI64_PREFIX ++ "u";
pub const PRIuLEAST8 = "hhu";
pub const PRIuLEAST16 = "hu";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = __PRI64_PREFIX ++ "u";
pub const PRIuFAST8 = "hhu";
pub const PRIuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST64 = __PRI64_PREFIX ++ "u";
pub const PRIx8 = "hhx";
pub const PRIx16 = "hx";
pub const PRIx32 = "x";
pub const PRIx64 = __PRI64_PREFIX ++ "x";
pub const PRIxLEAST8 = "hhx";
pub const PRIxLEAST16 = "hx";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = __PRI64_PREFIX ++ "x";
pub const PRIxFAST8 = "hhx";
pub const PRIxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST64 = __PRI64_PREFIX ++ "x";
pub const PRIX8 = "hhX";
pub const PRIX16 = "hX";
pub const PRIX32 = "X";
pub const PRIX64 = __PRI64_PREFIX ++ "X";
pub const PRIXLEAST8 = "hhX";
pub const PRIXLEAST16 = "hX";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = __PRI64_PREFIX ++ "X";
pub const PRIXFAST8 = "hhX";
pub const PRIXFAST16 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST32 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST64 = __PRI64_PREFIX ++ "X";
pub const PRIdMAX = __PRI64_PREFIX ++ "d";
pub const PRIiMAX = __PRI64_PREFIX ++ "i";
pub const PRIoMAX = __PRI64_PREFIX ++ "o";
pub const PRIuMAX = __PRI64_PREFIX ++ "u";
pub const PRIxMAX = __PRI64_PREFIX ++ "x";
pub const PRIXMAX = __PRI64_PREFIX ++ "X";
pub const PRIdPTR = __PRIPTR_PREFIX ++ "d";
pub const PRIiPTR = __PRIPTR_PREFIX ++ "i";
pub const PRIoPTR = __PRIPTR_PREFIX ++ "o";
pub const PRIuPTR = __PRIPTR_PREFIX ++ "u";
pub const PRIxPTR = __PRIPTR_PREFIX ++ "x";
pub const PRIXPTR = __PRIPTR_PREFIX ++ "X";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = __PRI64_PREFIX ++ "d";
pub const SCNdLEAST8 = "hhd";
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = __PRI64_PREFIX ++ "d";
pub const SCNdFAST8 = "hhd";
pub const SCNdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST64 = __PRI64_PREFIX ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = __PRI64_PREFIX ++ "i";
pub const SCNiLEAST8 = "hhi";
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = __PRI64_PREFIX ++ "i";
pub const SCNiFAST8 = "hhi";
pub const SCNiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST64 = __PRI64_PREFIX ++ "i";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = __PRI64_PREFIX ++ "u";
pub const SCNuLEAST8 = "hhu";
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = __PRI64_PREFIX ++ "u";
pub const SCNuFAST8 = "hhu";
pub const SCNuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST64 = __PRI64_PREFIX ++ "u";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = __PRI64_PREFIX ++ "o";
pub const SCNoLEAST8 = "hho";
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = __PRI64_PREFIX ++ "o";
pub const SCNoFAST8 = "hho";
pub const SCNoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST64 = __PRI64_PREFIX ++ "o";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = __PRI64_PREFIX ++ "x";
pub const SCNxLEAST8 = "hhx";
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = __PRI64_PREFIX ++ "x";
pub const SCNxFAST8 = "hhx";
pub const SCNxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST64 = __PRI64_PREFIX ++ "x";
pub const SCNdMAX = __PRI64_PREFIX ++ "d";
pub const SCNiMAX = __PRI64_PREFIX ++ "i";
pub const SCNoMAX = __PRI64_PREFIX ++ "o";
pub const SCNuMAX = __PRI64_PREFIX ++ "u";
pub const SCNxMAX = __PRI64_PREFIX ++ "x";
pub const SCNdPTR = __PRIPTR_PREFIX ++ "d";
pub const SCNiPTR = __PRIPTR_PREFIX ++ "i";
pub const SCNoPTR = __PRIPTR_PREFIX ++ "o";
pub const SCNuPTR = __PRIPTR_PREFIX ++ "u";
pub const SCNxPTR = __PRIPTR_PREFIX ++ "x";
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const DART_EXTERN_C = @compileError("unable to translate C expr: unexpected token 'extern'");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api.h:35:9
pub const DART_EXPORT = DART_EXTERN_C;
pub const DART_API_WARN_UNUSED_RESULT = @compileError("unable to translate macro: undefined identifier `warn_unused_result`");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api.h:60:9
pub const DART_API_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api.h:61:9
pub const DART_FLAGS_CURRENT_VERSION = @as(c_int, 0x0000000d);
pub const DART_INITIALIZE_PARAMS_CURRENT_VERSION = @as(c_int, 0x00000009);
pub const ILLEGAL_PORT = @import("std").zig.c_translation.cast(Dart_Port, @as(c_int, 0));
pub inline fn BITMASK(size: anytype) @TypeOf((@as(c_int, 1) << size) - @as(c_int, 1)) {
    _ = &size;
    return (@as(c_int, 1) << size) - @as(c_int, 1);
}
pub inline fn DART_NATIVE_ARG_DESCRIPTOR(@"type": anytype, position: anytype) @TypeOf(((@"type" & BITMASK(kNativeArgTypeSize)) << kNativeArgTypePos) | (position & BITMASK(kNativeArgNumberSize))) {
    _ = &@"type";
    _ = &position;
    return ((@"type" & BITMASK(kNativeArgTypeSize)) << kNativeArgTypePos) | (position & BITMASK(kNativeArgNumberSize));
}
pub const DART_KERNEL_ISOLATE_NAME = "kernel-service";
pub const DART_VM_SERVICE_ISOLATE_NAME = "vm-service";
pub const kSnapshotBuildIdCSymbol = "_kDartSnapshotBuildId";
pub const kVmSnapshotDataCSymbol = "_kDartVmSnapshotData";
pub const kVmSnapshotInstructionsCSymbol = "_kDartVmSnapshotInstructions";
pub const kVmSnapshotBssCSymbol = "_kDartVmSnapshotBss";
pub const kIsolateSnapshotDataCSymbol = "_kDartIsolateSnapshotData";
pub const kIsolateSnapshotInstructionsCSymbol = "_kDartIsolateSnapshotInstructions";
pub const kIsolateSnapshotBssCSymbol = "_kDartIsolateSnapshotBss";
pub const kSnapshotBuildIdAsmSymbol = "_kDartSnapshotBuildId";
pub const kVmSnapshotDataAsmSymbol = "_kDartVmSnapshotData";
pub const kVmSnapshotInstructionsAsmSymbol = "_kDartVmSnapshotInstructions";
pub const kVmSnapshotBssAsmSymbol = "_kDartVmSnapshotBss";
pub const kIsolateSnapshotDataAsmSymbol = "_kDartIsolateSnapshotData";
pub const kIsolateSnapshotInstructionsAsmSymbol = "_kDartIsolateSnapshotInstructions";
pub const kIsolateSnapshotBssAsmSymbol = "_kDartIsolateSnapshotBss";
pub const RUNTIME_INCLUDE_DART_NATIVE_API_H_ = "";
pub const DART_NATIVE_API_DL_SYMBOLS = @compileError("unable to translate macro: undefined identifier `port_id`");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api_dl.h:50:9
pub const DART_API_DL_SYMBOLS = @compileError("unable to translate macro: undefined identifier `handle`");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api_dl.h:61:9
pub const DART_API_DEPRECATED_DL_SYMBOLS = @compileError("unable to translate macro: undefined identifier `Dart_UpdateExternalSize`");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api_dl.h:118:9
pub inline fn DART_API_ALL_DL_SYMBOLS(F: anytype) @TypeOf(DART_NATIVE_API_DL_SYMBOLS(F) ++ DART_API_DL_SYMBOLS(F)) {
    _ = &F;
    return DART_NATIVE_API_DL_SYMBOLS(F) ++ DART_API_DL_SYMBOLS(F);
}
pub const DART_EXPORT_DL = DART_EXTERN_C;
pub const DART_API_DL_DECLARATIONS = @compileError("unable to translate macro: undefined identifier `_Type`");
// /run/media/kingwill101/disk2/code/code/dart_packages/zigchain/example/dart_api/zig/include/dart_api_dl.h:163:9
pub const _Dart_Isolate = struct__Dart_Isolate;
pub const _Dart_IsolateGroup = struct__Dart_IsolateGroup;
pub const _Dart_Handle = struct__Dart_Handle;
pub const _Dart_WeakPersistentHandle = struct__Dart_WeakPersistentHandle;
pub const _Dart_FinalizableHandle = struct__Dart_FinalizableHandle;
pub const _Dart_NativeArguments = struct__Dart_NativeArguments;
pub const _Dart_NativeArgument_Descriptor = struct__Dart_NativeArgument_Descriptor;
pub const _Dart_NativeArgument_Value = union__Dart_NativeArgument_Value;
pub const _Dart_CObject = struct__Dart_CObject;
