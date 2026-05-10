package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.appcompat.app.t;
import androidx.core.app.h;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class i implements androidx.core.app.g {

    /* JADX INFO: renamed from: a */
    private final Context f1964a;

    /* JADX INFO: renamed from: b */
    private final Notification.Builder f1965b;

    /* JADX INFO: renamed from: c */
    private final h.d f1966c;

    /* JADX INFO: renamed from: d */
    private RemoteViews f1967d;

    /* JADX INFO: renamed from: e */
    private RemoteViews f1968e;

    /* JADX INFO: renamed from: f */
    private final List f1969f = new ArrayList();

    /* JADX INFO: renamed from: g */
    private final Bundle f1970g = new Bundle();

    /* JADX INFO: renamed from: h */
    private int f1971h;

    /* JADX INFO: renamed from: i */
    private RemoteViews f1972i;

    static class a {
        static Notification.Builder a(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        static Notification.Action.Builder b(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        static Notification.Action d(Notification.Action.Builder builder) {
            return builder.build();
        }

        static Notification.Builder e(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        static Notification.Builder f(Notification.Builder builder, boolean z10) {
            return builder.setGroupSummary(z10);
        }

        static Notification.Builder g(Notification.Builder builder, boolean z10) {
            return builder.setLocalOnly(z10);
        }

        static Notification.Builder h(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    static class b {
        static Notification.Builder a(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        static Notification.Builder b(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        static Notification.Builder c(Notification.Builder builder, int i10) {
            return builder.setColor(i10);
        }

        static Notification.Builder d(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        static Notification.Builder e(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }

        static Notification.Builder f(Notification.Builder builder, int i10) {
            return builder.setVisibility(i10);
        }
    }

    static class c {
        static Notification.Action.Builder a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        static Notification.Builder b(Notification.Builder builder, Icon icon) {
            return builder.setLargeIcon(icon);
        }

        static Notification.Builder c(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }
    }

    static class d {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAllowGeneratedReplies(z10);
        }

        static Notification.Builder b(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        static Notification.Builder c(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        static Notification.Builder d(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }
    }

    static class e {
        static Notification.Builder a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        static Notification.Builder b(Notification.Builder builder, int i10) {
            return builder.setBadgeIconType(i10);
        }

        static Notification.Builder c(Notification.Builder builder, boolean z10) {
            return builder.setColorized(z10);
        }

        static Notification.Builder d(Notification.Builder builder, int i10) {
            return builder.setGroupAlertBehavior(i10);
        }

        static Notification.Builder e(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        static Notification.Builder f(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        static Notification.Builder g(Notification.Builder builder, long j10) {
            return builder.setTimeoutAfter(j10);
        }
    }

    static class f {
        static Notification.Action.Builder a(Notification.Action.Builder builder, int i10) {
            return builder.setSemanticAction(i10);
        }
    }

    static class g {
        static Notification.Builder a(Notification.Builder builder, boolean z10) {
            return builder.setAllowSystemGeneratedContextualActions(z10);
        }

        static Notification.Builder b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        static Notification.Action.Builder c(Notification.Action.Builder builder, boolean z10) {
            return builder.setContextual(z10);
        }

        static Notification.Builder d(Notification.Builder builder, Object obj) {
            return builder.setLocusId((LocusId) obj);
        }
    }

    static class h {
        static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z10) {
            return builder.setAuthenticationRequired(z10);
        }

        static Notification.Builder b(Notification.Builder builder, int i10) {
            return builder.setForegroundServiceBehavior(i10);
        }
    }

    i(h.d dVar) {
        this.f1966c = dVar;
        Context context = dVar.f1934a;
        this.f1964a = context;
        Notification.Builder builderA = e.a(context, dVar.K);
        this.f1965b = builderA;
        Notification notification = dVar.S;
        builderA.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, dVar.f1942i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(dVar.f1938e).setContentText(dVar.f1939f).setContentInfo(dVar.f1944k).setContentIntent(dVar.f1940g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(dVar.f1941h, (notification.flags & 128) != 0).setNumber(dVar.f1945l).setProgress(dVar.f1953t, dVar.f1954u, dVar.f1955v);
        IconCompat iconCompat = dVar.f1943j;
        c.b(builderA, iconCompat == null ? null : iconCompat.j(context));
        builderA.setSubText(dVar.f1950q).setUsesChronometer(dVar.f1948o).setPriority(dVar.f1946m);
        Iterator it = dVar.f1935b.iterator();
        while (it.hasNext()) {
            b((h.a) it.next());
        }
        Bundle bundle = dVar.D;
        if (bundle != null) {
            this.f1970g.putAll(bundle);
        }
        this.f1967d = dVar.H;
        this.f1968e = dVar.I;
        this.f1965b.setShowWhen(dVar.f1947n);
        a.g(this.f1965b, dVar.f1959z);
        a.e(this.f1965b, dVar.f1956w);
        a.h(this.f1965b, dVar.f1958y);
        a.f(this.f1965b, dVar.f1957x);
        this.f1971h = dVar.P;
        b.b(this.f1965b, dVar.C);
        b.c(this.f1965b, dVar.E);
        b.f(this.f1965b, dVar.F);
        b.d(this.f1965b, dVar.G);
        b.e(this.f1965b, notification.sound, notification.audioAttributes);
        ArrayList arrayList = dVar.V;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                b.a(this.f1965b, (String) it2.next());
            }
        }
        this.f1972i = dVar.J;
        if (dVar.f1937d.size() > 0) {
            Bundle bundle2 = dVar.c().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i10 = 0; i10 < dVar.f1937d.size(); i10++) {
                bundle4.putBundle(Integer.toString(i10), j.a((h.a) dVar.f1937d.get(i10)));
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            dVar.c().putBundle("android.car.EXTENSIONS", bundle2);
            this.f1970g.putBundle("android.car.EXTENSIONS", bundle3);
        }
        Object obj = dVar.U;
        if (obj != null) {
            c.c(this.f1965b, obj);
        }
        this.f1965b.setExtras(dVar.D);
        d.e(this.f1965b, dVar.f1952s);
        RemoteViews remoteViews = dVar.H;
        if (remoteViews != null) {
            d.c(this.f1965b, remoteViews);
        }
        RemoteViews remoteViews2 = dVar.I;
        if (remoteViews2 != null) {
            d.b(this.f1965b, remoteViews2);
        }
        RemoteViews remoteViews3 = dVar.J;
        if (remoteViews3 != null) {
            d.d(this.f1965b, remoteViews3);
        }
        e.b(this.f1965b, dVar.L);
        e.e(this.f1965b, dVar.f1951r);
        e.f(this.f1965b, dVar.M);
        e.g(this.f1965b, dVar.O);
        e.d(this.f1965b, dVar.P);
        if (dVar.B) {
            e.c(this.f1965b, dVar.A);
        }
        if (!TextUtils.isEmpty(dVar.K)) {
            this.f1965b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        Iterator it3 = dVar.f1936c.iterator();
        if (it3.hasNext()) {
            t.a(it3.next());
            throw null;
        }
        g.a(this.f1965b, dVar.R);
        g.b(this.f1965b, h.c.a(null));
        r.b bVar = dVar.N;
        if (bVar != null) {
            g.d(this.f1965b, bVar.b());
        }
        int i11 = dVar.Q;
        if (i11 != 0) {
            h.b(this.f1965b, i11);
        }
        if (dVar.T) {
            if (this.f1966c.f1957x) {
                this.f1971h = 2;
            } else {
                this.f1971h = 1;
            }
            this.f1965b.setVibrate(null);
            this.f1965b.setSound(null);
            int i12 = notification.defaults & (-4);
            notification.defaults = i12;
            this.f1965b.setDefaults(i12);
            if (TextUtils.isEmpty(this.f1966c.f1956w)) {
                a.e(this.f1965b, "silent");
            }
            e.d(this.f1965b, this.f1971h);
        }
    }

    private void b(h.a aVar) {
        IconCompat iconCompatD = aVar.d();
        Notification.Action.Builder builderA = c.a(iconCompatD != null ? iconCompatD.i() : null, aVar.h(), aVar.a());
        if (aVar.e() != null) {
            for (RemoteInput remoteInput : p.b(aVar.e())) {
                a.c(builderA, remoteInput);
            }
        }
        Bundle bundle = aVar.c() != null ? new Bundle(aVar.c()) : new Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        d.a(builderA, aVar.b());
        bundle.putInt("android.support.action.semanticAction", aVar.f());
        f.a(builderA, aVar.f());
        g.c(builderA, aVar.j());
        h.a(builderA, aVar.i());
        bundle.putBoolean("android.support.action.showsUserInterface", aVar.g());
        a.b(builderA, bundle);
        a.a(this.f1965b, a.d(builderA));
    }

    @Override // androidx.core.app.g
    public Notification.Builder a() {
        return this.f1965b;
    }

    public Notification c() {
        Bundle bundleA;
        RemoteViews remoteViewsF;
        RemoteViews remoteViewsD;
        h.e eVar = this.f1966c.f1949p;
        if (eVar != null) {
            eVar.b(this);
        }
        RemoteViews remoteViewsE = eVar != null ? eVar.e(this) : null;
        Notification notificationD = d();
        if (remoteViewsE != null) {
            notificationD.contentView = remoteViewsE;
        } else {
            RemoteViews remoteViews = this.f1966c.H;
            if (remoteViews != null) {
                notificationD.contentView = remoteViews;
            }
        }
        if (eVar != null && (remoteViewsD = eVar.d(this)) != null) {
            notificationD.bigContentView = remoteViewsD;
        }
        if (eVar != null && (remoteViewsF = this.f1966c.f1949p.f(this)) != null) {
            notificationD.headsUpContentView = remoteViewsF;
        }
        if (eVar != null && (bundleA = androidx.core.app.h.a(notificationD)) != null) {
            eVar.a(bundleA);
        }
        return notificationD;
    }

    protected Notification d() {
        return this.f1965b.build();
    }
}
