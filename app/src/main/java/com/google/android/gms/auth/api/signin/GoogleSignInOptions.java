package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GoogleSignInOptions extends AbstractSafeParcelable implements a.d, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final GoogleSignInOptions f7517o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final GoogleSignInOptions f7518p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Scope f7519q = new Scope("profile");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final Scope f7520r = new Scope("email");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Scope f7521s = new Scope("openid");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Scope f7522t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Scope f7523u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Comparator f7524v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f7526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Account f7527c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7528f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f7529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f7530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7532k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ArrayList f7533l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f7534m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Map f7535n;

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f7537b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f7538c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f7539d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7540e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Account f7541f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f7542g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f7544i;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Set f7536a = new HashSet();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Map f7543h = new HashMap();

        public GoogleSignInOptions a() {
            if (this.f7536a.contains(GoogleSignInOptions.f7523u)) {
                Set set = this.f7536a;
                Scope scope = GoogleSignInOptions.f7522t;
                if (set.contains(scope)) {
                    this.f7536a.remove(scope);
                }
            }
            if (this.f7539d && (this.f7541f == null || !this.f7536a.isEmpty())) {
                b();
            }
            return new GoogleSignInOptions(new ArrayList(this.f7536a), this.f7541f, this.f7539d, this.f7537b, this.f7538c, this.f7540e, this.f7542g, this.f7543h, this.f7544i);
        }

        public a b() {
            this.f7536a.add(GoogleSignInOptions.f7521s);
            return this;
        }

        public a c() {
            this.f7536a.add(GoogleSignInOptions.f7519q);
            return this;
        }

        public a d(Scope scope, Scope... scopeArr) {
            this.f7536a.add(scope);
            this.f7536a.addAll(Arrays.asList(scopeArr));
            return this;
        }
    }

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        f7522t = scope;
        f7523u = new Scope("https://www.googleapis.com/auth/games");
        a aVar = new a();
        aVar.b();
        aVar.c();
        f7517o = aVar.a();
        a aVar2 = new a();
        aVar2.d(scope, new Scope[0]);
        f7518p = aVar2.a();
        CREATOR = new c();
        f7524v = new b();
    }

    private static Map L0(List list) {
        HashMap map = new HashMap();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
                map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.D0()), googleSignInOptionsExtensionParcelable);
            }
        }
        return map;
    }

    public Account D0() {
        return this.f7527c;
    }

    public ArrayList E0() {
        return this.f7533l;
    }

    public String F0() {
        return this.f7534m;
    }

    public ArrayList G0() {
        return new ArrayList(this.f7526b);
    }

    public String H0() {
        return this.f7531j;
    }

    public boolean I0() {
        return this.f7530i;
    }

    public boolean J0() {
        return this.f7528f;
    }

    public boolean K0() {
        return this.f7529h;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0052 A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r1 = r3.f7533l     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.isEmpty()     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            java.util.ArrayList r1 = r4.f7533l     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.isEmpty()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L18
            goto L90
        L18:
            java.util.ArrayList r1 = r3.f7526b     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.G0()     // Catch: java.lang.ClassCastException -> L90
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.util.ArrayList r1 = r3.f7526b     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.G0()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L35
            goto L90
        L35:
            android.accounts.Account r1 = r3.f7527c     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.D0()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L90
            goto L4a
        L40:
            android.accounts.Account r2 = r4.D0()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
        L4a:
            java.lang.String r1 = r3.f7531j     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L5d
            java.lang.String r1 = r4.H0()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            goto L6a
        L5d:
            java.lang.String r1 = r3.f7531j     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r2 = r4.H0()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L6a
            goto L90
        L6a:
            boolean r1 = r3.f7530i     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.I0()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f7528f     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.J0()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f7529h     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.K0()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.lang.String r3 = r3.f7534m     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r4 = r4.F0()     // Catch: java.lang.ClassCastException -> L90
            boolean r3 = android.text.TextUtils.equals(r3, r4)     // Catch: java.lang.ClassCastException -> L90
            if (r3 == 0) goto L90
            r3 = 1
            return r3
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f7526b;
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(((Scope) arrayList2.get(i10)).D0());
        }
        Collections.sort(arrayList);
        k3.a aVar = new k3.a();
        aVar.a(arrayList);
        aVar.a(this.f7527c);
        aVar.a(this.f7531j);
        aVar.c(this.f7530i);
        aVar.c(this.f7528f);
        aVar.c(this.f7529h);
        aVar.a(this.f7534m);
        return aVar.b();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f7525a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.q(parcel, 2, G0(), false);
        n3.b.l(parcel, 3, D0(), i10, false);
        n3.b.c(parcel, 4, J0());
        n3.b.c(parcel, 5, K0());
        n3.b.c(parcel, 6, I0());
        n3.b.m(parcel, 7, H0(), false);
        n3.b.m(parcel, 8, this.f7532k, false);
        n3.b.q(parcel, 9, E0(), false);
        n3.b.m(parcel, 10, F0(), false);
        n3.b.b(parcel, iA);
    }

    GoogleSignInOptions(int i10, ArrayList arrayList, Account account, boolean z10, boolean z11, boolean z12, String str, String str2, ArrayList arrayList2, String str3) {
        this(i10, arrayList, account, z10, z11, z12, str, str2, L0(arrayList2), str3);
    }

    private GoogleSignInOptions(int i10, ArrayList arrayList, Account account, boolean z10, boolean z11, boolean z12, String str, String str2, Map map, String str3) {
        this.f7525a = i10;
        this.f7526b = arrayList;
        this.f7527c = account;
        this.f7528f = z10;
        this.f7529h = z11;
        this.f7530i = z12;
        this.f7531j = str;
        this.f7532k = str2;
        this.f7533l = new ArrayList(map.values());
        this.f7535n = map;
        this.f7534m = str3;
    }
}
