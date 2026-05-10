package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f1921a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IconCompat f1922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final p[] f1923c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final p[] f1924d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1925e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1926f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f1927g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f1928h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1929i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CharSequence f1930j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public PendingIntent f1931k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f1932l;

        public a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i10 != 0 ? IconCompat.b(null, "", i10) : null, charSequence, pendingIntent);
        }

        public PendingIntent a() {
            return this.f1931k;
        }

        public boolean b() {
            return this.f1925e;
        }

        public Bundle c() {
            return this.f1921a;
        }

        public IconCompat d() {
            int i10;
            if (this.f1922b == null && (i10 = this.f1929i) != 0) {
                this.f1922b = IconCompat.b(null, "", i10);
            }
            return this.f1922b;
        }

        public p[] e() {
            return this.f1923c;
        }

        public int f() {
            return this.f1927g;
        }

        public boolean g() {
            return this.f1926f;
        }

        public CharSequence h() {
            return this.f1930j;
        }

        public boolean i() {
            return this.f1932l;
        }

        public boolean j() {
            return this.f1928h;
        }

        public a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false, false);
        }

        a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, p[] pVarArr, p[] pVarArr2, boolean z10, int i10, boolean z11, boolean z12, boolean z13) {
            this.f1926f = true;
            this.f1922b = iconCompat;
            if (iconCompat != null && iconCompat.e() == 2) {
                this.f1929i = iconCompat.c();
            }
            this.f1930j = d.d(charSequence);
            this.f1931k = pendingIntent;
            this.f1921a = bundle == null ? new Bundle() : bundle;
            this.f1923c = pVarArr;
            this.f1924d = pVarArr2;
            this.f1925e = z10;
            this.f1927g = i10;
            this.f1926f = z11;
            this.f1928h = z12;
            this.f1932l = z13;
        }
    }

    public static class b extends e {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CharSequence f1933e;

        @Override // androidx.core.app.h.e
        public void a(Bundle bundle) {
            super.a(bundle);
        }

        @Override // androidx.core.app.h.e
        public void b(g gVar) {
            Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(gVar.a()).setBigContentTitle(this.f1961b).bigText(this.f1933e);
            if (this.f1963d) {
                bigTextStyleBigText.setSummaryText(this.f1962c);
            }
        }

        @Override // androidx.core.app.h.e
        protected String c() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        public b h(CharSequence charSequence) {
            this.f1933e = d.d(charSequence);
            return this;
        }
    }

    public static final class c {
        public static Notification.BubbleMetadata a(c cVar) {
            return null;
        }
    }

    public static abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected d f1960a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        CharSequence f1961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        CharSequence f1962c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1963d = false;

        public void a(Bundle bundle) {
            if (this.f1963d) {
                bundle.putCharSequence("android.summaryText", this.f1962c);
            }
            CharSequence charSequence = this.f1961b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String strC = c();
            if (strC != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", strC);
            }
        }

        public abstract void b(g gVar);

        protected abstract String c();

        public RemoteViews d(g gVar) {
            return null;
        }

        public RemoteViews e(g gVar) {
            return null;
        }

        public RemoteViews f(g gVar) {
            return null;
        }

        public void g(d dVar) {
            if (this.f1960a != dVar) {
                this.f1960a = dVar;
                if (dVar != null) {
                    dVar.p(this);
                }
            }
        }
    }

    public static Bundle a(Notification notification) {
        return notification.extras;
    }

    public static class d {
        boolean A;
        boolean B;
        String C;
        Bundle D;
        int E;
        int F;
        Notification G;
        RemoteViews H;
        RemoteViews I;
        RemoteViews J;
        String K;
        int L;
        String M;
        r.b N;
        long O;
        int P;
        int Q;
        boolean R;
        Notification S;
        boolean T;
        Object U;
        public ArrayList V;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f1934a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList f1935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList f1936c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList f1937d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        CharSequence f1938e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        CharSequence f1939f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        PendingIntent f1940g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        PendingIntent f1941h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        RemoteViews f1942i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        IconCompat f1943j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        CharSequence f1944k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f1945l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f1946m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f1947n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f1948o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        e f1949p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        CharSequence f1950q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        CharSequence f1951r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        CharSequence[] f1952s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f1953t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f1954u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        boolean f1955v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        String f1956w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        boolean f1957x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        String f1958y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        boolean f1959z;

        public d(Context context, String str) {
            this.f1935b = new ArrayList();
            this.f1936c = new ArrayList();
            this.f1937d = new ArrayList();
            this.f1947n = true;
            this.f1959z = false;
            this.E = 0;
            this.F = 0;
            this.L = 0;
            this.P = 0;
            this.Q = 0;
            Notification notification = new Notification();
            this.S = notification;
            this.f1934a = context;
            this.K = str;
            notification.when = System.currentTimeMillis();
            this.S.audioStreamType = -1;
            this.f1946m = 0;
            this.V = new ArrayList();
            this.R = true;
        }

        protected static CharSequence d(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        private void k(int i10, boolean z10) {
            if (z10) {
                Notification notification = this.S;
                notification.flags = i10 | notification.flags;
            } else {
                Notification notification2 = this.S;
                notification2.flags = (~i10) & notification2.flags;
            }
        }

        public d a(int i10, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1935b.add(new a(i10, charSequence, pendingIntent));
            return this;
        }

        public Notification b() {
            return new i(this).c();
        }

        public Bundle c() {
            if (this.D == null) {
                this.D = new Bundle();
            }
            return this.D;
        }

        public d e(boolean z10) {
            k(16, z10);
            return this;
        }

        public d f(String str) {
            this.C = str;
            return this;
        }

        public d g(String str) {
            this.K = str;
            return this;
        }

        public d h(PendingIntent pendingIntent) {
            this.f1940g = pendingIntent;
            return this;
        }

        public d i(CharSequence charSequence) {
            this.f1939f = d(charSequence);
            return this;
        }

        public d j(CharSequence charSequence) {
            this.f1938e = d(charSequence);
            return this;
        }

        public d l(boolean z10) {
            this.f1959z = z10;
            return this;
        }

        public d m(int i10) {
            this.f1946m = i10;
            return this;
        }

        public d n(boolean z10) {
            this.T = z10;
            return this;
        }

        public d o(int i10) {
            this.S.icon = i10;
            return this;
        }

        public d p(e eVar) {
            if (this.f1949p != eVar) {
                this.f1949p = eVar;
                if (eVar != null) {
                    eVar.g(this);
                }
            }
            return this;
        }

        public d q(CharSequence charSequence) {
            this.S.tickerText = d(charSequence);
            return this;
        }

        public d r(long j10) {
            this.S.when = j10;
            return this;
        }

        public d(Context context) {
            this(context, null);
        }
    }
}
