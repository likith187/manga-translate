package f1;

import com.slp.library.common.log.Logs;
import com.slp.library.track.TrackFactory;
import com.slp.library.track.TrackWrap;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    static {
        TrackFactory.addGlobal("V_Base", "2.4.1240308150827-240308150827");
    }

    public static TrackWrap a(String str) {
        Logs.DEBUG.log("obtain track " + str);
        return TrackFactory.obtain(str);
    }
}
