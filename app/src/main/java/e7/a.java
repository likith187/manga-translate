package e7;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Downloads;
import android.text.TextUtils;
import android.util.Pair;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.aiunit.download.core.ErrorCode;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import t1.a;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: h */
    public static final String[] f11752h = {"_id", "local_filename", "mediaprovider_uri", "destination", "title", "description", "uri", "status", "hint", "media_type", "total_size", "last_modified_timestamp", "bytes_so_far", "allow_write", "local_uri", "reason", "notificationpackage", "is_visible_in_downloads_ui", "download_speed"};

    /* JADX INFO: renamed from: i */
    public static final String[] f11753i = {"_id", "_data AS local_filename", "mediaprovider_uri", "destination", "title", "description", "uri", "status", "hint", "notificationpackage", "mimetype AS media_type", "total_bytes AS total_size", "lastmod AS last_modified_timestamp", "current_bytes AS bytes_so_far", "allow_write", "is_visible_in_downloads_ui", "download_speed", "'placeholder' AS local_uri", "'placeholder' AS reason"};

    /* JADX INFO: renamed from: j */
    private static a f11754j;

    /* JADX INFO: renamed from: k */
    private static HandlerThread f11755k;

    /* JADX INFO: renamed from: l */
    private static int f11756l;

    /* JADX INFO: renamed from: a */
    private final ContentResolver f11757a;

    /* JADX INFO: renamed from: b */
    private final String f11758b;

    /* JADX INFO: renamed from: d */
    private boolean f11760d;

    /* JADX INFO: renamed from: e */
    private e7.b f11761e;

    /* JADX INFO: renamed from: f */
    private c f11762f;

    /* JADX INFO: renamed from: c */
    private Uri f11759c = Downloads.Impl.CONTENT_URI;

    /* JADX INFO: renamed from: g */
    private Handler f11763g = new Handler(f11755k.getLooper());

    /* JADX INFO: renamed from: e7.a$a */
    public static class C0138a extends CursorWrapper {

        /* JADX INFO: renamed from: a */
        private final Uri f11764a;

        /* JADX INFO: renamed from: b */
        private final boolean f11765b;

        public C0138a(Cursor cursor, Uri uri, boolean z10) {
            super(cursor);
            this.f11764a = uri;
            this.f11765b = z10;
        }

        private static long c(int i10) {
            if ((400 <= i10 && i10 < 488) || (500 <= i10 && i10 < 600)) {
                return (400 > i10 || i10 >= 488) ? 1011L : 1012L;
            }
            if (i10 == 198) {
                return 1006L;
            }
            if (i10 == 199) {
                return 1007L;
            }
            if (i10 == 488) {
                return 1009L;
            }
            if (i10 == 489) {
                return 1008L;
            }
            if (i10 == 497) {
                return 1005L;
            }
            switch (i10) {
                case 492:
                    return 1001L;
                case 493:
                case 494:
                    return 1002L;
                case 495:
                    return 1004L;
                default:
                    return 1000L;
            }
        }

        private String i() {
            long j10 = getLong(getColumnIndex("destination"));
            if (j10 != 4 && j10 != 0 && j10 != 6) {
                return ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, getLong(getColumnIndex("_id"))).toString();
            }
            String string = super.getString(getColumnIndex("local_filename"));
            if (string == null) {
                return null;
            }
            return Uri.fromFile(new File(string)).toString();
        }

        private static long k(int i10) {
            switch (i10) {
                case 193:
                    return 5L;
                case 194:
                    return 1L;
                case 195:
                    return 2L;
                case 196:
                    return 3L;
                case 197:
                default:
                    return 4L;
                case 198:
                    return 6L;
            }
        }

        public static long v(int i10) {
            int iX = x(i10);
            if (iX == 4) {
                return k(i10);
            }
            if (iX != 16) {
                return 0L;
            }
            return c(i10);
        }

        public static int x(int i10) {
            switch (i10) {
                case 190:
                    return 1;
                case 191:
                case 197:
                case 199:
                default:
                    return 16;
                case 192:
                    return 2;
                case 193:
                case 194:
                case 195:
                case 196:
                case 198:
                    return 4;
                case 200:
                    return 8;
            }
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public int getInt(int i10) {
            return getColumnName(i10).equals("reason") ? (int) v(super.getInt(getColumnIndex("status"))) : getColumnName(i10).equals("status") ? x(super.getInt(getColumnIndex("status"))) : getColumnName(i10).equals("status_detailed") ? super.getInt(getColumnIndex("status")) : super.getInt(i10);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public String getString(int i10) {
            String columnName = getColumnName(i10);
            columnName.hashCode();
            if (columnName.equals("local_uri")) {
                return i();
            }
            if (columnName.equals("local_filename") && !this.f11765b) {
                throw new SecurityException("COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead");
            }
            return super.getString(i10);
        }
    }

    public interface b {
    }

    class c extends ContentObserver {

        /* JADX INFO: renamed from: e7.a$c$a */
        class RunnableC0139a implements Runnable {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ Uri f11767a;

            RunnableC0139a(Uri uri) {
                this.f11767a = uri;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (f7.a.f12008a) {
                    f7.a.d("DownloadManager", "onChange run, start! mPackageName=" + a.this.f11758b + "/uri = " + this.f11767a);
                }
                if (this.f11767a.getPathSegments().size() <= 2) {
                    f7.a.b("DownloadManager", "onChange run, pathSegments.size <= 2, uri has't downloadid");
                    return;
                }
                String string = this.f11767a.toString();
                String str = "insert";
                if (!string.contains("insert")) {
                    str = "update";
                    if (!string.contains("update")) {
                        if (string.contains("delete")) {
                            str = "delete";
                        } else {
                            str = "timeout";
                            if (!string.contains("timeout")) {
                                f7.a.b("DownloadManager", "onChange type error uriString = " + string);
                                return;
                            }
                        }
                    }
                }
                String[] strArrSplit = this.f11767a.getLastPathSegment().split("-");
                if (f7.a.f12008a) {
                    f7.a.d("DownloadManager", "onChange run, changeType = " + str + Arrays.toString(strArrSplit));
                }
                if (strArrSplit == null || strArrSplit.length <= 0) {
                    f7.a.b("DownloadManager", "onChange error no valid id");
                    return;
                }
                try {
                    if (str.equalsIgnoreCase("delete")) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : strArrSplit) {
                            int iIndexOf = str2.indexOf(ErrorCode.CODE_SERVICE_NOT_SUPPORT);
                            t1.a aVar = new t1.a();
                            aVar.f15656a = Long.parseLong(str2.substring(0, iIndexOf));
                            aVar.f15674s = str2.substring(iIndexOf + 1);
                            arrayList.add(aVar);
                        }
                        if (a.this.f11761e != null) {
                            a.this.f11761e.b(arrayList);
                            return;
                        } else {
                            f7.a.b("DownloadManager", "onChange return mDownloadStatesCallback  is null");
                            return;
                        }
                    }
                    long[] jArr = new long[strArrSplit.length];
                    for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                        long j10 = Long.parseLong(strArrSplit[i10]);
                        Long lValueOf = Long.valueOf(j10);
                        jArr[i10] = j10;
                        if (f7.a.f12008a) {
                            f7.a.d("DownloadManager", "onChange run, split i = " + i10 + "/ id =" + lValueOf);
                        }
                    }
                    List listJ = a.this.j(jArr);
                    if (listJ == null || listJ.size() <= 0) {
                        return;
                    }
                    c.this.b(listJ, str);
                } catch (Exception e10) {
                    f7.a.b("DownloadManager", "exception = " + e10.getMessage());
                }
            }
        }

        public c(Handler handler) {
            super(handler);
        }

        public void b(List list, String str) {
            if (((t1.a) list.get(0)).f15664i == null) {
                f7.a.b("DownloadManager", "downloadInfo.mPackage = null, return");
                return;
            }
            if (a.this.f11758b != null && !((t1.a) list.get(0)).f15664i.equals(a.this.f11758b)) {
                f7.a.b("DownloadManager", "handleDownloadInfo list downloadInfo.mPackage = " + ((t1.a) list.get(0)).f15664i + ". is not equal " + a.this.f11758b);
                return;
            }
            if (f7.a.f12008a) {
                f7.a.d("DownloadManager", "handleDownloadInfo.list downloadInfos.size = " + list.size());
            }
            if (a.this.f11761e == null) {
                f7.a.b("DownloadManager", "handleDownloadInfo list mDownloadStatesCallback = null");
                return;
            }
            if (str.equalsIgnoreCase("insert")) {
                a.this.f11761e.a(list);
            } else if (str.equalsIgnoreCase("update")) {
                a.this.f11761e.c(list);
            } else if (str.equalsIgnoreCase("timeout")) {
                a.this.f11761e.d(list);
            }
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            onChange(z10, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10, Uri uri) {
            if (f7.a.f12008a) {
                f7.a.d("DownloadManager", "onChange run, uri = " + uri);
            }
            a.b(a.this);
            if (uri == null) {
                f7.a.b("DownloadManager", "onChange error uri = null, return.");
            } else if (a.this.f11761e == null) {
                f7.a.b("DownloadManager", "onChange error mDownloadStatesCallback = null, return.");
            } else {
                a.this.f11763g.post(new RunnableC0139a(uri));
            }
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a */
        private long[] f11769a = null;

        /* JADX INFO: renamed from: b */
        private String[] f11770b = null;

        /* JADX INFO: renamed from: c */
        private Integer f11771c = null;

        /* JADX INFO: renamed from: d */
        private String f11772d = null;

        /* JADX INFO: renamed from: e */
        private String f11773e = "lastmod";

        /* JADX INFO: renamed from: f */
        private int f11774f = 2;

        /* JADX INFO: renamed from: g */
        private boolean f11775g = false;

        /* JADX INFO: renamed from: h */
        private boolean f11776h = false;

        /* JADX INFO: renamed from: i */
        private String[] f11777i = null;

        /* JADX INFO: renamed from: j */
        private String f11778j = null;

        /* JADX INFO: renamed from: k */
        private String[] f11779k = null;

        private boolean f() {
            return a.f11756l > 0;
        }

        private String g(String str, Iterable iterable) {
            StringBuilder sb = new StringBuilder();
            Iterator it = iterable.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!z10) {
                    sb.append(str);
                }
                sb.append(str2);
                z10 = false;
            }
            return sb.toString();
        }

        private String p(String str, int i10) {
            return "status" + str + "'" + i10 + "'";
        }

        private void q() {
            if (this.f11777i == null) {
                return;
            }
            int i10 = 0;
            while (true) {
                String[] strArr = this.f11777i;
                if (i10 >= strArr.length) {
                    return;
                }
                if (!TextUtils.isEmpty(strArr[i10])) {
                    if (this.f11777i[i10].contains(" AS ")) {
                        int iIndexOf = this.f11777i[i10].indexOf(" AS ");
                        String[] strArr2 = this.f11777i;
                        strArr2[i10] = strArr2[i10].substring(iIndexOf + 4);
                    } else if (this.f11777i[i10].contains(" AS ".toLowerCase())) {
                        int iIndexOf2 = this.f11777i[i10].indexOf(" AS ".toLowerCase());
                        String[] strArr3 = this.f11777i;
                        strArr3[i10] = strArr3[i10].substring(iIndexOf2 + " AS ".toLowerCase().length());
                    }
                }
                i10++;
            }
        }

        public String[] a(String[] strArr, String[]... strArr2) {
            if (strArr == null || strArr2 == null) {
                return null;
            }
            int length = strArr.length;
            for (String[] strArr3 : strArr2) {
                if (strArr3 != null && strArr3.length > 0) {
                    length += strArr3.length;
                }
            }
            String[] strArr4 = (String[]) Arrays.copyOf(strArr, length);
            int length2 = strArr.length;
            for (String[] strArr5 : strArr2) {
                if (strArr5 != null && strArr5.length > 0) {
                    System.arraycopy(strArr5, 0, strArr4, length2, strArr5.length);
                    length2 += strArr5.length;
                }
            }
            return strArr4;
        }

        public String[] b() {
            String[] strArr = this.f11777i;
            return strArr == null ? f() ? a.f11752h : a.f11753i : strArr;
        }

        public String c() {
            ArrayList arrayList = new ArrayList();
            long[] jArr = this.f11769a;
            if (jArr != null) {
                arrayList.add(a.p(jArr));
            }
            String[] strArr = this.f11779k;
            if (strArr != null) {
                arrayList.add(a.r(strArr));
            }
            if (f7.a.f12008a) {
                f7.a.d("DownloadManager", "getSelection , mPackageNames = " + Arrays.toString(this.f11770b) + ", this = " + this);
            }
            String[] strArr2 = this.f11770b;
            if (strArr2 != null) {
                arrayList.add(a.q(strArr2));
            }
            if (this.f11771c != null) {
                ArrayList arrayList2 = new ArrayList();
                if ((this.f11771c.intValue() & 1) != 0) {
                    arrayList2.add(p("=", 190));
                }
                if ((this.f11771c.intValue() & 2) != 0) {
                    arrayList2.add(p("=", 192));
                }
                if ((this.f11771c.intValue() & 4) != 0) {
                    arrayList2.add(p("=", 193));
                    arrayList2.add(p("=", 194));
                    arrayList2.add(p("=", 195));
                    arrayList2.add(p("=", 196));
                    arrayList2.add(p("=", 198));
                }
                if ((this.f11771c.intValue() & 8) != 0) {
                    arrayList2.add(p("=", 200));
                }
                if ((this.f11771c.intValue() & 16) != 0) {
                    arrayList2.add("(" + p(">=", 400) + " AND " + p("<", UIUtil.MEDIUM_WIDTH_DP) + ")");
                    arrayList2.add(p("=", 199));
                }
                if (arrayList2.size() > 0) {
                    arrayList.add("(" + g(" OR ", arrayList2) + ")");
                }
            }
            if (this.f11776h) {
                arrayList.add("is_visible_in_downloads_ui != '0'");
            } else if (this.f11775g) {
                arrayList.add("is_visible_in_downloads_ui = '1'");
            }
            arrayList.add("deleted != '1'");
            if (!TextUtils.isEmpty(this.f11778j)) {
                arrayList.add("uri = '" + this.f11778j + "'");
            }
            String strG = g(" AND ", arrayList);
            if (f7.a.f12008a) {
                f7.a.d("DownloadManager", "getSelection. selection = " + strG);
            }
            return strG;
        }

        public String[] d() {
            String[] strArrN = new String[0];
            String[] strArr = new String[0];
            String[] strArr2 = new String[0];
            long[] jArr = this.f11769a;
            if (jArr != null) {
                strArrN = a.n(jArr);
            }
            String[] strArr3 = this.f11779k;
            if (strArr3 != null) {
                strArr = strArr3;
            }
            String[] strArr4 = this.f11770b;
            if (strArr4 != null) {
                strArr2 = strArr4;
            }
            String[] strArrA = a(strArrN, strArr, strArr2);
            a.f(strArrA);
            return strArrA;
        }

        public String e() {
            return this.f11773e + " " + (this.f11774f == 1 ? "ASC" : "DESC");
        }

        public d h(String str, int i10) {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalArgumentException("Invalid direction: " + i10);
            }
            if (TextUtils.isEmpty(str) || str.equals("last_modified_timestamp")) {
                this.f11773e = "lastmod";
            } else if (str.equals("total_size")) {
                this.f11773e = "total_bytes";
            } else {
                if (!str.equals("_id")) {
                    throw new IllegalArgumentException("Cannot order by " + str);
                }
                this.f11773e = "_id";
            }
            this.f11774f = i10;
            return this;
        }

        Cursor i(ContentResolver contentResolver, Uri uri) {
            try {
                return contentResolver.query(uri, b(), c(), d(), e());
            } catch (Exception e10) {
                f7.a.b("DownloadManager", "runQuery, occur exception. e = " + e10.getMessage());
                return null;
            }
        }

        public d j(long... jArr) {
            this.f11769a = jArr;
            return this;
        }

        public d k(String... strArr) {
            this.f11770b = strArr;
            a.f(strArr);
            return this;
        }

        public d l(int i10) {
            if ((i10 & 31) == 0) {
                throw new IllegalArgumentException("invaild status.");
            }
            this.f11771c = Integer.valueOf(i10);
            return this;
        }

        public d m(String str) {
            this.f11778j = str;
            return this;
        }

        public d n(boolean z10) {
            this.f11775g = z10;
            return this;
        }

        public d o(String... strArr) {
            this.f11777i = strArr;
            if (f()) {
                q();
            }
            return this;
        }
    }

    public static class e {

        /* JADX INFO: renamed from: b */
        private Uri f11781b;

        /* JADX INFO: renamed from: c */
        private Uri f11782c;

        /* JADX INFO: renamed from: e */
        private CharSequence f11784e;

        /* JADX INFO: renamed from: f */
        private CharSequence f11785f;

        /* JADX INFO: renamed from: g */
        private String f11786g;

        /* JADX INFO: renamed from: v */
        private Uri f11801v;

        /* JADX INFO: renamed from: a */
        private int f11780a = 0;

        /* JADX INFO: renamed from: d */
        private List f11783d = new ArrayList();

        /* JADX INFO: renamed from: h */
        private int f11787h = 6;

        /* JADX INFO: renamed from: i */
        private boolean f11788i = true;

        /* JADX INFO: renamed from: j */
        private boolean f11789j = true;

        /* JADX INFO: renamed from: k */
        private int f11790k = 0;

        /* JADX INFO: renamed from: l */
        private boolean f11791l = false;

        /* JADX INFO: renamed from: m */
        private boolean f11792m = false;

        /* JADX INFO: renamed from: n */
        private boolean f11793n = false;

        /* JADX INFO: renamed from: o */
        private String f11794o = null;

        /* JADX INFO: renamed from: p */
        private int f11795p = 0;

        /* JADX INFO: renamed from: q */
        private boolean f11796q = false;

        /* JADX INFO: renamed from: r */
        private int f11797r = -1;

        /* JADX INFO: renamed from: s */
        private int f11798s = -1;

        /* JADX INFO: renamed from: t */
        private long f11799t = 0;

        /* JADX INFO: renamed from: u */
        private long f11800u = -1;

        /* JADX INFO: renamed from: w */
        private String f11802w = null;

        /* JADX INFO: renamed from: x */
        private String f11803x = null;

        /* JADX INFO: renamed from: y */
        private int f11804y = 1;

        public e(Uri uri) {
            uri.getClass();
            String scheme = uri.getScheme();
            if (scheme != null && (scheme.equals("http") || scheme.equals("https"))) {
                this.f11781b = uri;
                return;
            }
            throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + uri);
        }

        private void a(ContentValues contentValues) {
            int i10 = 0;
            for (Pair pair : this.f11783d) {
                contentValues.put("http_header_" + i10, ((String) pair.first) + ": " + ((String) pair.second));
                i10++;
            }
        }

        private void b(ContentValues contentValues, String str, Object obj) {
            if (obj != null) {
                contentValues.put(str, obj.toString());
            }
        }

        public e c(int i10) {
            this.f11787h = i10;
            return this;
        }

        public e d(boolean z10) {
            this.f11789j = z10;
            return this;
        }

        public e e(Uri uri) {
            this.f11782c = uri;
            return this;
        }

        public e f(String str) {
            this.f11794o = str;
            return this;
        }

        public e g(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f11802w = str;
            }
            return this;
        }

        public e h(int i10) {
            this.f11780a = i10;
            return this;
        }

        public e i(int i10) {
            this.f11804y = i10;
            return this;
        }

        ContentValues j(String str) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("uri", this.f11781b.toString());
            contentValues.put("is_public_api", Boolean.TRUE);
            contentValues.put("notificationpackage", str);
            if (this.f11782c != null) {
                contentValues.put("destination", (Integer) 4);
                contentValues.put("hint", this.f11782c.toString());
            } else {
                contentValues.put("destination", Integer.valueOf(this.f11792m ? 5 : 2));
            }
            contentValues.put("scanned", Integer.valueOf(this.f11791l ? 0 : 2));
            if (!this.f11783d.isEmpty()) {
                a(contentValues);
            }
            b(contentValues, "title", this.f11784e);
            b(contentValues, "description", this.f11785f);
            b(contentValues, "mimetype", this.f11786g);
            contentValues.put("visibility", Integer.valueOf(this.f11780a));
            contentValues.put("allowed_network_types", Integer.valueOf(this.f11787h));
            contentValues.put("allow_roaming", Boolean.valueOf(this.f11788i));
            contentValues.put("allow_metered", Boolean.valueOf(this.f11789j));
            contentValues.put("flags", Integer.valueOf(this.f11790k));
            contentValues.put("is_visible_in_downloads_ui", Integer.valueOf(this.f11804y));
            if (this.f11793n) {
                contentValues.put("control", (Integer) 1);
                contentValues.put("status", (Integer) 193);
            }
            b(contentValues, "extra", this.f11794o);
            contentValues.put("priority", Integer.valueOf(this.f11795p));
            contentValues.put("relpace_file", Boolean.valueOf(this.f11796q));
            contentValues.put("statistics_id", Integer.valueOf(this.f11797r));
            contentValues.put("time_out", Long.valueOf(this.f11799t));
            contentValues.put("fail_retry_count", Integer.valueOf(this.f11798s));
            contentValues.put("time_interval_for_fail", Long.valueOf(this.f11800u));
            Uri uri = this.f11801v;
            if (uri != null) {
                contentValues.put("backup_uri", uri.toString());
            }
            b(contentValues, "md5", this.f11802w);
            b(contentValues, "header_md5", this.f11803x);
            return contentValues;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("DownloadManager");
        f11755k = handlerThread;
        handlerThread.start();
        f11756l = 0;
    }

    private a(Context context, String str) {
        if (context == null) {
            throw new IllegalArgumentException("The context and resolver can't be null !");
        }
        this.f11757a = context.getContentResolver();
        String packageName = context.getPackageName();
        if (m(context).equalsIgnoreCase(packageName)) {
            this.f11758b = null;
        } else {
            this.f11758b = TextUtils.isEmpty(str) ? packageName : str;
        }
        if (f7.a.f12008a) {
            f7.a.a("DownloadManager", "DownloadManager. mPackageName = " + this.f11758b);
        }
        this.f11760d = context.getApplicationInfo().targetSdkVersion < 23;
        try {
            f11756l = context.getPackageManager().getApplicationInfo("com.android.providers.downloads", 128).metaData.getInt("provider_version");
        } catch (Exception e10) {
            f7.a.b("DownloadManager", "DownloadManager,exception: " + e10);
        }
    }

    static /* synthetic */ b b(a aVar) {
        aVar.getClass();
        return null;
    }

    public static void f(String[] strArr) {
        f7.a.a("DownloadManager", "dumpArray array= " + Arrays.toString(strArr));
    }

    public static a k(Context context) {
        return l(context, null);
    }

    public static synchronized a l(Context context, String str) {
        try {
            if (f11754j == null) {
                f11754j = new a(context.getApplicationContext(), str);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f11754j;
    }

    private static String m(Context context) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(new Intent("coloros.intent.action.VIEW_DOWNLOADS"), 65536);
        if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
            return listQueryIntentActivities.get(0).activityInfo.packageName;
        }
        List<ResolveInfo> listQueryIntentActivities2 = packageManager.queryIntentActivities(new Intent("com.oplus.providers.downloads.ui.intent.action.VIEW_DOWNLOADS"), 65536);
        return (listQueryIntentActivities2 == null || listQueryIntentActivities2.size() <= 0) ? "com.coloros.providers.downloads.ui" : listQueryIntentActivities2.get(0).activityInfo.packageName;
    }

    static String[] n(long[] jArr) {
        return o(jArr, new String[jArr.length]);
    }

    static String[] o(long[] jArr, String[] strArr) {
        for (int i10 = 0; i10 < jArr.length; i10++) {
            strArr[i10] = Long.toString(jArr[i10]);
        }
        return strArr;
    }

    static String p(long[] jArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i10 = 0; i10 < jArr.length; i10++) {
            if (i10 > 0) {
                sb.append("OR ");
            }
            sb.append("_id");
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    static String q(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                sb.append("OR ");
            }
            sb.append("notificationpackage");
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    static String r(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                sb.append("OR ");
            }
            sb.append("uuid");
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    private synchronized void w() {
        if (this.f11762f == null) {
            c cVar = new c(null);
            this.f11762f = cVar;
            this.f11757a.registerContentObserver(e7.c.f11806b, true, cVar);
            this.f11757a.registerContentObserver(e7.c.f11805a, true, this.f11762f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00db A[Catch: all -> 0x0059, RuntimeException -> 0x005d, TryCatch #0 {RuntimeException -> 0x005d, blocks: (B:96:0x004e, B:104:0x0060, B:106:0x0064, B:107:0x007c, B:108:0x007f, B:110:0x0085, B:127:0x00db, B:128:0x00e2, B:126:0x00be), top: B:159:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0180  */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int A(long... r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e7.a.A(long[]):int");
    }

    public void B(boolean z10) {
        this.f11760d = z10;
    }

    public int C(int i10, long... jArr) {
        if (jArr == null || jArr.length == 0) {
            throw new IllegalArgumentException("setAllowedNetworkTypes input param 'ids' can't be null");
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("allowed_network_types", Integer.valueOf(i10));
        return jArr.length == 1 ? this.f11757a.update(ContentUris.withAppendedId(this.f11759c, jArr[0]), contentValues, null, null) : this.f11757a.update(this.f11759c, contentValues, p(jArr), n(jArr));
    }

    public long g(e eVar) {
        try {
            Uri uriInsert = this.f11757a.insert(Downloads.Impl.CONTENT_URI, eVar.j(this.f11758b));
            if (uriInsert != null) {
                return Long.parseLong(uriInsert.getLastPathSegment());
            }
            f7.a.b("DownloadManager", "enqueue, downloadUri = null, return -1.");
            return -1L;
        } catch (Exception e10) {
            f7.a.b("DownloadManager", "enqueue, occur exception. e = " + e10.getMessage());
            return -1L;
        }
    }

    public List h(int i10, String str, boolean z10, String str2, int i11) {
        return i(i10, null, str, z10, str2, i11);
    }

    public List i(int i10, String[] strArr, String str, boolean z10, String str2, int i11) throws Throwable {
        Cursor cursorV;
        B(true);
        ArrayList arrayList = new ArrayList();
        try {
            cursorV = v(i10, strArr, str, z10, str2, i11);
            if (cursorV != null) {
                try {
                    int count = cursorV.getCount();
                    if (f7.a.f12008a) {
                        f7.a.d("DownloadManager", "getDownloadData  c.getCount() = " + count);
                    }
                    if (count > 0 && cursorV.moveToFirst()) {
                        do {
                            arrayList.add(new a.C0222a(this.f11757a, cursorV).d());
                        } while (cursorV.moveToNext());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursorV != null) {
                        cursorV.close();
                    }
                    throw th;
                }
            }
            if (cursorV != null) {
                cursorV.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            cursorV = null;
        }
    }

    public List j(long... jArr) {
        B(true);
        ArrayList arrayList = new ArrayList();
        d dVar = new d();
        dVar.j(jArr);
        if (f7.a.f12008a) {
            f7.a.d("DownloadManager", "getDownloadData -array-  mPackageName = " + this.f11758b);
        }
        if (!TextUtils.isEmpty(this.f11758b)) {
            dVar.k(this.f11758b);
        }
        Cursor cursorT = null;
        try {
            try {
                cursorT = t(dVar);
                int count = cursorT.getCount();
                if (f7.a.f12008a) {
                    f7.a.d("DownloadManager", "getDownloadData  c.getCount() = " + count);
                }
                if (count > 0 && cursorT.moveToFirst()) {
                    do {
                        arrayList.add(new a.C0222a(this.f11757a, cursorT).d());
                    } while (cursorT.moveToNext());
                }
            } catch (Exception e10) {
                f7.a.b("DownloadManager", "exception = " + e10.getMessage());
                if (cursorT != null) {
                }
                return arrayList;
            }
            cursorT.close();
            return arrayList;
        } catch (Throwable th) {
            if (cursorT != null) {
                cursorT.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0175  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int s(long... r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 383
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e7.a.s(long[]):int");
    }

    public Cursor t(d dVar) {
        return u(dVar, f11752h);
    }

    public Cursor u(d dVar, String[] strArr) {
        Cursor cursorI = dVar.i(this.f11757a, this.f11759c);
        if (cursorI == null) {
            return null;
        }
        return new C0138a(cursorI, this.f11759c, this.f11760d);
    }

    public Cursor v(int i10, String[] strArr, String str, boolean z10, String str2, int i11) {
        Cursor cursorT;
        B(true);
        if (f7.a.f12008a) {
            f7.a.d("DownloadManager", "queryDownloadData  mPackageName = " + this.f11758b);
        }
        d dVar = new d();
        if (!TextUtils.isEmpty(this.f11758b)) {
            dVar.k(this.f11758b);
        }
        if (strArr != null) {
            dVar.o(strArr);
        }
        dVar.m(str);
        dVar.l(i10);
        dVar.n(z10);
        if (str2 != null) {
            dVar.h(str2, i11);
        }
        try {
            cursorT = t(dVar);
            if (cursorT != null) {
                try {
                    cursorT.moveToFirst();
                } catch (Exception e10) {
                    e = e10;
                    f7.a.b("DownloadManager", "exception = " + e.getMessage());
                }
            }
        } catch (Exception e11) {
            e = e11;
            cursorT = null;
        }
        return cursorT;
    }

    public void x(e7.b bVar) {
        this.f11761e = bVar;
        w();
        if (f7.a.f12008a) {
            f7.a.a("DownloadManager", "registerDownloadStatesCallback  mDownloadStatesCallback = " + this.f11761e);
        }
    }

    public int y(boolean z10, long... jArr) {
        if (jArr == null || jArr.length == 0) {
            throw new IllegalArgumentException("remove input param 'ids' can't be null");
        }
        if (f7.a.f12008a) {
            f7.a.a("DownloadManager", "remove start synchroDeleteFile force true , ids = " + Arrays.toString(jArr));
        }
        return jArr.length == 1 ? this.f11757a.delete(ContentUris.withAppendedId(this.f11759c, jArr[0]), null, null) : this.f11757a.delete(this.f11759c, p(jArr), n(jArr));
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0057: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:68:0x0057 */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int z(long... r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e7.a.z(long[]):int");
    }
}
