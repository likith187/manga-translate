package com.slp.library.common.log;

import android.annotation.SuppressLint;
import android.util.Log;
import com.slp.library.common.log.SlpLogs;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public class SlpLogs {
    private static boolean IS_ANDROID = false;
    public final Configtor CONFIGTOR;
    public final LogImpl DEBUG;
    public final LogImpl ERROR;
    public final LogImpl INFOS;
    public final LogImpl ON;
    public final LogImpl WARNS;

    public static class Configtor {
        private static final int maxFileSize = 10485760;
        private String TAG;
        private int defaultBacks;
        private int defaultLins;
        private boolean enableThread;
        private boolean enableTime;
        private ISystemLog ilog;
        private final String logClassName;
        private Level logLevel;
        private String logPath;
        private String splitStrE;
        private String splitStrS;
        private int strMaxCount;

        @SuppressLint({"SimpleDateFormat"})
        private static final SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyyyMMdd-HHmmss");

        @SuppressLint({"SimpleDateFormat"})
        private static final SimpleDateFormat mSimpleDateFormatSSS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        private static final LinkedBlockingQueue<LogBean> queue = new LinkedBlockingQueue<>();
        private static boolean isInit = false;

        private static List<String> formatLocation(LogBean logBean, boolean z10) {
            String[] strArrSplit = get$Location(logBean.splitClass, logBean.displayLins, logBean.backLins, logBean.stack.getStackTrace()).split("\r\n");
            ArrayList arrayList = new ArrayList();
            for (String str : strArrSplit) {
                arrayList.add(formatLogText(logBean, logBean.configtor.splitStrS + str + logBean.configtor.splitStrE, z10));
            }
            return arrayList;
        }

        private static String formatLogText(LogBean logBean, Object obj, boolean z10) {
            String str;
            if (z10) {
                str = "[" + mSimpleDateFormatSSS.format(logBean.time) + "]";
            } else {
                str = "";
            }
            return String.format("%s[%s]%s[%s]：%s", str, logBean.level.name(), logBean.configtor.enableThread ? logBean.threadInfo : "", logBean.tag, obj);
        }

        private static String get$Location(String str, int i10, int i11, StackTraceElement[] stackTraceElementArr) {
            int i12 = i10 + i11;
            String className = stackTraceElementArr[0].getClassName();
            ArrayList arrayList = new ArrayList();
            boolean z10 = false;
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (!z10 && stackTraceElement.getClassName().startsWith(str)) {
                    z10 = true;
                }
                if (z10 && (((!stackTraceElement.getClassName().equals(className) && !stackTraceElement.getClassName().startsWith(str)) || arrayList.size() > 0) && !stackTraceElement.toString().contains(".access$"))) {
                    arrayList.add(0, stackTraceElement);
                    if (arrayList.size() >= i12) {
                        break;
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size() - i11;
            for (int i13 = 0; i13 < size; i13++) {
                sb.append(((StackTraceElement) arrayList.get(i13)).toString());
                if (i13 != size - 1) {
                    sb.append("\r\n");
                }
            }
            return sb.toString();
        }

        private static synchronized void init() {
            if (isInit) {
                return;
            }
            isInit = true;
            Thread thread = new Thread(new Runnable() { // from class: com.slp.library.common.log.a
                @Override // java.lang.Runnable
                public final void run() {
                    SlpLogs.Configtor.run();
                }
            });
            thread.setPriority(8);
            thread.start();
        }

        private static void logPrintln(LogBean logBean, List<String> list) {
            Level level = logBean.level;
            ISystemLog iSystemLog = logBean.configtor.ilog;
            for (String str : list) {
                if (level == Level.ON) {
                    iSystemLog.d(str);
                } else if (level == Level.DEBUG) {
                    iSystemLog.d(str);
                } else if (level == Level.INFOS) {
                    iSystemLog.i(str);
                } else if (level == Level.WARNS) {
                    iSystemLog.w(str);
                } else if (level == Level.ERROR) {
                    iSystemLog.e(str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void postLog(LogBean logBean) {
            if (isInit) {
                queue.offer(logBean);
            }
        }

        public static synchronized void release() {
            isInit = false;
            queue.offer(null);
        }

        /* JADX WARN: Removed duplicated region for block: B:61:0x0006 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        static void run() {
            /*
                Method dump skipped, instruction units count: 304
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.slp.library.common.log.SlpLogs.Configtor.run():void");
        }

        public Level getLogLevel() {
            return this.logLevel;
        }

        public Configtor setDefaultBacks(int i10) {
            this.defaultBacks = i10;
            return this;
        }

        public Configtor setDefaultLins(int i10) {
            this.defaultLins = i10;
            return this;
        }

        public Configtor setEnableThread(boolean z10) {
            this.enableThread = z10;
            return this;
        }

        public Configtor setEnableTime(boolean z10) {
            this.enableTime = z10;
            return this;
        }

        public Configtor setLogLevel(Level level) {
            this.logLevel = level;
            return this;
        }

        public Configtor setLogPath(String str) {
            this.logPath = str;
            return this;
        }

        public Configtor setSplitStrE(String str) {
            this.splitStrE = str;
            return this;
        }

        public Configtor setSplitStrS(String str) {
            this.splitStrS = str;
            return this;
        }

        public Configtor setStrMaxCount(int i10) {
            this.strMaxCount = i10;
            return this;
        }

        public Configtor setSystemLog(ISystemLog iSystemLog) {
            if (iSystemLog == null) {
                throw new RuntimeException("ISystemLog not null !");
            }
            this.ilog = iSystemLog;
            return this;
        }

        public Configtor setTag(String str) {
            this.TAG = str;
            return this;
        }

        private Configtor() {
            this.TAG = "SLP";
            this.splitStrS = "↓ - [";
            this.splitStrE = "]";
            this.enableTime = true;
            this.enableThread = false;
            this.logClassName = SlpLogs.class.getName();
            this.logLevel = Level.ERROR;
            this.ilog = SlpLogs.IS_ANDROID ? new AndroidLog() : new SystemLog();
            this.strMaxCount = 3000;
            this.defaultLins = 0;
            this.defaultBacks = 0;
            init();
        }
    }

    public interface ISystemLog {
        void d(String str);

        void e(String str);

        void i(String str);

        void w(String str);
    }

    public enum Level {
        ON,
        DEBUG,
        INFOS,
        WARNS,
        ERROR
    }

    public static class LogImpl {
        final Configtor configtor;
        Level level;

        private void _log(LogBean logBean) {
            if (this.level.ordinal() < this.configtor.logLevel.ordinal()) {
                return;
            }
            int i10 = this.configtor.strMaxCount;
            String str = "" + logBean.text;
            if (i10 <= 0 || str.length() <= i10) {
                Configtor.postLog(logBean);
                return;
            }
            int iCeil = (int) Math.ceil((((double) str.length()) * 1.0d) / ((double) i10));
            int i11 = 0;
            while (i11 < iCeil) {
                int i12 = i11 + 1;
                int length = i12 * i10;
                if (length > str.length()) {
                    length = str.length();
                }
                LogBean logBean2 = new LogBean(logBean);
                logBean2.text = str.substring(i11 * i10, length);
                Configtor.postLog(logBean2);
                i11 = i12;
            }
        }

        public void log(Object obj) {
            log(this.configtor.TAG, obj);
        }

        public void logBack(int i10, String str, Object... objArr) {
            logBack(this.configtor.TAG, i10, str, objArr);
        }

        public void logException(Throwable th) {
            if (th == null) {
                return;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            PrintStream printStream = new PrintStream(byteArrayOutputStream);
            th.printStackTrace(printStream);
            printStream.flush();
            printStream.close();
            log(byteArrayOutputStream.toString());
        }

        public void logLins(int i10, String str, Object... objArr) {
            logLins(this.configtor.TAG, i10, str, objArr);
        }

        public void logSplit(String str, String str2, int i10, int i11, String str3, Object... objArr) {
            Level level = this.level;
            if (level == Level.ERROR || level.ordinal() >= this.configtor.logLevel.ordinal()) {
                Configtor configtor = this.configtor;
                Level level2 = this.level;
                if (objArr != null && objArr.length != 0) {
                    str3 = String.format(str3, objArr);
                }
                LogBean logBean = new LogBean(configtor, level2, str2, str3);
                logBean.displayLins = i10 + this.configtor.defaultLins;
                logBean.backLins = i11 + this.configtor.defaultBacks;
                logBean.splitClass = str;
                _log(logBean);
            }
        }

        public void logf(String str, Object... objArr) {
            logft(this.configtor.TAG, str, objArr);
        }

        public void logft(String str, String str2, Object... objArr) {
            logBack(str, 0, str2, objArr);
        }

        private LogImpl(Level level, Configtor configtor) {
            this.level = level;
            this.configtor = configtor;
        }

        public void log(String str, Object obj) {
            logft(str, "%s", obj);
        }

        public void logBack(String str, int i10, String str2, Object... objArr) {
            logf(str, 1, i10, str2, objArr);
        }

        public void logLins(String str, int i10, String str2, Object... objArr) {
            logf(str, i10, 0, str2, objArr);
        }

        public void logf(int i10, int i11, String str, Object... objArr) {
            logf(this.configtor.TAG, i10, i11, str, objArr);
        }

        public void logf(String str, int i10, int i11, String str2, Object... objArr) {
            logSplit(this.configtor.logClassName, str, i10, i11, str2, objArr);
        }
    }

    static {
        try {
            Log.d("SLP", "Android Log");
            IS_ANDROID = true;
        } catch (Throwable unused) {
            System.out.println("SLP System Log");
        }
    }

    public SlpLogs() {
        Configtor configtor = new Configtor();
        this.CONFIGTOR = configtor;
        this.ON = new LogImpl(Level.ON, configtor);
        this.DEBUG = new LogImpl(Level.DEBUG, configtor);
        this.INFOS = new LogImpl(Level.INFOS, configtor);
        this.WARNS = new LogImpl(Level.WARNS, configtor);
        this.ERROR = new LogImpl(Level.ERROR, configtor);
    }

    private static class LogBean implements Cloneable {
        int backLins;
        Configtor configtor;
        int displayLins;
        Level level;
        String splitClass;
        Throwable stack;
        String tag;
        Object text;
        String threadInfo;
        Date time;

        LogBean(LogBean logBean) {
            this.displayLins = 1;
            this.backLins = 0;
            this.time = new Date();
            this.stack = new Throwable();
            this.splitClass = null;
            this.level = logBean.level;
            this.displayLins = logBean.displayLins;
            this.backLins = logBean.backLins;
            this.tag = logBean.tag;
            this.text = logBean.text;
            this.time = logBean.time;
            this.stack = logBean.stack;
            this.threadInfo = logBean.threadInfo;
            this.splitClass = logBean.splitClass;
            this.configtor = logBean.configtor;
        }

        public LogBean(Configtor configtor, Level level, String str, Object obj) {
            this.displayLins = 1;
            this.backLins = 0;
            this.time = new Date();
            this.stack = new Throwable();
            this.splitClass = null;
            this.level = level;
            this.tag = str == null ? configtor.TAG : str;
            this.text = obj;
            this.configtor = configtor;
            this.threadInfo = configtor.enableThread ? Thread.currentThread().toString().substring(6) : "";
        }
    }
}
