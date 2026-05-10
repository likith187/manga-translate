package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
class w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static w f437d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocationManager f439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f440c = new a();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f442b;

        a() {
        }
    }

    w(Context context, LocationManager locationManager) {
        this.f438a = context;
        this.f439b = locationManager;
    }

    static w a(Context context) {
        if (f437d == null) {
            Context applicationContext = context.getApplicationContext();
            f437d = new w(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f437d;
    }

    private Location b() {
        Location locationC = r.e.b(this.f438a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = r.e.b(this.f438a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        return (locationC2 == null || locationC == null) ? locationC2 != null ? locationC2 : locationC : locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    private Location c(String str) {
        try {
            if (this.f439b.isProviderEnabled(str)) {
                return this.f439b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e10) {
            Log.d("TwilightManager", "Failed to get last known location", e10);
            return null;
        }
    }

    private boolean e() {
        return this.f440c.f442b > System.currentTimeMillis();
    }

    private void f(Location location) {
        long j10;
        a aVar = this.f440c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        v vVarB = v.b();
        vVarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        vVarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = vVarB.f436c == 1;
        long j11 = vVarB.f435b;
        long j12 = vVarB.f434a;
        vVarB.a(jCurrentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
        long j13 = vVarB.f435b;
        if (j11 == -1 || j12 == -1) {
            j10 = jCurrentTimeMillis + 43200000;
        } else {
            if (jCurrentTimeMillis > j12) {
                j11 = j13;
            } else if (jCurrentTimeMillis > j11) {
                j11 = j12;
            }
            j10 = j11 + 60000;
        }
        aVar.f441a = z10;
        aVar.f442b = j10;
    }

    boolean d() {
        a aVar = this.f440c;
        if (e()) {
            return aVar.f441a;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.f441a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i10 = Calendar.getInstance().get(11);
        return i10 < 6 || i10 >= 22;
    }
}
