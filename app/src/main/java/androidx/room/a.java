package androidx.room;

import android.content.Context;
import androidx.room.h;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import s0.c;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a */
    public final c.InterfaceC0215c f3486a;

    /* JADX INFO: renamed from: b */
    public final Context f3487b;

    /* JADX INFO: renamed from: c */
    public final String f3488c;

    /* JADX INFO: renamed from: d */
    public final h.c f3489d;

    /* JADX INFO: renamed from: e */
    public final List f3490e;

    /* JADX INFO: renamed from: f */
    public final boolean f3491f;

    /* JADX INFO: renamed from: g */
    public final h.b f3492g;

    /* JADX INFO: renamed from: h */
    public final Executor f3493h;

    /* JADX INFO: renamed from: i */
    public final Executor f3494i;

    /* JADX INFO: renamed from: j */
    public final boolean f3495j;

    /* JADX INFO: renamed from: k */
    public final boolean f3496k;

    /* JADX INFO: renamed from: l */
    public final boolean f3497l;

    /* JADX INFO: renamed from: m */
    private final Set f3498m;

    /* JADX INFO: renamed from: n */
    public final String f3499n;

    /* JADX INFO: renamed from: o */
    public final File f3500o;

    public a(Context context, String str, c.InterfaceC0215c interfaceC0215c, h.c cVar, List list, boolean z10, h.b bVar, Executor executor, Executor executor2, boolean z11, boolean z12, boolean z13, Set set, String str2, File file) {
        this.f3486a = interfaceC0215c;
        this.f3487b = context;
        this.f3488c = str;
        this.f3489d = cVar;
        this.f3490e = list;
        this.f3491f = z10;
        this.f3492g = bVar;
        this.f3493h = executor;
        this.f3494i = executor2;
        this.f3495j = z11;
        this.f3496k = z12;
        this.f3497l = z13;
        this.f3498m = set;
        this.f3499n = str2;
        this.f3500o = file;
    }

    public boolean a(int i10, int i11) {
        if ((i10 > i11 && this.f3497l) || !this.f3496k) {
            return false;
        }
        Set set = this.f3498m;
        return set == null || !set.contains(Integer.valueOf(i10));
    }
}
