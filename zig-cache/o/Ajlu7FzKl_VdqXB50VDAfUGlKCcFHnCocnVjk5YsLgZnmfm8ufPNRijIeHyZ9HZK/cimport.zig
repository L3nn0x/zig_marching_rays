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
const struct_unnamed_1 = extern struct {
    __val: [2]c_int,
};
pub const __fsid_t = struct_unnamed_1;
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*c_void;
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
pub const gid_t = __gid_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const useconds_t = __useconds_t;
pub const pid_t = __pid_t;
pub const socklen_t = __socklen_t;
pub extern fn access(__name: [*c]const u8, __type: c_int) c_int;
pub extern fn faccessat(__fd: c_int, __file: [*c]const u8, __type: c_int, __flag: c_int) c_int;
pub extern fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) __off_t;
pub extern fn close(__fd: c_int) c_int;
pub extern fn read(__fd: c_int, __buf: ?*c_void, __nbytes: usize) isize;
pub extern fn write(__fd: c_int, __buf: ?*const c_void, __n: usize) isize;
pub extern fn pread(__fd: c_int, __buf: ?*c_void, __nbytes: usize, __offset: __off_t) isize;
pub extern fn pwrite(__fd: c_int, __buf: ?*const c_void, __n: usize, __offset: __off_t) isize;
pub extern fn pipe(__pipedes: [*c]c_int) c_int;
pub extern fn alarm(__seconds: c_uint) c_uint;
pub extern fn sleep(__seconds: c_uint) c_uint;
pub extern fn ualarm(__value: __useconds_t, __interval: __useconds_t) __useconds_t;
pub extern fn usleep(__useconds: __useconds_t) c_int;
pub extern fn pause() c_int;
pub extern fn chown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn lchown(__file: [*c]const u8, __owner: __uid_t, __group: __gid_t) c_int;
pub extern fn fchownat(__fd: c_int, __file: [*c]const u8, __owner: __uid_t, __group: __gid_t, __flag: c_int) c_int;
pub extern fn chdir(__path: [*c]const u8) c_int;
pub extern fn fchdir(__fd: c_int) c_int;
pub extern fn getcwd(__buf: [*c]u8, __size: usize) [*c]u8;
pub extern fn getwd(__buf: [*c]u8) [*c]u8;
pub extern fn dup(__fd: c_int) c_int;
pub extern fn dup2(__fd: c_int, __fd2: c_int) c_int;
pub extern var __environ: [*c][*c]u8;
pub extern fn execve(__path: [*c]const u8, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn fexecve(__fd: c_int, __argv: [*c]const [*c]u8, __envp: [*c]const [*c]u8) c_int;
pub extern fn execv(__path: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execle(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execl(__path: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn execvp(__file: [*c]const u8, __argv: [*c]const [*c]u8) c_int;
pub extern fn execlp(__file: [*c]const u8, __arg: [*c]const u8, ...) c_int;
pub extern fn nice(__inc: c_int) c_int;
pub extern fn _exit(__status: c_int) noreturn;
pub const _PC_LINK_MAX = @enumToInt(enum_unnamed_2._PC_LINK_MAX);
pub const _PC_MAX_CANON = @enumToInt(enum_unnamed_2._PC_MAX_CANON);
pub const _PC_MAX_INPUT = @enumToInt(enum_unnamed_2._PC_MAX_INPUT);
pub const _PC_NAME_MAX = @enumToInt(enum_unnamed_2._PC_NAME_MAX);
pub const _PC_PATH_MAX = @enumToInt(enum_unnamed_2._PC_PATH_MAX);
pub const _PC_PIPE_BUF = @enumToInt(enum_unnamed_2._PC_PIPE_BUF);
pub const _PC_CHOWN_RESTRICTED = @enumToInt(enum_unnamed_2._PC_CHOWN_RESTRICTED);
pub const _PC_NO_TRUNC = @enumToInt(enum_unnamed_2._PC_NO_TRUNC);
pub const _PC_VDISABLE = @enumToInt(enum_unnamed_2._PC_VDISABLE);
pub const _PC_SYNC_IO = @enumToInt(enum_unnamed_2._PC_SYNC_IO);
pub const _PC_ASYNC_IO = @enumToInt(enum_unnamed_2._PC_ASYNC_IO);
pub const _PC_PRIO_IO = @enumToInt(enum_unnamed_2._PC_PRIO_IO);
pub const _PC_SOCK_MAXBUF = @enumToInt(enum_unnamed_2._PC_SOCK_MAXBUF);
pub const _PC_FILESIZEBITS = @enumToInt(enum_unnamed_2._PC_FILESIZEBITS);
pub const _PC_REC_INCR_XFER_SIZE = @enumToInt(enum_unnamed_2._PC_REC_INCR_XFER_SIZE);
pub const _PC_REC_MAX_XFER_SIZE = @enumToInt(enum_unnamed_2._PC_REC_MAX_XFER_SIZE);
pub const _PC_REC_MIN_XFER_SIZE = @enumToInt(enum_unnamed_2._PC_REC_MIN_XFER_SIZE);
pub const _PC_REC_XFER_ALIGN = @enumToInt(enum_unnamed_2._PC_REC_XFER_ALIGN);
pub const _PC_ALLOC_SIZE_MIN = @enumToInt(enum_unnamed_2._PC_ALLOC_SIZE_MIN);
pub const _PC_SYMLINK_MAX = @enumToInt(enum_unnamed_2._PC_SYMLINK_MAX);
pub const _PC_2_SYMLINKS = @enumToInt(enum_unnamed_2._PC_2_SYMLINKS);
const enum_unnamed_2 = extern enum(c_int) {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS,
    _,
};
pub const _SC_ARG_MAX = @enumToInt(enum_unnamed_3._SC_ARG_MAX);
pub const _SC_CHILD_MAX = @enumToInt(enum_unnamed_3._SC_CHILD_MAX);
pub const _SC_CLK_TCK = @enumToInt(enum_unnamed_3._SC_CLK_TCK);
pub const _SC_NGROUPS_MAX = @enumToInt(enum_unnamed_3._SC_NGROUPS_MAX);
pub const _SC_OPEN_MAX = @enumToInt(enum_unnamed_3._SC_OPEN_MAX);
pub const _SC_STREAM_MAX = @enumToInt(enum_unnamed_3._SC_STREAM_MAX);
pub const _SC_TZNAME_MAX = @enumToInt(enum_unnamed_3._SC_TZNAME_MAX);
pub const _SC_JOB_CONTROL = @enumToInt(enum_unnamed_3._SC_JOB_CONTROL);
pub const _SC_SAVED_IDS = @enumToInt(enum_unnamed_3._SC_SAVED_IDS);
pub const _SC_REALTIME_SIGNALS = @enumToInt(enum_unnamed_3._SC_REALTIME_SIGNALS);
pub const _SC_PRIORITY_SCHEDULING = @enumToInt(enum_unnamed_3._SC_PRIORITY_SCHEDULING);
pub const _SC_TIMERS = @enumToInt(enum_unnamed_3._SC_TIMERS);
pub const _SC_ASYNCHRONOUS_IO = @enumToInt(enum_unnamed_3._SC_ASYNCHRONOUS_IO);
pub const _SC_PRIORITIZED_IO = @enumToInt(enum_unnamed_3._SC_PRIORITIZED_IO);
pub const _SC_SYNCHRONIZED_IO = @enumToInt(enum_unnamed_3._SC_SYNCHRONIZED_IO);
pub const _SC_FSYNC = @enumToInt(enum_unnamed_3._SC_FSYNC);
pub const _SC_MAPPED_FILES = @enumToInt(enum_unnamed_3._SC_MAPPED_FILES);
pub const _SC_MEMLOCK = @enumToInt(enum_unnamed_3._SC_MEMLOCK);
pub const _SC_MEMLOCK_RANGE = @enumToInt(enum_unnamed_3._SC_MEMLOCK_RANGE);
pub const _SC_MEMORY_PROTECTION = @enumToInt(enum_unnamed_3._SC_MEMORY_PROTECTION);
pub const _SC_MESSAGE_PASSING = @enumToInt(enum_unnamed_3._SC_MESSAGE_PASSING);
pub const _SC_SEMAPHORES = @enumToInt(enum_unnamed_3._SC_SEMAPHORES);
pub const _SC_SHARED_MEMORY_OBJECTS = @enumToInt(enum_unnamed_3._SC_SHARED_MEMORY_OBJECTS);
pub const _SC_AIO_LISTIO_MAX = @enumToInt(enum_unnamed_3._SC_AIO_LISTIO_MAX);
pub const _SC_AIO_MAX = @enumToInt(enum_unnamed_3._SC_AIO_MAX);
pub const _SC_AIO_PRIO_DELTA_MAX = @enumToInt(enum_unnamed_3._SC_AIO_PRIO_DELTA_MAX);
pub const _SC_DELAYTIMER_MAX = @enumToInt(enum_unnamed_3._SC_DELAYTIMER_MAX);
pub const _SC_MQ_OPEN_MAX = @enumToInt(enum_unnamed_3._SC_MQ_OPEN_MAX);
pub const _SC_MQ_PRIO_MAX = @enumToInt(enum_unnamed_3._SC_MQ_PRIO_MAX);
pub const _SC_VERSION = @enumToInt(enum_unnamed_3._SC_VERSION);
pub const _SC_PAGESIZE = @enumToInt(enum_unnamed_3._SC_PAGESIZE);
pub const _SC_RTSIG_MAX = @enumToInt(enum_unnamed_3._SC_RTSIG_MAX);
pub const _SC_SEM_NSEMS_MAX = @enumToInt(enum_unnamed_3._SC_SEM_NSEMS_MAX);
pub const _SC_SEM_VALUE_MAX = @enumToInt(enum_unnamed_3._SC_SEM_VALUE_MAX);
pub const _SC_SIGQUEUE_MAX = @enumToInt(enum_unnamed_3._SC_SIGQUEUE_MAX);
pub const _SC_TIMER_MAX = @enumToInt(enum_unnamed_3._SC_TIMER_MAX);
pub const _SC_BC_BASE_MAX = @enumToInt(enum_unnamed_3._SC_BC_BASE_MAX);
pub const _SC_BC_DIM_MAX = @enumToInt(enum_unnamed_3._SC_BC_DIM_MAX);
pub const _SC_BC_SCALE_MAX = @enumToInt(enum_unnamed_3._SC_BC_SCALE_MAX);
pub const _SC_BC_STRING_MAX = @enumToInt(enum_unnamed_3._SC_BC_STRING_MAX);
pub const _SC_COLL_WEIGHTS_MAX = @enumToInt(enum_unnamed_3._SC_COLL_WEIGHTS_MAX);
pub const _SC_EQUIV_CLASS_MAX = @enumToInt(enum_unnamed_3._SC_EQUIV_CLASS_MAX);
pub const _SC_EXPR_NEST_MAX = @enumToInt(enum_unnamed_3._SC_EXPR_NEST_MAX);
pub const _SC_LINE_MAX = @enumToInt(enum_unnamed_3._SC_LINE_MAX);
pub const _SC_RE_DUP_MAX = @enumToInt(enum_unnamed_3._SC_RE_DUP_MAX);
pub const _SC_CHARCLASS_NAME_MAX = @enumToInt(enum_unnamed_3._SC_CHARCLASS_NAME_MAX);
pub const _SC_2_VERSION = @enumToInt(enum_unnamed_3._SC_2_VERSION);
pub const _SC_2_C_BIND = @enumToInt(enum_unnamed_3._SC_2_C_BIND);
pub const _SC_2_C_DEV = @enumToInt(enum_unnamed_3._SC_2_C_DEV);
pub const _SC_2_FORT_DEV = @enumToInt(enum_unnamed_3._SC_2_FORT_DEV);
pub const _SC_2_FORT_RUN = @enumToInt(enum_unnamed_3._SC_2_FORT_RUN);
pub const _SC_2_SW_DEV = @enumToInt(enum_unnamed_3._SC_2_SW_DEV);
pub const _SC_2_LOCALEDEF = @enumToInt(enum_unnamed_3._SC_2_LOCALEDEF);
pub const _SC_PII = @enumToInt(enum_unnamed_3._SC_PII);
pub const _SC_PII_XTI = @enumToInt(enum_unnamed_3._SC_PII_XTI);
pub const _SC_PII_SOCKET = @enumToInt(enum_unnamed_3._SC_PII_SOCKET);
pub const _SC_PII_INTERNET = @enumToInt(enum_unnamed_3._SC_PII_INTERNET);
pub const _SC_PII_OSI = @enumToInt(enum_unnamed_3._SC_PII_OSI);
pub const _SC_POLL = @enumToInt(enum_unnamed_3._SC_POLL);
pub const _SC_SELECT = @enumToInt(enum_unnamed_3._SC_SELECT);
pub const _SC_UIO_MAXIOV = @enumToInt(enum_unnamed_3._SC_UIO_MAXIOV);
pub const _SC_IOV_MAX = @enumToInt(enum_unnamed_3._SC_IOV_MAX);
pub const _SC_PII_INTERNET_STREAM = @enumToInt(enum_unnamed_3._SC_PII_INTERNET_STREAM);
pub const _SC_PII_INTERNET_DGRAM = @enumToInt(enum_unnamed_3._SC_PII_INTERNET_DGRAM);
pub const _SC_PII_OSI_COTS = @enumToInt(enum_unnamed_3._SC_PII_OSI_COTS);
pub const _SC_PII_OSI_CLTS = @enumToInt(enum_unnamed_3._SC_PII_OSI_CLTS);
pub const _SC_PII_OSI_M = @enumToInt(enum_unnamed_3._SC_PII_OSI_M);
pub const _SC_T_IOV_MAX = @enumToInt(enum_unnamed_3._SC_T_IOV_MAX);
pub const _SC_THREADS = @enumToInt(enum_unnamed_3._SC_THREADS);
pub const _SC_THREAD_SAFE_FUNCTIONS = @enumToInt(enum_unnamed_3._SC_THREAD_SAFE_FUNCTIONS);
pub const _SC_GETGR_R_SIZE_MAX = @enumToInt(enum_unnamed_3._SC_GETGR_R_SIZE_MAX);
pub const _SC_GETPW_R_SIZE_MAX = @enumToInt(enum_unnamed_3._SC_GETPW_R_SIZE_MAX);
pub const _SC_LOGIN_NAME_MAX = @enumToInt(enum_unnamed_3._SC_LOGIN_NAME_MAX);
pub const _SC_TTY_NAME_MAX = @enumToInt(enum_unnamed_3._SC_TTY_NAME_MAX);
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS = @enumToInt(enum_unnamed_3._SC_THREAD_DESTRUCTOR_ITERATIONS);
pub const _SC_THREAD_KEYS_MAX = @enumToInt(enum_unnamed_3._SC_THREAD_KEYS_MAX);
pub const _SC_THREAD_STACK_MIN = @enumToInt(enum_unnamed_3._SC_THREAD_STACK_MIN);
pub const _SC_THREAD_THREADS_MAX = @enumToInt(enum_unnamed_3._SC_THREAD_THREADS_MAX);
pub const _SC_THREAD_ATTR_STACKADDR = @enumToInt(enum_unnamed_3._SC_THREAD_ATTR_STACKADDR);
pub const _SC_THREAD_ATTR_STACKSIZE = @enumToInt(enum_unnamed_3._SC_THREAD_ATTR_STACKSIZE);
pub const _SC_THREAD_PRIORITY_SCHEDULING = @enumToInt(enum_unnamed_3._SC_THREAD_PRIORITY_SCHEDULING);
pub const _SC_THREAD_PRIO_INHERIT = @enumToInt(enum_unnamed_3._SC_THREAD_PRIO_INHERIT);
pub const _SC_THREAD_PRIO_PROTECT = @enumToInt(enum_unnamed_3._SC_THREAD_PRIO_PROTECT);
pub const _SC_THREAD_PROCESS_SHARED = @enumToInt(enum_unnamed_3._SC_THREAD_PROCESS_SHARED);
pub const _SC_NPROCESSORS_CONF = @enumToInt(enum_unnamed_3._SC_NPROCESSORS_CONF);
pub const _SC_NPROCESSORS_ONLN = @enumToInt(enum_unnamed_3._SC_NPROCESSORS_ONLN);
pub const _SC_PHYS_PAGES = @enumToInt(enum_unnamed_3._SC_PHYS_PAGES);
pub const _SC_AVPHYS_PAGES = @enumToInt(enum_unnamed_3._SC_AVPHYS_PAGES);
pub const _SC_ATEXIT_MAX = @enumToInt(enum_unnamed_3._SC_ATEXIT_MAX);
pub const _SC_PASS_MAX = @enumToInt(enum_unnamed_3._SC_PASS_MAX);
pub const _SC_XOPEN_VERSION = @enumToInt(enum_unnamed_3._SC_XOPEN_VERSION);
pub const _SC_XOPEN_XCU_VERSION = @enumToInt(enum_unnamed_3._SC_XOPEN_XCU_VERSION);
pub const _SC_XOPEN_UNIX = @enumToInt(enum_unnamed_3._SC_XOPEN_UNIX);
pub const _SC_XOPEN_CRYPT = @enumToInt(enum_unnamed_3._SC_XOPEN_CRYPT);
pub const _SC_XOPEN_ENH_I18N = @enumToInt(enum_unnamed_3._SC_XOPEN_ENH_I18N);
pub const _SC_XOPEN_SHM = @enumToInt(enum_unnamed_3._SC_XOPEN_SHM);
pub const _SC_2_CHAR_TERM = @enumToInt(enum_unnamed_3._SC_2_CHAR_TERM);
pub const _SC_2_C_VERSION = @enumToInt(enum_unnamed_3._SC_2_C_VERSION);
pub const _SC_2_UPE = @enumToInt(enum_unnamed_3._SC_2_UPE);
pub const _SC_XOPEN_XPG2 = @enumToInt(enum_unnamed_3._SC_XOPEN_XPG2);
pub const _SC_XOPEN_XPG3 = @enumToInt(enum_unnamed_3._SC_XOPEN_XPG3);
pub const _SC_XOPEN_XPG4 = @enumToInt(enum_unnamed_3._SC_XOPEN_XPG4);
pub const _SC_CHAR_BIT = @enumToInt(enum_unnamed_3._SC_CHAR_BIT);
pub const _SC_CHAR_MAX = @enumToInt(enum_unnamed_3._SC_CHAR_MAX);
pub const _SC_CHAR_MIN = @enumToInt(enum_unnamed_3._SC_CHAR_MIN);
pub const _SC_INT_MAX = @enumToInt(enum_unnamed_3._SC_INT_MAX);
pub const _SC_INT_MIN = @enumToInt(enum_unnamed_3._SC_INT_MIN);
pub const _SC_LONG_BIT = @enumToInt(enum_unnamed_3._SC_LONG_BIT);
pub const _SC_WORD_BIT = @enumToInt(enum_unnamed_3._SC_WORD_BIT);
pub const _SC_MB_LEN_MAX = @enumToInt(enum_unnamed_3._SC_MB_LEN_MAX);
pub const _SC_NZERO = @enumToInt(enum_unnamed_3._SC_NZERO);
pub const _SC_SSIZE_MAX = @enumToInt(enum_unnamed_3._SC_SSIZE_MAX);
pub const _SC_SCHAR_MAX = @enumToInt(enum_unnamed_3._SC_SCHAR_MAX);
pub const _SC_SCHAR_MIN = @enumToInt(enum_unnamed_3._SC_SCHAR_MIN);
pub const _SC_SHRT_MAX = @enumToInt(enum_unnamed_3._SC_SHRT_MAX);
pub const _SC_SHRT_MIN = @enumToInt(enum_unnamed_3._SC_SHRT_MIN);
pub const _SC_UCHAR_MAX = @enumToInt(enum_unnamed_3._SC_UCHAR_MAX);
pub const _SC_UINT_MAX = @enumToInt(enum_unnamed_3._SC_UINT_MAX);
pub const _SC_ULONG_MAX = @enumToInt(enum_unnamed_3._SC_ULONG_MAX);
pub const _SC_USHRT_MAX = @enumToInt(enum_unnamed_3._SC_USHRT_MAX);
pub const _SC_NL_ARGMAX = @enumToInt(enum_unnamed_3._SC_NL_ARGMAX);
pub const _SC_NL_LANGMAX = @enumToInt(enum_unnamed_3._SC_NL_LANGMAX);
pub const _SC_NL_MSGMAX = @enumToInt(enum_unnamed_3._SC_NL_MSGMAX);
pub const _SC_NL_NMAX = @enumToInt(enum_unnamed_3._SC_NL_NMAX);
pub const _SC_NL_SETMAX = @enumToInt(enum_unnamed_3._SC_NL_SETMAX);
pub const _SC_NL_TEXTMAX = @enumToInt(enum_unnamed_3._SC_NL_TEXTMAX);
pub const _SC_XBS5_ILP32_OFF32 = @enumToInt(enum_unnamed_3._SC_XBS5_ILP32_OFF32);
pub const _SC_XBS5_ILP32_OFFBIG = @enumToInt(enum_unnamed_3._SC_XBS5_ILP32_OFFBIG);
pub const _SC_XBS5_LP64_OFF64 = @enumToInt(enum_unnamed_3._SC_XBS5_LP64_OFF64);
pub const _SC_XBS5_LPBIG_OFFBIG = @enumToInt(enum_unnamed_3._SC_XBS5_LPBIG_OFFBIG);
pub const _SC_XOPEN_LEGACY = @enumToInt(enum_unnamed_3._SC_XOPEN_LEGACY);
pub const _SC_XOPEN_REALTIME = @enumToInt(enum_unnamed_3._SC_XOPEN_REALTIME);
pub const _SC_XOPEN_REALTIME_THREADS = @enumToInt(enum_unnamed_3._SC_XOPEN_REALTIME_THREADS);
pub const _SC_ADVISORY_INFO = @enumToInt(enum_unnamed_3._SC_ADVISORY_INFO);
pub const _SC_BARRIERS = @enumToInt(enum_unnamed_3._SC_BARRIERS);
pub const _SC_BASE = @enumToInt(enum_unnamed_3._SC_BASE);
pub const _SC_C_LANG_SUPPORT = @enumToInt(enum_unnamed_3._SC_C_LANG_SUPPORT);
pub const _SC_C_LANG_SUPPORT_R = @enumToInt(enum_unnamed_3._SC_C_LANG_SUPPORT_R);
pub const _SC_CLOCK_SELECTION = @enumToInt(enum_unnamed_3._SC_CLOCK_SELECTION);
pub const _SC_CPUTIME = @enumToInt(enum_unnamed_3._SC_CPUTIME);
pub const _SC_THREAD_CPUTIME = @enumToInt(enum_unnamed_3._SC_THREAD_CPUTIME);
pub const _SC_DEVICE_IO = @enumToInt(enum_unnamed_3._SC_DEVICE_IO);
pub const _SC_DEVICE_SPECIFIC = @enumToInt(enum_unnamed_3._SC_DEVICE_SPECIFIC);
pub const _SC_DEVICE_SPECIFIC_R = @enumToInt(enum_unnamed_3._SC_DEVICE_SPECIFIC_R);
pub const _SC_FD_MGMT = @enumToInt(enum_unnamed_3._SC_FD_MGMT);
pub const _SC_FIFO = @enumToInt(enum_unnamed_3._SC_FIFO);
pub const _SC_PIPE = @enumToInt(enum_unnamed_3._SC_PIPE);
pub const _SC_FILE_ATTRIBUTES = @enumToInt(enum_unnamed_3._SC_FILE_ATTRIBUTES);
pub const _SC_FILE_LOCKING = @enumToInt(enum_unnamed_3._SC_FILE_LOCKING);
pub const _SC_FILE_SYSTEM = @enumToInt(enum_unnamed_3._SC_FILE_SYSTEM);
pub const _SC_MONOTONIC_CLOCK = @enumToInt(enum_unnamed_3._SC_MONOTONIC_CLOCK);
pub const _SC_MULTI_PROCESS = @enumToInt(enum_unnamed_3._SC_MULTI_PROCESS);
pub const _SC_SINGLE_PROCESS = @enumToInt(enum_unnamed_3._SC_SINGLE_PROCESS);
pub const _SC_NETWORKING = @enumToInt(enum_unnamed_3._SC_NETWORKING);
pub const _SC_READER_WRITER_LOCKS = @enumToInt(enum_unnamed_3._SC_READER_WRITER_LOCKS);
pub const _SC_SPIN_LOCKS = @enumToInt(enum_unnamed_3._SC_SPIN_LOCKS);
pub const _SC_REGEXP = @enumToInt(enum_unnamed_3._SC_REGEXP);
pub const _SC_REGEX_VERSION = @enumToInt(enum_unnamed_3._SC_REGEX_VERSION);
pub const _SC_SHELL = @enumToInt(enum_unnamed_3._SC_SHELL);
pub const _SC_SIGNALS = @enumToInt(enum_unnamed_3._SC_SIGNALS);
pub const _SC_SPAWN = @enumToInt(enum_unnamed_3._SC_SPAWN);
pub const _SC_SPORADIC_SERVER = @enumToInt(enum_unnamed_3._SC_SPORADIC_SERVER);
pub const _SC_THREAD_SPORADIC_SERVER = @enumToInt(enum_unnamed_3._SC_THREAD_SPORADIC_SERVER);
pub const _SC_SYSTEM_DATABASE = @enumToInt(enum_unnamed_3._SC_SYSTEM_DATABASE);
pub const _SC_SYSTEM_DATABASE_R = @enumToInt(enum_unnamed_3._SC_SYSTEM_DATABASE_R);
pub const _SC_TIMEOUTS = @enumToInt(enum_unnamed_3._SC_TIMEOUTS);
pub const _SC_TYPED_MEMORY_OBJECTS = @enumToInt(enum_unnamed_3._SC_TYPED_MEMORY_OBJECTS);
pub const _SC_USER_GROUPS = @enumToInt(enum_unnamed_3._SC_USER_GROUPS);
pub const _SC_USER_GROUPS_R = @enumToInt(enum_unnamed_3._SC_USER_GROUPS_R);
pub const _SC_2_PBS = @enumToInt(enum_unnamed_3._SC_2_PBS);
pub const _SC_2_PBS_ACCOUNTING = @enumToInt(enum_unnamed_3._SC_2_PBS_ACCOUNTING);
pub const _SC_2_PBS_LOCATE = @enumToInt(enum_unnamed_3._SC_2_PBS_LOCATE);
pub const _SC_2_PBS_MESSAGE = @enumToInt(enum_unnamed_3._SC_2_PBS_MESSAGE);
pub const _SC_2_PBS_TRACK = @enumToInt(enum_unnamed_3._SC_2_PBS_TRACK);
pub const _SC_SYMLOOP_MAX = @enumToInt(enum_unnamed_3._SC_SYMLOOP_MAX);
pub const _SC_STREAMS = @enumToInt(enum_unnamed_3._SC_STREAMS);
pub const _SC_2_PBS_CHECKPOINT = @enumToInt(enum_unnamed_3._SC_2_PBS_CHECKPOINT);
pub const _SC_V6_ILP32_OFF32 = @enumToInt(enum_unnamed_3._SC_V6_ILP32_OFF32);
pub const _SC_V6_ILP32_OFFBIG = @enumToInt(enum_unnamed_3._SC_V6_ILP32_OFFBIG);
pub const _SC_V6_LP64_OFF64 = @enumToInt(enum_unnamed_3._SC_V6_LP64_OFF64);
pub const _SC_V6_LPBIG_OFFBIG = @enumToInt(enum_unnamed_3._SC_V6_LPBIG_OFFBIG);
pub const _SC_HOST_NAME_MAX = @enumToInt(enum_unnamed_3._SC_HOST_NAME_MAX);
pub const _SC_TRACE = @enumToInt(enum_unnamed_3._SC_TRACE);
pub const _SC_TRACE_EVENT_FILTER = @enumToInt(enum_unnamed_3._SC_TRACE_EVENT_FILTER);
pub const _SC_TRACE_INHERIT = @enumToInt(enum_unnamed_3._SC_TRACE_INHERIT);
pub const _SC_TRACE_LOG = @enumToInt(enum_unnamed_3._SC_TRACE_LOG);
pub const _SC_LEVEL1_ICACHE_SIZE = @enumToInt(enum_unnamed_3._SC_LEVEL1_ICACHE_SIZE);
pub const _SC_LEVEL1_ICACHE_ASSOC = @enumToInt(enum_unnamed_3._SC_LEVEL1_ICACHE_ASSOC);
pub const _SC_LEVEL1_ICACHE_LINESIZE = @enumToInt(enum_unnamed_3._SC_LEVEL1_ICACHE_LINESIZE);
pub const _SC_LEVEL1_DCACHE_SIZE = @enumToInt(enum_unnamed_3._SC_LEVEL1_DCACHE_SIZE);
pub const _SC_LEVEL1_DCACHE_ASSOC = @enumToInt(enum_unnamed_3._SC_LEVEL1_DCACHE_ASSOC);
pub const _SC_LEVEL1_DCACHE_LINESIZE = @enumToInt(enum_unnamed_3._SC_LEVEL1_DCACHE_LINESIZE);
pub const _SC_LEVEL2_CACHE_SIZE = @enumToInt(enum_unnamed_3._SC_LEVEL2_CACHE_SIZE);
pub const _SC_LEVEL2_CACHE_ASSOC = @enumToInt(enum_unnamed_3._SC_LEVEL2_CACHE_ASSOC);
pub const _SC_LEVEL2_CACHE_LINESIZE = @enumToInt(enum_unnamed_3._SC_LEVEL2_CACHE_LINESIZE);
pub const _SC_LEVEL3_CACHE_SIZE = @enumToInt(enum_unnamed_3._SC_LEVEL3_CACHE_SIZE);
pub const _SC_LEVEL3_CACHE_ASSOC = @enumToInt(enum_unnamed_3._SC_LEVEL3_CACHE_ASSOC);
pub const _SC_LEVEL3_CACHE_LINESIZE = @enumToInt(enum_unnamed_3._SC_LEVEL3_CACHE_LINESIZE);
pub const _SC_LEVEL4_CACHE_SIZE = @enumToInt(enum_unnamed_3._SC_LEVEL4_CACHE_SIZE);
pub const _SC_LEVEL4_CACHE_ASSOC = @enumToInt(enum_unnamed_3._SC_LEVEL4_CACHE_ASSOC);
pub const _SC_LEVEL4_CACHE_LINESIZE = @enumToInt(enum_unnamed_3._SC_LEVEL4_CACHE_LINESIZE);
pub const _SC_IPV6 = @enumToInt(enum_unnamed_3._SC_IPV6);
pub const _SC_RAW_SOCKETS = @enumToInt(enum_unnamed_3._SC_RAW_SOCKETS);
pub const _SC_V7_ILP32_OFF32 = @enumToInt(enum_unnamed_3._SC_V7_ILP32_OFF32);
pub const _SC_V7_ILP32_OFFBIG = @enumToInt(enum_unnamed_3._SC_V7_ILP32_OFFBIG);
pub const _SC_V7_LP64_OFF64 = @enumToInt(enum_unnamed_3._SC_V7_LP64_OFF64);
pub const _SC_V7_LPBIG_OFFBIG = @enumToInt(enum_unnamed_3._SC_V7_LPBIG_OFFBIG);
pub const _SC_SS_REPL_MAX = @enumToInt(enum_unnamed_3._SC_SS_REPL_MAX);
pub const _SC_TRACE_EVENT_NAME_MAX = @enumToInt(enum_unnamed_3._SC_TRACE_EVENT_NAME_MAX);
pub const _SC_TRACE_NAME_MAX = @enumToInt(enum_unnamed_3._SC_TRACE_NAME_MAX);
pub const _SC_TRACE_SYS_MAX = @enumToInt(enum_unnamed_3._SC_TRACE_SYS_MAX);
pub const _SC_TRACE_USER_EVENT_MAX = @enumToInt(enum_unnamed_3._SC_TRACE_USER_EVENT_MAX);
pub const _SC_XOPEN_STREAMS = @enumToInt(enum_unnamed_3._SC_XOPEN_STREAMS);
pub const _SC_THREAD_ROBUST_PRIO_INHERIT = @enumToInt(enum_unnamed_3._SC_THREAD_ROBUST_PRIO_INHERIT);
pub const _SC_THREAD_ROBUST_PRIO_PROTECT = @enumToInt(enum_unnamed_3._SC_THREAD_ROBUST_PRIO_PROTECT);
const enum_unnamed_3 = extern enum(c_int) {
    _SC_ARG_MAX = 0,
    _SC_CHILD_MAX = 1,
    _SC_CLK_TCK = 2,
    _SC_NGROUPS_MAX = 3,
    _SC_OPEN_MAX = 4,
    _SC_STREAM_MAX = 5,
    _SC_TZNAME_MAX = 6,
    _SC_JOB_CONTROL = 7,
    _SC_SAVED_IDS = 8,
    _SC_REALTIME_SIGNALS = 9,
    _SC_PRIORITY_SCHEDULING = 10,
    _SC_TIMERS = 11,
    _SC_ASYNCHRONOUS_IO = 12,
    _SC_PRIORITIZED_IO = 13,
    _SC_SYNCHRONIZED_IO = 14,
    _SC_FSYNC = 15,
    _SC_MAPPED_FILES = 16,
    _SC_MEMLOCK = 17,
    _SC_MEMLOCK_RANGE = 18,
    _SC_MEMORY_PROTECTION = 19,
    _SC_MESSAGE_PASSING = 20,
    _SC_SEMAPHORES = 21,
    _SC_SHARED_MEMORY_OBJECTS = 22,
    _SC_AIO_LISTIO_MAX = 23,
    _SC_AIO_MAX = 24,
    _SC_AIO_PRIO_DELTA_MAX = 25,
    _SC_DELAYTIMER_MAX = 26,
    _SC_MQ_OPEN_MAX = 27,
    _SC_MQ_PRIO_MAX = 28,
    _SC_VERSION = 29,
    _SC_PAGESIZE = 30,
    _SC_RTSIG_MAX = 31,
    _SC_SEM_NSEMS_MAX = 32,
    _SC_SEM_VALUE_MAX = 33,
    _SC_SIGQUEUE_MAX = 34,
    _SC_TIMER_MAX = 35,
    _SC_BC_BASE_MAX = 36,
    _SC_BC_DIM_MAX = 37,
    _SC_BC_SCALE_MAX = 38,
    _SC_BC_STRING_MAX = 39,
    _SC_COLL_WEIGHTS_MAX = 40,
    _SC_EQUIV_CLASS_MAX = 41,
    _SC_EXPR_NEST_MAX = 42,
    _SC_LINE_MAX = 43,
    _SC_RE_DUP_MAX = 44,
    _SC_CHARCLASS_NAME_MAX = 45,
    _SC_2_VERSION = 46,
    _SC_2_C_BIND = 47,
    _SC_2_C_DEV = 48,
    _SC_2_FORT_DEV = 49,
    _SC_2_FORT_RUN = 50,
    _SC_2_SW_DEV = 51,
    _SC_2_LOCALEDEF = 52,
    _SC_PII = 53,
    _SC_PII_XTI = 54,
    _SC_PII_SOCKET = 55,
    _SC_PII_INTERNET = 56,
    _SC_PII_OSI = 57,
    _SC_POLL = 58,
    _SC_SELECT = 59,
    _SC_UIO_MAXIOV = 60,
    _SC_IOV_MAX = 60,
    _SC_PII_INTERNET_STREAM = 61,
    _SC_PII_INTERNET_DGRAM = 62,
    _SC_PII_OSI_COTS = 63,
    _SC_PII_OSI_CLTS = 64,
    _SC_PII_OSI_M = 65,
    _SC_T_IOV_MAX = 66,
    _SC_THREADS = 67,
    _SC_THREAD_SAFE_FUNCTIONS = 68,
    _SC_GETGR_R_SIZE_MAX = 69,
    _SC_GETPW_R_SIZE_MAX = 70,
    _SC_LOGIN_NAME_MAX = 71,
    _SC_TTY_NAME_MAX = 72,
    _SC_THREAD_DESTRUCTOR_ITERATIONS = 73,
    _SC_THREAD_KEYS_MAX = 74,
    _SC_THREAD_STACK_MIN = 75,
    _SC_THREAD_THREADS_MAX = 76,
    _SC_THREAD_ATTR_STACKADDR = 77,
    _SC_THREAD_ATTR_STACKSIZE = 78,
    _SC_THREAD_PRIORITY_SCHEDULING = 79,
    _SC_THREAD_PRIO_INHERIT = 80,
    _SC_THREAD_PRIO_PROTECT = 81,
    _SC_THREAD_PROCESS_SHARED = 82,
    _SC_NPROCESSORS_CONF = 83,
    _SC_NPROCESSORS_ONLN = 84,
    _SC_PHYS_PAGES = 85,
    _SC_AVPHYS_PAGES = 86,
    _SC_ATEXIT_MAX = 87,
    _SC_PASS_MAX = 88,
    _SC_XOPEN_VERSION = 89,
    _SC_XOPEN_XCU_VERSION = 90,
    _SC_XOPEN_UNIX = 91,
    _SC_XOPEN_CRYPT = 92,
    _SC_XOPEN_ENH_I18N = 93,
    _SC_XOPEN_SHM = 94,
    _SC_2_CHAR_TERM = 95,
    _SC_2_C_VERSION = 96,
    _SC_2_UPE = 97,
    _SC_XOPEN_XPG2 = 98,
    _SC_XOPEN_XPG3 = 99,
    _SC_XOPEN_XPG4 = 100,
    _SC_CHAR_BIT = 101,
    _SC_CHAR_MAX = 102,
    _SC_CHAR_MIN = 103,
    _SC_INT_MAX = 104,
    _SC_INT_MIN = 105,
    _SC_LONG_BIT = 106,
    _SC_WORD_BIT = 107,
    _SC_MB_LEN_MAX = 108,
    _SC_NZERO = 109,
    _SC_SSIZE_MAX = 110,
    _SC_SCHAR_MAX = 111,
    _SC_SCHAR_MIN = 112,
    _SC_SHRT_MAX = 113,
    _SC_SHRT_MIN = 114,
    _SC_UCHAR_MAX = 115,
    _SC_UINT_MAX = 116,
    _SC_ULONG_MAX = 117,
    _SC_USHRT_MAX = 118,
    _SC_NL_ARGMAX = 119,
    _SC_NL_LANGMAX = 120,
    _SC_NL_MSGMAX = 121,
    _SC_NL_NMAX = 122,
    _SC_NL_SETMAX = 123,
    _SC_NL_TEXTMAX = 124,
    _SC_XBS5_ILP32_OFF32 = 125,
    _SC_XBS5_ILP32_OFFBIG = 126,
    _SC_XBS5_LP64_OFF64 = 127,
    _SC_XBS5_LPBIG_OFFBIG = 128,
    _SC_XOPEN_LEGACY = 129,
    _SC_XOPEN_REALTIME = 130,
    _SC_XOPEN_REALTIME_THREADS = 131,
    _SC_ADVISORY_INFO = 132,
    _SC_BARRIERS = 133,
    _SC_BASE = 134,
    _SC_C_LANG_SUPPORT = 135,
    _SC_C_LANG_SUPPORT_R = 136,
    _SC_CLOCK_SELECTION = 137,
    _SC_CPUTIME = 138,
    _SC_THREAD_CPUTIME = 139,
    _SC_DEVICE_IO = 140,
    _SC_DEVICE_SPECIFIC = 141,
    _SC_DEVICE_SPECIFIC_R = 142,
    _SC_FD_MGMT = 143,
    _SC_FIFO = 144,
    _SC_PIPE = 145,
    _SC_FILE_ATTRIBUTES = 146,
    _SC_FILE_LOCKING = 147,
    _SC_FILE_SYSTEM = 148,
    _SC_MONOTONIC_CLOCK = 149,
    _SC_MULTI_PROCESS = 150,
    _SC_SINGLE_PROCESS = 151,
    _SC_NETWORKING = 152,
    _SC_READER_WRITER_LOCKS = 153,
    _SC_SPIN_LOCKS = 154,
    _SC_REGEXP = 155,
    _SC_REGEX_VERSION = 156,
    _SC_SHELL = 157,
    _SC_SIGNALS = 158,
    _SC_SPAWN = 159,
    _SC_SPORADIC_SERVER = 160,
    _SC_THREAD_SPORADIC_SERVER = 161,
    _SC_SYSTEM_DATABASE = 162,
    _SC_SYSTEM_DATABASE_R = 163,
    _SC_TIMEOUTS = 164,
    _SC_TYPED_MEMORY_OBJECTS = 165,
    _SC_USER_GROUPS = 166,
    _SC_USER_GROUPS_R = 167,
    _SC_2_PBS = 168,
    _SC_2_PBS_ACCOUNTING = 169,
    _SC_2_PBS_LOCATE = 170,
    _SC_2_PBS_MESSAGE = 171,
    _SC_2_PBS_TRACK = 172,
    _SC_SYMLOOP_MAX = 173,
    _SC_STREAMS = 174,
    _SC_2_PBS_CHECKPOINT = 175,
    _SC_V6_ILP32_OFF32 = 176,
    _SC_V6_ILP32_OFFBIG = 177,
    _SC_V6_LP64_OFF64 = 178,
    _SC_V6_LPBIG_OFFBIG = 179,
    _SC_HOST_NAME_MAX = 180,
    _SC_TRACE = 181,
    _SC_TRACE_EVENT_FILTER = 182,
    _SC_TRACE_INHERIT = 183,
    _SC_TRACE_LOG = 184,
    _SC_LEVEL1_ICACHE_SIZE = 185,
    _SC_LEVEL1_ICACHE_ASSOC = 186,
    _SC_LEVEL1_ICACHE_LINESIZE = 187,
    _SC_LEVEL1_DCACHE_SIZE = 188,
    _SC_LEVEL1_DCACHE_ASSOC = 189,
    _SC_LEVEL1_DCACHE_LINESIZE = 190,
    _SC_LEVEL2_CACHE_SIZE = 191,
    _SC_LEVEL2_CACHE_ASSOC = 192,
    _SC_LEVEL2_CACHE_LINESIZE = 193,
    _SC_LEVEL3_CACHE_SIZE = 194,
    _SC_LEVEL3_CACHE_ASSOC = 195,
    _SC_LEVEL3_CACHE_LINESIZE = 196,
    _SC_LEVEL4_CACHE_SIZE = 197,
    _SC_LEVEL4_CACHE_ASSOC = 198,
    _SC_LEVEL4_CACHE_LINESIZE = 199,
    _SC_IPV6 = 235,
    _SC_RAW_SOCKETS = 236,
    _SC_V7_ILP32_OFF32 = 237,
    _SC_V7_ILP32_OFFBIG = 238,
    _SC_V7_LP64_OFF64 = 239,
    _SC_V7_LPBIG_OFFBIG = 240,
    _SC_SS_REPL_MAX = 241,
    _SC_TRACE_EVENT_NAME_MAX = 242,
    _SC_TRACE_NAME_MAX = 243,
    _SC_TRACE_SYS_MAX = 244,
    _SC_TRACE_USER_EVENT_MAX = 245,
    _SC_XOPEN_STREAMS = 246,
    _SC_THREAD_ROBUST_PRIO_INHERIT = 247,
    _SC_THREAD_ROBUST_PRIO_PROTECT = 248,
    _,
};
pub const _CS_PATH = @enumToInt(enum_unnamed_4._CS_PATH);
pub const _CS_V6_WIDTH_RESTRICTED_ENVS = @enumToInt(enum_unnamed_4._CS_V6_WIDTH_RESTRICTED_ENVS);
pub const _CS_GNU_LIBC_VERSION = @enumToInt(enum_unnamed_4._CS_GNU_LIBC_VERSION);
pub const _CS_GNU_LIBPTHREAD_VERSION = @enumToInt(enum_unnamed_4._CS_GNU_LIBPTHREAD_VERSION);
pub const _CS_V5_WIDTH_RESTRICTED_ENVS = @enumToInt(enum_unnamed_4._CS_V5_WIDTH_RESTRICTED_ENVS);
pub const _CS_V7_WIDTH_RESTRICTED_ENVS = @enumToInt(enum_unnamed_4._CS_V7_WIDTH_RESTRICTED_ENVS);
pub const _CS_LFS_CFLAGS = @enumToInt(enum_unnamed_4._CS_LFS_CFLAGS);
pub const _CS_LFS_LDFLAGS = @enumToInt(enum_unnamed_4._CS_LFS_LDFLAGS);
pub const _CS_LFS_LIBS = @enumToInt(enum_unnamed_4._CS_LFS_LIBS);
pub const _CS_LFS_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_LFS_LINTFLAGS);
pub const _CS_LFS64_CFLAGS = @enumToInt(enum_unnamed_4._CS_LFS64_CFLAGS);
pub const _CS_LFS64_LDFLAGS = @enumToInt(enum_unnamed_4._CS_LFS64_LDFLAGS);
pub const _CS_LFS64_LIBS = @enumToInt(enum_unnamed_4._CS_LFS64_LIBS);
pub const _CS_LFS64_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_LFS64_LINTFLAGS);
pub const _CS_XBS5_ILP32_OFF32_CFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFF32_CFLAGS);
pub const _CS_XBS5_ILP32_OFF32_LDFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFF32_LDFLAGS);
pub const _CS_XBS5_ILP32_OFF32_LIBS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFF32_LIBS);
pub const _CS_XBS5_ILP32_OFF32_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFF32_LINTFLAGS);
pub const _CS_XBS5_ILP32_OFFBIG_CFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFFBIG_CFLAGS);
pub const _CS_XBS5_ILP32_OFFBIG_LDFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFFBIG_LDFLAGS);
pub const _CS_XBS5_ILP32_OFFBIG_LIBS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFFBIG_LIBS);
pub const _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_ILP32_OFFBIG_LINTFLAGS);
pub const _CS_XBS5_LP64_OFF64_CFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_LP64_OFF64_CFLAGS);
pub const _CS_XBS5_LP64_OFF64_LDFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_LP64_OFF64_LDFLAGS);
pub const _CS_XBS5_LP64_OFF64_LIBS = @enumToInt(enum_unnamed_4._CS_XBS5_LP64_OFF64_LIBS);
pub const _CS_XBS5_LP64_OFF64_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_LP64_OFF64_LINTFLAGS);
pub const _CS_XBS5_LPBIG_OFFBIG_CFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_LPBIG_OFFBIG_CFLAGS);
pub const _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_LPBIG_OFFBIG_LDFLAGS);
pub const _CS_XBS5_LPBIG_OFFBIG_LIBS = @enumToInt(enum_unnamed_4._CS_XBS5_LPBIG_OFFBIG_LIBS);
pub const _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_XBS5_LPBIG_OFFBIG_LINTFLAGS);
pub const _CS_POSIX_V6_ILP32_OFF32_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFF32_CFLAGS);
pub const _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFF32_LDFLAGS);
pub const _CS_POSIX_V6_ILP32_OFF32_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFF32_LIBS);
pub const _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFF32_LINTFLAGS);
pub const _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFFBIG_CFLAGS);
pub const _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS);
pub const _CS_POSIX_V6_ILP32_OFFBIG_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFFBIG_LIBS);
pub const _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS);
pub const _CS_POSIX_V6_LP64_OFF64_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LP64_OFF64_CFLAGS);
pub const _CS_POSIX_V6_LP64_OFF64_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LP64_OFF64_LDFLAGS);
pub const _CS_POSIX_V6_LP64_OFF64_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LP64_OFF64_LIBS);
pub const _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LP64_OFF64_LINTFLAGS);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LPBIG_OFFBIG_LIBS);
pub const _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS);
pub const _CS_POSIX_V7_ILP32_OFF32_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFF32_CFLAGS);
pub const _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFF32_LDFLAGS);
pub const _CS_POSIX_V7_ILP32_OFF32_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFF32_LIBS);
pub const _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFF32_LINTFLAGS);
pub const _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFFBIG_CFLAGS);
pub const _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS);
pub const _CS_POSIX_V7_ILP32_OFFBIG_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFFBIG_LIBS);
pub const _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS);
pub const _CS_POSIX_V7_LP64_OFF64_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LP64_OFF64_CFLAGS);
pub const _CS_POSIX_V7_LP64_OFF64_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LP64_OFF64_LDFLAGS);
pub const _CS_POSIX_V7_LP64_OFF64_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LP64_OFF64_LIBS);
pub const _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LP64_OFF64_LINTFLAGS);
pub const _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS);
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS);
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LPBIG_OFFBIG_LIBS);
pub const _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = @enumToInt(enum_unnamed_4._CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS);
pub const _CS_V6_ENV = @enumToInt(enum_unnamed_4._CS_V6_ENV);
pub const _CS_V7_ENV = @enumToInt(enum_unnamed_4._CS_V7_ENV);
const enum_unnamed_4 = extern enum(c_int) {
    _CS_PATH = 0,
    _CS_V6_WIDTH_RESTRICTED_ENVS = 1,
    _CS_GNU_LIBC_VERSION = 2,
    _CS_GNU_LIBPTHREAD_VERSION = 3,
    _CS_V5_WIDTH_RESTRICTED_ENVS = 4,
    _CS_V7_WIDTH_RESTRICTED_ENVS = 5,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS = 1001,
    _CS_LFS_LIBS = 1002,
    _CS_LFS_LINTFLAGS = 1003,
    _CS_LFS64_CFLAGS = 1004,
    _CS_LFS64_LDFLAGS = 1005,
    _CS_LFS64_LIBS = 1006,
    _CS_LFS64_LINTFLAGS = 1007,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS = 1101,
    _CS_XBS5_ILP32_OFF32_LIBS = 1102,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS = 1103,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS = 1104,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS = 1105,
    _CS_XBS5_ILP32_OFFBIG_LIBS = 1106,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS = 1107,
    _CS_XBS5_LP64_OFF64_CFLAGS = 1108,
    _CS_XBS5_LP64_OFF64_LDFLAGS = 1109,
    _CS_XBS5_LP64_OFF64_LIBS = 1110,
    _CS_XBS5_LP64_OFF64_LINTFLAGS = 1111,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS = 1112,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS = 1113,
    _CS_XBS5_LPBIG_OFFBIG_LIBS = 1114,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = 1115,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS = 1116,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS = 1117,
    _CS_POSIX_V6_ILP32_OFF32_LIBS = 1118,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = 1119,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = 1120,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = 1121,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS = 1122,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = 1123,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS = 1124,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS = 1125,
    _CS_POSIX_V6_LP64_OFF64_LIBS = 1126,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS = 1127,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = 1128,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = 1129,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS = 1130,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = 1131,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS = 1132,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS = 1133,
    _CS_POSIX_V7_ILP32_OFF32_LIBS = 1134,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = 1135,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = 1136,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = 1137,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS = 1138,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = 1139,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS = 1140,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS = 1141,
    _CS_POSIX_V7_LP64_OFF64_LIBS = 1142,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS = 1143,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = 1144,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = 1145,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS = 1146,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = 1147,
    _CS_V6_ENV = 1148,
    _CS_V7_ENV = 1149,
    _,
};
pub extern fn pathconf(__path: [*c]const u8, __name: c_int) c_long;
pub extern fn fpathconf(__fd: c_int, __name: c_int) c_long;
pub extern fn sysconf(__name: c_int) c_long;
pub extern fn confstr(__name: c_int, __buf: [*c]u8, __len: usize) usize;
pub extern fn getpid() __pid_t;
pub extern fn getppid() __pid_t;
pub extern fn getpgrp() __pid_t;
pub extern fn __getpgid(__pid: __pid_t) __pid_t;
pub extern fn getpgid(__pid: __pid_t) __pid_t;
pub extern fn setpgid(__pid: __pid_t, __pgid: __pid_t) c_int;
pub extern fn setpgrp() c_int;
pub extern fn setsid() __pid_t;
pub extern fn getsid(__pid: __pid_t) __pid_t;
pub extern fn getuid() __uid_t;
pub extern fn geteuid() __uid_t;
pub extern fn getgid() __gid_t;
pub extern fn getegid() __gid_t;
pub extern fn getgroups(__size: c_int, __list: [*c]__gid_t) c_int;
pub extern fn setuid(__uid: __uid_t) c_int;
pub extern fn setreuid(__ruid: __uid_t, __euid: __uid_t) c_int;
pub extern fn seteuid(__uid: __uid_t) c_int;
pub extern fn setgid(__gid: __gid_t) c_int;
pub extern fn setregid(__rgid: __gid_t, __egid: __gid_t) c_int;
pub extern fn setegid(__gid: __gid_t) c_int;
pub extern fn fork() __pid_t;
pub extern fn vfork() c_int;
pub extern fn ttyname(__fd: c_int) [*c]u8;
pub extern fn ttyname_r(__fd: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn isatty(__fd: c_int) c_int;
pub extern fn ttyslot() c_int;
pub extern fn link(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn linkat(__fromfd: c_int, __from: [*c]const u8, __tofd: c_int, __to: [*c]const u8, __flags: c_int) c_int;
pub extern fn symlink(__from: [*c]const u8, __to: [*c]const u8) c_int;
pub extern fn readlink(noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn symlinkat(__from: [*c]const u8, __tofd: c_int, __to: [*c]const u8) c_int;
pub extern fn readlinkat(__fd: c_int, noalias __path: [*c]const u8, noalias __buf: [*c]u8, __len: usize) isize;
pub extern fn unlink(__name: [*c]const u8) c_int;
pub extern fn unlinkat(__fd: c_int, __name: [*c]const u8, __flag: c_int) c_int;
pub extern fn rmdir(__path: [*c]const u8) c_int;
pub extern fn tcgetpgrp(__fd: c_int) __pid_t;
pub extern fn tcsetpgrp(__fd: c_int, __pgrp_id: __pid_t) c_int;
pub extern fn getlogin() [*c]u8;
pub extern fn getlogin_r(__name: [*c]u8, __name_len: usize) c_int;
pub extern fn setlogin(__name: [*c]const u8) c_int;
pub extern var optarg: [*c]u8;
pub extern var optind: c_int;
pub extern var opterr: c_int;
pub extern var optopt: c_int;
pub extern fn getopt(___argc: c_int, ___argv: [*c]const [*c]u8, __shortopts: [*c]const u8) c_int;
pub extern fn gethostname(__name: [*c]u8, __len: usize) c_int;
pub extern fn sethostname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn sethostid(__id: c_long) c_int;
pub extern fn getdomainname(__name: [*c]u8, __len: usize) c_int;
pub extern fn setdomainname(__name: [*c]const u8, __len: usize) c_int;
pub extern fn vhangup() c_int;
pub extern fn revoke(__file: [*c]const u8) c_int;
pub extern fn profil(__sample_buffer: [*c]c_ushort, __size: usize, __offset: usize, __scale: c_uint) c_int;
pub extern fn acct(__name: [*c]const u8) c_int;
pub extern fn getusershell() [*c]u8;
pub extern fn endusershell() void;
pub extern fn setusershell() void;
pub extern fn daemon(__nochdir: c_int, __noclose: c_int) c_int;
pub extern fn chroot(__path: [*c]const u8) c_int;
pub extern fn getpass(__prompt: [*c]const u8) [*c]u8;
pub extern fn fsync(__fd: c_int) c_int;
pub extern fn gethostid() c_long;
pub extern fn sync() void;
pub extern fn getpagesize() c_int;
pub extern fn getdtablesize() c_int;
pub extern fn truncate(__file: [*c]const u8, __length: __off_t) c_int;
pub extern fn ftruncate(__fd: c_int, __length: __off_t) c_int;
pub extern fn brk(__addr: ?*c_void) c_int;
pub extern fn sbrk(__delta: isize) ?*c_void;
pub extern fn syscall(__sysno: c_long, ...) c_long;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: __off_t) c_int;
pub extern fn fdatasync(__fildes: c_int) c_int;
pub extern fn crypt(__key: [*c]const u8, __salt: [*c]const u8) [*c]u8;
pub extern fn getentropy(__buffer: ?*c_void, __length: usize) c_int;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __WINT_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __CHAR16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __CHAR32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __INT8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_signed = void }");
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_char = void }");
pub const __UINT16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __UINT32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __INT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_signed = void }");
pub const __UINT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_char = void }");
pub const __UINT_LEAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __UINT_LEAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __INT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_signed = void }");
pub const __UINT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_char = void }");
pub const __UINT_FAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __UINT_FAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_unsigned = void }");
pub const __GLIBC_USE = @compileError("unable to translate C expr: unexpected token Id{ .HashHash = void }");
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token Id{ .HashHash = void }");
pub const __STRING = @compileError("unable to translate C expr: unexpected token Id{ .Hash = void }");
pub const __ptr_t = @compileError("unable to translate C expr: unexpected token Id{ .Nl = void }");
pub const __warndecl = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_extern = void }");
pub const __warnattr = @compileError("unable to translate C expr: unexpected token Id{ .Nl = void }");
pub const __errordecl = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_extern = void }");
pub const __flexarr = @compileError("unable to translate C expr: unexpected token Id{ .LBracket = void }");
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token Id{ .Hash = void }");
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token Id{ .Hash = void }");
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token Id{ .Hash = void }");
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token Id{ .Nl = void }");
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_extern = void }");
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_extern = void }");
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token Id{ .Nl = void }");
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token Id{ .Nl = void }");
pub const __glibc_macro_warning1 = @compileError("unable to translate C expr: unexpected token Id{ .Hash = void }");
pub const __S16_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __U16_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_short = void }");
pub const __U32_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __SLONGWORD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __ULONGWORD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_long = void }");
pub const __SQUAD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UQUAD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_long = void }");
pub const __SWORD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __UWORD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_long = void }");
pub const __ULONG32_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __S64_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_int = void }");
pub const __U64_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_long = void }");
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_typedef = void }");
pub const __TIMER_T_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Nl = void }");
pub const __FSID_T_TYPE = @compileError("unable to translate C expr: unexpected token Id{ .Keyword_struct = void }");
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __UINT64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __FINITE_MATH_ONLY__ = 0;
pub const __SYSCALL_WORDSIZE = 64;
pub const _SC_PAGE_SIZE = _SC_PAGESIZE;
pub const __SEG_GS = 1;
pub const __SIZEOF_FLOAT__ = 4;
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_MAX__ = 127;
pub const __tune_corei7__ = 1;
pub const _POSIX_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __USE_POSIX2 = 1;
pub const __INT_LEAST8_FMTi__ = "hhi";
pub inline fn __glibc_macro_warning(message: var) @TypeOf(__glibc_macro_warning1(GCC ++ (warning ++ message))) {
    return __glibc_macro_warning1(GCC ++ (warning ++ message));
}
pub const __UINT64_FMTX__ = "lX";
pub const _XBS5_LP64_OFF64 = 1;
pub const __SSE4_2__ = 1;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __SSE__ = 1;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __NO_MATH_INLINES = 1;
pub const __SIZEOF_FLOAT128__ = 16;
pub inline fn __GNUC_PREREQ(maj: var, min: var) @TypeOf((__GNUC__ << 16) + @boolToInt(__GNUC_MINOR__ >= ((maj << 16) + min))) {
    return (__GNUC__ << 16) + @boolToInt(__GNUC_MINOR__ >= ((maj << 16) + min));
}
pub const __INT_FAST32_FMTd__ = "d";
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __STDC_UTF_16__ = 1;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __ATOMIC_ACQUIRE = 2;
pub const _FEATURES_H = 1;
pub const __LDBL_HAS_DENORM__ = 1;
pub const _POSIX2_LOCALEDEF = __POSIX2_THIS_VERSION;
pub const __INTMAX_FMTi__ = "li";
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FMA__ = 1;
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const _POSIX_THREAD_ROBUST_PRIO_INHERIT = @as(c_long, 200809);
pub const _POSIX2_SW_DEV = __POSIX2_THIS_VERSION;
pub const __INT_MAX__ = 2147483647;
pub const __INT_LEAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const _POSIX_SHARED_MEMORY_OBJECTS = @as(c_long, 200809);
pub const __USE_FORTIFY_LEVEL = 0;
pub const __RLIM_T_MATCHES_RLIM64_T = 1;
pub const __SIZEOF_INT128__ = 16;
pub const __INT64_MAX__ = @as(c_long, 9223372036854775807);
pub const __DBL_MIN_10_EXP__ = -307;
pub const _POSIX_TRACE_LOG = -1;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __attribute_pure__ = __attribute__(__pure__);
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const _POSIX_SPORADIC_SERVER = -1;
pub const _POSIX2_C_VERSION = __POSIX2_THIS_VERSION;
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __UINT8_FMTu__ = "hhu";
pub const __INT_FAST16_MAX__ = 32767;
pub inline fn __bos0(ptr: var) @TypeOf(__builtin_object_size(ptr, 0)) {
    return __builtin_object_size(ptr, 0);
}
pub const __INVPCID__ = 1;
pub const __LP64__ = 1;
pub const __SIZE_FMTx__ = "lx";
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __UINT8_FMTX__ = "hhX";
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __PTRDIFF_FMTi__ = "li";
pub const __DBL_MAX_10_EXP__ = 308;
pub const __STDC_IEC_559__ = 1;
pub const _POSIX_THREAD_PRIO_PROTECT = @as(c_long, 200809);
pub inline fn __REDIRECT_NTH_LDBL(name: var, proto: var, alias: var) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __CLFLUSHOPT__ = 1;
pub const __SIZEOF_LONG__ = 8;
pub const __FLT_MIN_EXP__ = -125;
pub const _POSIX_SPAWN = @as(c_long, 200809);
pub const _POSIX2_C_DEV = __POSIX2_THIS_VERSION;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __FLT_EVAL_METHOD__ = 0;
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __code_model_small_ = 1;
pub const __ELF__ = 1;
pub const _POSIX_CLOCK_SELECTION = @as(c_long, 200809);
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const _LP64 = 1;
pub const __FLT_MAX_EXP__ = 128;
pub const __DBL_HAS_DENORM__ = 1;
pub const __WINT_UNSIGNED__ = 1;
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __GNU_LIBRARY__ = 6;
pub const __SSSE3__ = 1;
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub inline fn __glibc_likely(cond: var) @TypeOf(__builtin_expect(cond, 1)) {
    return __builtin_expect(cond, 1);
}
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __ILP32_OFFBIG_LDFLAGS = "-m32";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const SEEK_END = 2;
pub const __UINT_FAST32_FMTX__ = "X";
pub const R_OK = 4;
pub const L_INCR = SEEK_CUR;
pub const _POSIX_SYNCHRONIZED_IO = @as(c_long, 200809);
pub const __LZCNT__ = 1;
pub inline fn __glibc_clang_has_extension(ext: var) @TypeOf(__has_extension(ext)) {
    return __has_extension(ext);
}
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSP_STRONG__ = 2;
pub const _BITS_TYPES_H = 1;
pub const __ILP32_OFF32_LDFLAGS = "-m32";
pub const __clang_patchlevel__ = 0;
pub const __UINT64_FMTu__ = "lu";
pub const _POSIX_TRACE_INHERIT = -1;
pub const _POSIX_TRACE = -1;
pub const __SIZEOF_SHORT__ = 2;
pub const __LDBL_DIG__ = 18;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __MMX__ = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub inline fn __GLIBC_PREREQ(maj: var, min: var) @TypeOf((__GLIBC__ << 16) + @boolToInt(__GLIBC_MINOR__ >= ((maj << 16) + min))) {
    return (__GLIBC__ << 16) + @boolToInt(__GLIBC_MINOR__ >= ((maj << 16) + min));
}
pub const F_TEST = 3;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __LITTLE_ENDIAN__ = 1;
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __INO_T_MATCHES_INO64_T = 1;
pub inline fn __attribute_deprecated_msg__(msg: var) @TypeOf(__attribute__(__deprecated__(msg))) {
    return __attribute__(__deprecated__(msg));
}
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __VERSION__ = "Clang 10.0.0 ";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __SCHAR_MAX__ = 127;
pub const _POSIX_ADVISORY_INFO = @as(c_long, 200809);
pub const __GNUC_MINOR__ = 2;
pub const __UINT32_FMTx__ = "x";
pub const _POSIX_THREADS = @as(c_long, 200809);
pub const _POSIX_SHELL = 1;
pub const __corei7 = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const _DEFAULT_SOURCE = 1;
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __LDBL_REDIR_NTH(name: var, proto: var) @TypeOf(name ++ (proto ++ __THROW)) {
    return name ++ (proto ++ __THROW);
}
pub const _XOPEN_XPG4 = 1;
pub const __UINT_LEAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const _POSIX_VDISABLE = '\x00';
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __pic__ = 2;
pub const __clang__ = 1;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __GLIBC__ = 2;
pub const __USE_XOPEN2K8 = 1;
pub const __UINTPTR_FMTu__ = "lu";
pub const __unix__ = 1;
pub const __UID_T_TYPE = __U32_TYPE;
pub const _POSIX_MONOTONIC_CLOCK = 0;
pub const __INT_FAST32_TYPE__ = c_int;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __UINT16_FMTx__ = "hx";
pub const __restrict_arr = __restrict;
pub const __ADX__ = 1;
pub const _POSIX_SEMAPHORES = @as(c_long, 200809);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const _POSIX_TYPED_MEMORY_OBJECTS = -1;
pub const _POSIX_NO_TRUNC = 1;
pub const __glibc_c99_flexarr_available = 1;
pub const SEEK_SET = 0;
pub const __FLT_MIN_10_EXP__ = -37;
pub const _POSIX_CHOWN_RESTRICTED = 0;
pub const _POSIX2_C_BIND = __POSIX2_THIS_VERSION;
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const _POSIX_READER_WRITER_LOCKS = @as(c_long, 200809);
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZE_FMTX__ = "lX";
pub const __USE_XOPEN2K = 1;
pub const _POSIX_MEMLOCK = @as(c_long, 200809);
pub const __INT16_FMTd__ = "hd";
pub const __clang_version__ = "10.0.0 ";
pub const __ATOMIC_RELEASE = 3;
pub const _POSIX_TRACE_EVENT_FILTER = -1;
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __INTMAX_FMTd__ = "ld";
pub const __SEG_FS = 1;
pub const __USE_POSIX199309 = 1;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const _POSIX_IPV6 = @as(c_long, 200809);
pub const STDERR_FILENO = 2;
pub const _POSIX_SPIN_LOCKS = @as(c_long, 200809);
pub const __WINT_WIDTH__ = 32;
pub const SEEK_CUR = 1;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __gnu_linux__ = 1;
pub const _DEBUG = 1;
pub const _POSIX_V7_LPBIG_OFFBIG = -1;
pub inline fn __PMT(args: var) @TypeOf(args) {
    return args;
}
pub const __UINTPTR_WIDTH__ = 64;
pub const __INT_LEAST32_FMTi__ = "i";
pub const _POSIX_RAW_SOCKETS = @as(c_long, 200809);
pub const _POSIX_MEMORY_PROTECTION = @as(c_long, 200809);
pub const __WCHAR_WIDTH__ = 32;
pub const __UINT16_FMTX__ = "hX";
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const _XOPEN_UNIX = 1;
pub const unix = 1;
pub const _GETOPT_POSIX_H = 1;
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT64_FMTd__ = "ld";
pub const __SSE3__ = 1;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const _LFS64_ASYNCHRONOUS_IO = 1;
pub const __GLIBC_USE_ISOC2X = 0;
pub const __UINT16_MAX__ = 65535;
pub const __ATOMIC_RELAXED = 0;
pub const _POSIX_SOURCE = 1;
pub const __ILP32_OFF32_CFLAGS = "-m32";
pub const _XOPEN_LEGACY = 1;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const _POSIX_ASYNC_IO = 1;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __SSE2__ = 1;
pub const _ATFILE_SOURCE = 1;
pub const __STDC__ = 1;
pub const __attribute_warn_unused_result__ = __attribute__(__warn_unused_result__);
pub const F_LOCK = 1;
pub const _XOPEN_VERSION = 700;
pub const _POSIX_PRIORITIZED_IO = @as(c_long, 200809);
pub const __INT_FAST16_TYPE__ = c_short;
pub const _XOPEN_REALTIME_THREADS = 1;
pub const __UINT64_C_SUFFIX__ = UL;
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __CHAR_BIT__ = 8;
pub const __DBL_DECIMAL_DIG__ = 17;
pub inline fn __LDBL_REDIR(name: var, proto: var) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const linux = 1;
pub const _BITS_POSIX_OPT_H = 1;
pub const __FSGSBASE__ = 1;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INTMAX_WIDTH__ = 64;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __LONG_DOUBLE_USES_FLOAT128 = 0;
pub const __LP64_OFF64_LDFLAGS = "-m64";
pub const _POSIX2_CHAR_TERM = @as(c_long, 200809);
pub const __FLOAT128__ = 1;
pub const __attribute_deprecated__ = __attribute__(__deprecated__);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __GLIBC_MINOR__ = 31;
pub const __PID_T_TYPE = __S32_TYPE;
pub const _POSIX_FSYNC = @as(c_long, 200809);
pub const _GETOPT_CORE_H = 1;
pub const __x86_64 = 1;
pub const _POSIX_REALTIME_SIGNALS = @as(c_long, 200809);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub const __INT8_FMTd__ = "hhd";
pub const __UINTMAX_WIDTH__ = 64;
pub const F_ULOCK = 0;
pub const __UINT8_MAX__ = 255;
pub const _POSIX_ASYNCHRONOUS_IO = @as(c_long, 200809);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __clang_minor__ = 0;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __STATFS_MATCHES_STATFS64 = 1;
pub const __always_inline = __inline ++ __attribute__(__always_inline__);
pub const _POSIX_REENTRANT_FUNCTIONS = 1;
pub const __SSE4_1__ = 1;
pub const _XOPEN_REALTIME = 1;
pub const __USE_MISC = 1;
pub const __WCHAR_TYPE__ = c_int;
pub const __INT_FAST64_FMTd__ = "ld";
pub const _POSIX_THREAD_ATTR_STACKSIZE = @as(c_long, 200809);
pub const __RDRND__ = 1;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __seg_fs = __attribute__(address_space(257));
pub const __XSAVEOPT__ = 1;
pub const _POSIX_MESSAGE_PASSING = @as(c_long, 200809);
pub const _LFS_ASYNCHRONOUS_IO = 1;
pub const __attribute_malloc__ = __attribute__(__malloc__);
pub const __HAVE_GENERIC_SELECTION = 1;
pub const __INT16_FMTi__ = "hi";
pub const __UINTMAX_FMTX__ = "lX";
pub const X_OK = 1;
pub const _POSIX_REGEXP = 1;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __PRFCHW__ = 1;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __AVX2__ = 1;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINTMAX_FMTu__ = "lu";
pub const _STDC_PREDEF_H = 1;
pub const __UINT32_FMTu__ = "u";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __OPTIMIZE__ = 1;
pub const __amd64__ = 1;
pub const __USE_EXTERN_INLINES = 1;
pub const __INT64_C_SUFFIX__ = L;
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const _POSIX_SAVED_IDS = 1;
pub const _BITS_TYPESIZES_H = 1;
pub const __SSE2_MATH__ = 1;
pub const L_XTND = SEEK_END;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __SGX__ = 1;
pub const _XOPEN_ENH_I18N = 1;
pub inline fn __P(args: var) @TypeOf(args) {
    return args;
}
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __POPCNT__ = 1;
pub inline fn __LDBL_REDIR1(name: var, proto: var, alias: var) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub const __POINTER_WIDTH__ = 64;
pub const __UINT64_FMTx__ = "lx";
pub const __ATOMIC_ACQ_REL = 4;
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __OFF_T_MATCHES_OFF64_T = 1;
pub const _LFS_LARGEFILE = 1;
pub const __STDC_HOSTED__ = 1;
pub const _POSIX_V6_LPBIG_OFFBIG = -1;
pub const _LFS64_LARGEFILE = 1;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __GNUC__ = 4;
pub const __INT_FAST32_FMTi__ = "i";
pub const __PIC__ = 2;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub inline fn __LDBL_REDIR1_NTH(name: var, proto: var, alias: var) @TypeOf(name ++ (proto ++ __THROW)) {
    return name ++ (proto ++ __THROW);
}
pub const __seg_gs = __attribute__(address_space(256));
pub const __FXSR__ = 1;
pub const _LFS64_STDIO = 1;
pub const __UINT64_FMTo__ = "lo";
pub const _CS_POSIX_V5_WIDTH_RESTRICTED_ENVS = _CS_V5_WIDTH_RESTRICTED_ENVS;
pub const __UINT_FAST16_FMTx__ = "hx";
pub const _XOPEN_XCU_VERSION = 4;
pub const _XOPEN_XPG2 = 1;
pub const _XBS5_LPBIG_OFFBIG = -1;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __GLIBC_USE_DEPRECATED_SCANF = 0;
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __attribute_used__ = __attribute__(__used__);
pub const __STDC_UTF_32__ = 1;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __PTRDIFF_WIDTH__ = 64;
pub const __SIZE_WIDTH__ = 64;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const _XOPEN_SHM = 1;
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const _SYS_CDEFS_H = 1;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub inline fn __glibc_clang_prereq(maj: var, min: var) @TypeOf((__clang_major__ << 16) + @boolToInt(__clang_minor__ >= ((maj << 16) + min))) {
    return (__clang_major__ << 16) + @boolToInt(__clang_minor__ >= ((maj << 16) + min));
}
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT16_FMTu__ = "hu";
pub const _XOPEN_XPG3 = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __INT_LEAST64_FMTi__ = "li";
pub const __GNUC_STDC_INLINE__ = 1;
pub const __UINT32_FMTX__ = "X";
pub const __DBL_DIG__ = 15;
pub const __SHRT_MAX__ = 32767;
pub const _POSIX_THREAD_SPORADIC_SERVER = -1;
pub const __ATOMIC_CONSUME = 1;
pub const _UNISTD_H = 1;
pub const __GLIBC_USE_DEPRECATED_GETS = 0;
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INT32_FMTd__ = "d";
pub const __INT8_MAX__ = 127;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __INT_LEAST32_FMTd__ = "d";
pub const _POSIX_V6_LP64_OFF64 = 1;
pub const __UINT8_FMTo__ = "hho";
pub const __USE_POSIX199506 = 1;
pub inline fn __bos(ptr: var) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > 1)) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > 1);
}
pub const __FLT_HAS_DENORM__ = 1;
pub const _POSIX_THREAD_ROBUST_PRIO_PROTECT = -1;
pub const __FLT_DIG__ = 6;
pub const __ILP32_OFFBIG_CFLAGS = "-m32 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64";
pub const __INTPTR_FMTi__ = "li";
pub const __UINT32_FMTo__ = "o";
pub const __UINT_FAST64_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __GID_T_TYPE = __U32_TYPE;
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __GXX_ABI_VERSION = 1002;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __INT32_TYPE__ = c_int;
pub inline fn __ASMNAME(cname: var) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __UINTPTR_FMTX__ = "lX";
pub const __INT8_FMTi__ = "hhi";
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __DBL_MIN_EXP__ = -1021;
pub const __INT_FAST64_FMTi__ = "li";
pub const __INT64_FMTi__ = "li";
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __attribute_const__ = __attribute__(__const__);
pub inline fn __attribute_format_arg__(x: var) @TypeOf(__attribute__(__format_arg__(x))) {
    return __attribute__(__format_arg__(x));
}
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __USE_ISOC95 = 1;
pub const __clang_major__ = 10;
pub const __INT16_MAX__ = 32767;
pub const __linux = 1;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __UINT16_FMTo__ = "ho";
pub const F_TLOCK = 2;
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __UINT_FAST64_FMTx__ = "lx";
pub inline fn __NTHNL(fct: var) @TypeOf(__attribute__(__nothrow__) ++ fct) {
    return __attribute__(__nothrow__) ++ fct;
}
pub const __XSAVES__ = 1;
pub const __UINT_LEAST8_MAX__ = 255;
pub const _POSIX_TIMERS = @as(c_long, 200809);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const _POSIX_TIMEOUTS = @as(c_long, 200809);
pub const _POSIX_VERSION = @as(c_long, 200809);
pub const __UINT_LEAST32_FMTX__ = "X";
pub inline fn __nonnull(params: var) @TypeOf(__attribute__(__nonnull__ ++ params)) {
    return __attribute__(__nonnull__ ++ params);
}
pub const __WORDSIZE = 64;
pub const __USE_POSIX = 1;
pub const W_OK = 2;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __unix = 1;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __SSE_MATH__ = 1;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __llvm__ = 1;
pub const __SLONG32_TYPE = c_int;
pub const __DBL_MAX_EXP__ = 1024;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const _POSIX_THREAD_SAFE_FUNCTIONS = @as(c_long, 200809);
pub inline fn __glibc_unlikely(cond: var) @TypeOf(__builtin_expect(cond, 0)) {
    return __builtin_expect(cond, 0);
}
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub inline fn __glibc_has_attribute(attr: var) @TypeOf(__has_attribute(attr)) {
    return __has_attribute(attr);
}
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __linux__ = 1;
pub const __INT16_TYPE__ = c_short;
pub const __PCLMUL__ = 1;
pub const _POSIX_MAPPED_FILES = @as(c_long, 200809);
pub const __attribute_noinline__ = __attribute__(__noinline__);
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __UINTPTR_FMTx__ = "lx";
pub const __USE_ISOC99 = 1;
pub const __LDBL_MAX_EXP__ = 16384;
pub const L_SET = SEEK_SET;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __POSIX2_THIS_VERSION = @as(c_long, 200809);
pub const _POSIX_THREAD_CPUTIME = 0;
pub const __AES__ = 1;
pub const _POSIX_BARRIERS = @as(c_long, 200809);
pub const __S32_TYPE = c_int;
pub const __FLT_RADIX__ = 2;
pub const __FD_SETSIZE = 1024;
pub const __amd64 = 1;
pub const _POSIX_MEMLOCK_RANGE = @as(c_long, 200809);
pub const __WINT_MAX__ = @as(c_uint, 4294967295);
pub inline fn __attribute_format_strfmon__(a: var, b: var) @TypeOf(__attribute__(__format__(__strfmon__, a, b))) {
    return __attribute__(__format__(__strfmon__, a, b));
}
pub const __UINTPTR_FMTo__ = "lo";
pub const __INT32_MAX__ = 2147483647;
pub const _POSIX_CPUTIME = 0;
pub const _POSIX2_VERSION = __POSIX2_THIS_VERSION;
pub const _POSIX_JOB_CONTROL = 1;
pub const __INTPTR_FMTd__ = "ld";
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __INTPTR_WIDTH__ = 64;
pub const __XSAVE__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const _BITS_TIME64_H = 1;
pub const _POSIX_V7_LP64_OFF64 = 1;
pub const __INT32_FMTi__ = "i";
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __RDSEED__ = 1;
pub const __USE_ISOC11 = 1;
pub const _POSIX_THREAD_PRIO_INHERIT = @as(c_long, 200809);
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __corei7__ = 1;
pub const __MOVBE__ = 1;
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub inline fn __REDIRECT_LDBL(name: var, proto: var, alias: var) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __INT_FAST64_MAX__ = @as(c_long, 9223372036854775807);
pub const _POSIX_THREAD_PROCESS_SHARED = @as(c_long, 200809);
pub const __XSAVEC__ = 1;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINT_FAST32_FMTx__ = "x";
pub inline fn __ASMNAME2(prefix: var, cname: var) @TypeOf(__STRING(prefix) ++ cname) {
    return __STRING(prefix) ++ cname;
}
pub const __PTRDIFF_FMTd__ = "ld";
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __WCHAR_MAX__ = 2147483647;
pub const __ATOMIC_SEQ_CST = 5;
pub const __LDBL_MANT_DIG__ = 64;
pub const __LP64_OFF64_CFLAGS = "-m64";
pub const F_OK = 0;
pub const __UINT_FAST8_MAX__ = 255;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __THROW = __attribute__(__nothrow__ ++ __LEAF);
pub const __STDC_VERSION__ = @as(c_long, 201112);
pub const __BMI2__ = 1;
pub const __THROWNL = __attribute__(__nothrow__);
pub const _POSIX_THREAD_PRIORITY_SCHEDULING = @as(c_long, 200809);
pub const _CS_POSIX_V6_WIDTH_RESTRICTED_ENVS = _CS_V6_WIDTH_RESTRICTED_ENVS;
pub const __F16C__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __SIZEOF_INT__ = 4;
pub const NULL = @intToPtr(?*c_void, 0);
pub const __TIMESIZE = __WORDSIZE;
pub const __UINT32_C_SUFFIX__ = U;
pub const __x86_64__ = 1;
pub const STDIN_FILENO = 0;
pub const _CS_POSIX_V7_WIDTH_RESTRICTED_ENVS = _CS_V7_WIDTH_RESTRICTED_ENVS;
pub const __BMI__ = 1;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FLT_MANT_DIG__ = 24;
pub const __INT_LEAST8_MAX__ = 127;
pub const __UINTMAX_FMTo__ = "lo";
pub const _POSIX_THREAD_ATTR_STACKADDR = @as(c_long, 200809);
pub const STDOUT_FILENO = 1;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZEOF_DOUBLE__ = 8;
pub const __USE_ATFILE = 1;
pub inline fn __NTH(fct: var) @TypeOf(__attribute__(__nothrow__ ++ __LEAF) ++ fct) {
    return __attribute__(__nothrow__ ++ __LEAF) ++ fct;
}
pub const __USE_POSIX_IMPLICITLY = 1;
pub const __AVX__ = 1;
