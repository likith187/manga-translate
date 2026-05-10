package t9;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d0 {
    public static final byte[] a(String str) {
        kotlin.jvm.internal.r.e(str, "<this>");
        byte[] bytes = str.getBytes(kotlin.text.d.f13110a);
        kotlin.jvm.internal.r.d(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final String b(byte[] bArr) {
        kotlin.jvm.internal.r.e(bArr, "<this>");
        return new String(bArr, kotlin.text.d.f13110a);
    }
}
