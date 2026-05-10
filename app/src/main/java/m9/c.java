package m9;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f13892a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f13893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final DateFormat[] f13894c;

    public static final class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(i9.d.f12672f);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f13893b = strArr;
        f13894c = new DateFormat[strArr.length];
    }

    public static final Date a(String str) {
        r.e(str, "<this>");
        if (str.length() == 0) {
            return null;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Date date = ((DateFormat) f13892a.get()).parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return date;
        }
        String[] strArr = f13893b;
        synchronized (strArr) {
            try {
                int length = strArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    DateFormat[] dateFormatArr = f13894c;
                    DateFormat simpleDateFormat = dateFormatArr[i10];
                    if (simpleDateFormat == null) {
                        simpleDateFormat = new SimpleDateFormat(f13893b[i10], Locale.US);
                        simpleDateFormat.setTimeZone(i9.d.f12672f);
                        dateFormatArr[i10] = simpleDateFormat;
                    }
                    parsePosition.setIndex(0);
                    Date date2 = simpleDateFormat.parse(str, parsePosition);
                    if (parsePosition.getIndex() != 0) {
                        return date2;
                    }
                }
                h0 h0Var = h0.INSTANCE;
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final String b(Date date) {
        r.e(date, "<this>");
        String str = ((DateFormat) f13892a.get()).format(date);
        r.d(str, "STANDARD_DATE_FORMAT.get().format(this)");
        return str;
    }
}
