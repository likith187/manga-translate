package x9;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f16472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadMode f16473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class f16474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f16475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f16476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f16477f;

    public o(Method method, Class cls, ThreadMode threadMode, int i10, boolean z10) {
        this.f16472a = method;
        this.f16473b = threadMode;
        this.f16474c = cls;
        this.f16475d = i10;
        this.f16476e = z10;
    }

    private synchronized void a() {
        if (this.f16477f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f16472a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f16472a.getName());
            sb.append('(');
            sb.append(this.f16474c.getName());
            this.f16477f = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        a();
        o oVar = (o) obj;
        oVar.a();
        return this.f16477f.equals(oVar.f16477f);
    }

    public int hashCode() {
        return this.f16472a.hashCode();
    }
}
