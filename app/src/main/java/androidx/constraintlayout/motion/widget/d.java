package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f1258f = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f1261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f1262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HashMap f1263e;

    public d() {
        int i10 = f1258f;
        this.f1259a = i10;
        this.f1260b = i10;
        this.f1261c = null;
    }

    public abstract void a(HashMap map);

    public abstract d b();

    public d c(d dVar) {
        this.f1259a = dVar.f1259a;
        this.f1260b = dVar.f1260b;
        this.f1261c = dVar.f1261c;
        this.f1262d = dVar.f1262d;
        this.f1263e = dVar.f1263e;
        return this;
    }

    abstract void d(HashSet hashSet);

    abstract void e(Context context, AttributeSet attributeSet);

    boolean f(String str) {
        String str2 = this.f1261c;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    public void g(int i10) {
        this.f1259a = i10;
    }

    public void h(HashMap map) {
    }

    public d i(int i10) {
        this.f1260b = i10;
        return this;
    }

    boolean j(Object obj) {
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(obj.toString());
    }

    float k(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    int l(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }
}
