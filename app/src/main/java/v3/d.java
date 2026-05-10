package v3;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a */
    public static final a.g f15935a;

    /* JADX INFO: renamed from: b */
    public static final a.g f15936b;

    /* JADX INFO: renamed from: c */
    public static final a.AbstractC0103a f15937c;

    /* JADX INFO: renamed from: d */
    static final a.AbstractC0103a f15938d;

    /* JADX INFO: renamed from: e */
    public static final Scope f15939e;

    /* JADX INFO: renamed from: f */
    public static final Scope f15940f;

    /* JADX INFO: renamed from: g */
    public static final com.google.android.gms.common.api.a f15941g;

    /* JADX INFO: renamed from: h */
    public static final com.google.android.gms.common.api.a f15942h;

    static {
        a.g gVar = new a.g();
        f15935a = gVar;
        a.g gVar2 = new a.g();
        f15936b = gVar2;
        b bVar = new b();
        f15937c = bVar;
        c cVar = new c();
        f15938d = cVar;
        f15939e = new Scope("profile");
        f15940f = new Scope("email");
        f15941g = new com.google.android.gms.common.api.a("SignIn.API", bVar, gVar);
        f15942h = new com.google.android.gms.common.api.a("SignIn.INTERNAL_API", cVar, gVar2);
    }
}
