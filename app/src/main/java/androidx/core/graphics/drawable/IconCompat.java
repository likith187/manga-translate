package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final PorterDuff.Mode f1997k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f1999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f2000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f2001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f2004g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PorterDuff.Mode f2005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f2006i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2007j;

    static class a {
        static int a(Object obj) {
            return c.a(obj);
        }

        static String b(Object obj) {
            return c.b(obj);
        }

        static int c(Object obj) {
            return c.c(obj);
        }

        static Uri d(Object obj) {
            return c.d(obj);
        }

        static Icon e(IconCompat iconCompat, Context context) {
            Icon iconCreateWithBitmap;
            switch (iconCompat.f1998a) {
                case -1:
                    return (Icon) iconCompat.f1999b;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f1999b);
                    break;
                case 2:
                    iconCreateWithBitmap = Icon.createWithResource(iconCompat.d(), iconCompat.f2002e);
                    break;
                case 3:
                    iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f1999b, iconCompat.f2002e, iconCompat.f2003f);
                    break;
                case 4:
                    iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f1999b);
                    break;
                case 5:
                    iconCreateWithBitmap = b.a((Bitmap) iconCompat.f1999b);
                    break;
                case 6:
                    iconCreateWithBitmap = d.a(iconCompat.f());
                    break;
            }
            ColorStateList colorStateList = iconCompat.f2004g;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f2005h;
            if (mode != IconCompat.f1997k) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }

    static class b {
        static Icon a(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    static class c {
        static int a(Object obj) {
            return ((Icon) obj).getResId();
        }

        static String b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        static int c(Object obj) {
            return ((Icon) obj).getType();
        }

        static Uri d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    static class d {
        static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f1998a = -1;
        this.f2000c = null;
        this.f2001d = null;
        this.f2002e = 0;
        this.f2003f = 0;
        this.f2004g = null;
        this.f2005h = f1997k;
        this.f2006i = null;
    }

    public static IconCompat a(Context context, int i10) {
        c0.c.c(context);
        return b(context.getResources(), context.getPackageName(), i10);
    }

    public static IconCompat b(Resources resources, String str, int i10) {
        c0.c.c(str);
        if (i10 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f2002e = i10;
        if (resources != null) {
            try {
                iconCompat.f1999b = resources.getResourceName(i10);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f1999b = str;
        }
        iconCompat.f2007j = str;
        return iconCompat;
    }

    private static String k(int i10) {
        switch (i10) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public int c() {
        int i10 = this.f1998a;
        if (i10 == -1) {
            return a.a(this.f1999b);
        }
        if (i10 == 2) {
            return this.f2002e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String d() {
        int i10 = this.f1998a;
        if (i10 == -1) {
            return a.b(this.f1999b);
        }
        if (i10 == 2) {
            String str = this.f2007j;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f1999b).split(":", -1)[0] : this.f2007j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int e() {
        int i10 = this.f1998a;
        return i10 == -1 ? a.c(this.f1999b) : i10;
    }

    public Uri f() {
        int i10 = this.f1998a;
        if (i10 == -1) {
            return a.d(this.f1999b);
        }
        if (i10 == 4 || i10 == 6) {
            return Uri.parse((String) this.f1999b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public void g() {
        this.f2005h = PorterDuff.Mode.valueOf(this.f2006i);
        switch (this.f1998a) {
            case -1:
                Parcelable parcelable = this.f2001d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f1999b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f2001d;
                if (parcelable2 != null) {
                    this.f1999b = parcelable2;
                    return;
                }
                byte[] bArr = this.f2000c;
                this.f1999b = bArr;
                this.f1998a = 3;
                this.f2002e = 0;
                this.f2003f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f2000c, Charset.forName("UTF-16"));
                this.f1999b = str;
                if (this.f1998a == 2 && this.f2007j == null) {
                    this.f2007j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f1999b = this.f2000c;
                return;
        }
    }

    public void h(boolean z10) {
        this.f2006i = this.f2005h.name();
        switch (this.f1998a) {
            case -1:
                if (z10) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f2001d = (Parcelable) this.f1999b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z10) {
                    this.f2001d = (Parcelable) this.f1999b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f1999b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f2000c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f2000c = ((String) this.f1999b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f2000c = (byte[]) this.f1999b;
                return;
            case 4:
            case 6:
                this.f2000c = this.f1999b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    public Icon i() {
        return j(null);
    }

    public Icon j(Context context) {
        return a.e(this, context);
    }

    public String toString() {
        if (this.f1998a == -1) {
            return String.valueOf(this.f1999b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(k(this.f1998a));
        switch (this.f1998a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1999b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1999b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f2007j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(c())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f2002e);
                if (this.f2003f != 0) {
                    sb.append(" off=");
                    sb.append(this.f2003f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1999b);
                break;
        }
        if (this.f2004g != null) {
            sb.append(" tint=");
            sb.append(this.f2004g);
        }
        if (this.f2005h != f1997k) {
            sb.append(" mode=");
            sb.append(this.f2005h);
        }
        sb.append(")");
        return sb.toString();
    }

    IconCompat(int i10) {
        this.f2000c = null;
        this.f2001d = null;
        this.f2002e = 0;
        this.f2003f = 0;
        this.f2004g = null;
        this.f2005h = f1997k;
        this.f2006i = null;
        this.f1998a = i10;
    }
}
