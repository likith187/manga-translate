package t1;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.text.TextUtils;
import e7.a;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f15657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f15658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f15659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f15660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f15665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15666k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15667l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f15668m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f15669n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f15670o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f15671p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f15672q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f15673r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f15674s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f15675t;

    /* JADX INFO: renamed from: t1.a$a, reason: collision with other inner class name */
    public static class C0222a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final ContentResolver f15676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final Cursor f15677b;

        public C0222a(ContentResolver contentResolver, Cursor cursor) {
            this.f15676a = contentResolver;
            this.f15677b = cursor;
        }

        protected Integer a(String str) {
            int columnIndex = this.f15677b.getColumnIndex(str);
            return Integer.valueOf(columnIndex >= 0 ? this.f15677b.getInt(columnIndex) : -1);
        }

        protected Long b(String str) {
            int columnIndex = this.f15677b.getColumnIndex(str);
            return Long.valueOf(columnIndex >= 0 ? this.f15677b.getLong(columnIndex) : -1L);
        }

        protected String c(String str) {
            int columnIndexOrThrow = this.f15677b.getColumnIndexOrThrow(str);
            String string = columnIndexOrThrow >= 0 ? this.f15677b.getString(columnIndexOrThrow) : null;
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return string;
        }

        public a d() {
            a aVar = new a();
            e(aVar);
            return aVar;
        }

        public void e(a aVar) {
            aVar.f15656a = b("_id").longValue();
            aVar.f15657b = c("uri");
            aVar.f15658c = c("hint");
            aVar.f15659d = c("local_filename");
            aVar.f15660e = Intent.normalizeMimeType(c("media_type"));
            aVar.f15668m = c("title");
            aVar.f15669n = c("description");
            aVar.f15670o = c("errorMsg");
            aVar.f15661f = a("destination").intValue();
            int iIntValue = a("status_detailed").intValue();
            aVar.f15662g = a.C0138a.x(iIntValue);
            aVar.f15671p = a.C0138a.v(iIntValue);
            aVar.f15663h = b("last_modified_timestamp").longValue();
            aVar.f15664i = c("notificationpackage");
            aVar.f15665j = b("total_size").longValue();
            aVar.f15666k = b("bytes_so_far").longValue();
            aVar.f15667l = a("is_visible_in_downloads_ui").intValue();
            aVar.f15672q = b("download_speed").longValue();
            aVar.f15673r = c("extra");
            aVar.f15674s = c("uuid");
            aVar.f15675t = a("statistics_id").intValue();
        }
    }

    public String toString() {
        return "DownloadInfoData [mId=" + this.f15656a + ", mUri=" + this.f15657b + ", mFileName=" + this.f15659d + ", mMimeType=" + this.f15660e + ", mStatus=" + this.f15662g + ", mTotalBytes=" + this.f15665j + ", mCurrentBytes=" + this.f15666k + ", mDestination=" + this.f15661f + ", mErrorMsg=" + this.f15670o + ", mReason=" + this.f15671p + ", mPackage=" + this.f15664i + ", mUuid=" + this.f15674s + "]";
    }
}
