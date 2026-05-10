package d1;

import com.slp.library.common.log.Logs;
import com.slp.library.track.TrackWrap;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackWrap f11495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11496b;

    public b(String str) {
        this.f11496b = str;
        this.f11495a = f1.a.a("Event_" + str);
    }

    public TrackWrap a() {
        return f1.a.a("Event_" + this.f11496b);
    }

    public void b(y0.a aVar, y0.a aVar2) {
        Logs.DEBUG.log(getClass().getSimpleName() + " STATE_" + aVar2);
        this.f11495a.addTime("Engine_" + aVar2);
        if (aVar2 == y0.a.STATE_STOP) {
            this.f11495a.commit().clean();
        }
    }
}
