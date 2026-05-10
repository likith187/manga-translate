package o;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import l.i;
import p.o;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: b */
    private int f14161b;

    /* JADX INFO: renamed from: c */
    private boolean f14162c;

    /* JADX INFO: renamed from: d */
    public final e f14163d;

    /* JADX INFO: renamed from: e */
    public final a f14164e;

    /* JADX INFO: renamed from: f */
    public d f14165f;

    /* JADX INFO: renamed from: i */
    l.i f14168i;

    /* JADX INFO: renamed from: a */
    private HashSet f14160a = null;

    /* JADX INFO: renamed from: g */
    public int f14166g = 0;

    /* JADX INFO: renamed from: h */
    int f14167h = Integer.MIN_VALUE;

    public enum a {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public d(e eVar, a aVar) {
        this.f14163d = eVar;
        this.f14164e = aVar;
    }

    public boolean a(d dVar, int i10) {
        return b(dVar, i10, Integer.MIN_VALUE, false);
    }

    public boolean b(d dVar, int i10, int i11, boolean z10) {
        if (dVar == null) {
            q();
            return true;
        }
        if (!z10 && !p(dVar)) {
            return false;
        }
        this.f14165f = dVar;
        if (dVar.f14160a == null) {
            dVar.f14160a = new HashSet();
        }
        HashSet hashSet = this.f14165f.f14160a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f14166g = i10;
        this.f14167h = i11;
        return true;
    }

    public void c(int i10, ArrayList arrayList, o oVar) {
        HashSet hashSet = this.f14160a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                p.i.a(((d) it.next()).f14163d, i10, arrayList, oVar);
            }
        }
    }

    public HashSet d() {
        return this.f14160a;
    }

    public int e() {
        if (this.f14162c) {
            return this.f14161b;
        }
        return 0;
    }

    public int f() {
        d dVar;
        if (this.f14163d.X() == 8) {
            return 0;
        }
        return (this.f14167h == Integer.MIN_VALUE || (dVar = this.f14165f) == null || dVar.f14163d.X() != 8) ? this.f14166g : this.f14167h;
    }

    public final d g() {
        switch (this.f14164e) {
            case NONE:
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
                return null;
            case LEFT:
                return this.f14163d.S;
            case TOP:
                return this.f14163d.T;
            case RIGHT:
                return this.f14163d.Q;
            case BOTTOM:
                return this.f14163d.R;
            default:
                throw new AssertionError(this.f14164e.name());
        }
    }

    public e h() {
        return this.f14163d;
    }

    public l.i i() {
        return this.f14168i;
    }

    public d j() {
        return this.f14165f;
    }

    public a k() {
        return this.f14164e;
    }

    public boolean l() {
        HashSet hashSet = this.f14160a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((d) it.next()).g().o()) {
                return true;
            }
        }
        return false;
    }

    public boolean m() {
        HashSet hashSet = this.f14160a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean n() {
        return this.f14162c;
    }

    public boolean o() {
        return this.f14165f != null;
    }

    public boolean p(d dVar) {
        if (dVar == null) {
            return false;
        }
        a aVarK = dVar.k();
        a aVar = this.f14164e;
        if (aVarK == aVar) {
            return aVar != a.BASELINE || (dVar.h().b0() && h().b0());
        }
        switch (aVar) {
            case NONE:
            case CENTER_X:
            case CENTER_Y:
                return false;
            case LEFT:
            case RIGHT:
                boolean z10 = aVarK == a.LEFT || aVarK == a.RIGHT;
                if (dVar.h() instanceof h) {
                    return z10 || aVarK == a.CENTER_X;
                }
                return z10;
            case TOP:
            case BOTTOM:
                boolean z11 = aVarK == a.TOP || aVarK == a.BOTTOM;
                if (dVar.h() instanceof h) {
                    return z11 || aVarK == a.CENTER_Y;
                }
                return z11;
            case BASELINE:
                return (aVarK == a.LEFT || aVarK == a.RIGHT) ? false : true;
            case CENTER:
                return (aVarK == a.BASELINE || aVarK == a.CENTER_X || aVarK == a.CENTER_Y) ? false : true;
            default:
                throw new AssertionError(this.f14164e.name());
        }
    }

    public void q() {
        HashSet hashSet;
        d dVar = this.f14165f;
        if (dVar != null && (hashSet = dVar.f14160a) != null) {
            hashSet.remove(this);
            if (this.f14165f.f14160a.size() == 0) {
                this.f14165f.f14160a = null;
            }
        }
        this.f14160a = null;
        this.f14165f = null;
        this.f14166g = 0;
        this.f14167h = Integer.MIN_VALUE;
        this.f14162c = false;
        this.f14161b = 0;
    }

    public void r() {
        this.f14162c = false;
        this.f14161b = 0;
    }

    public void s(l.c cVar) {
        l.i iVar = this.f14168i;
        if (iVar == null) {
            this.f14168i = new l.i(i.a.UNRESTRICTED, null);
        } else {
            iVar.e();
        }
    }

    public void t(int i10) {
        this.f14161b = i10;
        this.f14162c = true;
    }

    public String toString() {
        return this.f14163d.v() + ":" + this.f14164e.toString();
    }

    public void u(int i10) {
        if (o()) {
            this.f14167h = i10;
        }
    }
}
