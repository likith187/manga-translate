package com.slp.library.track;

import android.content.Context;
import android.os.Build;
import com.slp.library.SlpSdk;
import com.slp.library.common.log.Logs;
import com.slp.library.otrack.OTrackWrap;
import com.slp.library.otrack.TrackUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class TrackFactory {
    private static final ITrackApi<?> mBaseTrack = createTrack();
    private static ITrackApi<?> mTrack;

    /* JADX INFO: renamed from: com.slp.library.track.TrackFactory$1 */
    class AnonymousClass1 implements ITrackApi<OTrackWrap> {
        AnonymousClass1() {
        }

        @Override // com.slp.library.track.ITrackApi
        public void add(OTrackWrap oTrackWrap, String str, Object obj) {
            oTrackWrap.add(str, obj);
        }

        @Override // com.slp.library.track.ITrackApi
        public void commit(OTrackWrap oTrackWrap) {
            oTrackWrap.commit();
        }

        @Override // com.slp.library.track.ITrackApi
        public OTrackWrap createTrack(String str) {
            OTrackWrap oTrackWrap = new OTrackWrap();
            oTrackWrap.createTrack(str);
            return oTrackWrap;
        }

        @Override // com.slp.library.track.ITrackApi
        public void push(OTrackWrap oTrackWrap) {
            oTrackWrap.push();
        }

        @Override // com.slp.library.track.ITrackApi
        public void remove(OTrackWrap oTrackWrap, String str) {
            oTrackWrap.remove(str);
        }
    }

    public static void addGlobal(String str, Object obj) {
        TrackWrap.addGlobal(str, obj);
    }

    public static void cleanGlobal() {
        TrackWrap.cleanGlobal();
    }

    private static ITrackApi<OTrackWrap> createTrack() {
        try {
            return new ITrackApi<OTrackWrap>() { // from class: com.slp.library.track.TrackFactory.1
                AnonymousClass1() {
                }

                @Override // com.slp.library.track.ITrackApi
                public void add(OTrackWrap oTrackWrap, String str, Object obj) {
                    oTrackWrap.add(str, obj);
                }

                @Override // com.slp.library.track.ITrackApi
                public void commit(OTrackWrap oTrackWrap) {
                    oTrackWrap.commit();
                }

                @Override // com.slp.library.track.ITrackApi
                public OTrackWrap createTrack(String str) {
                    OTrackWrap oTrackWrap = new OTrackWrap();
                    oTrackWrap.createTrack(str);
                    return oTrackWrap;
                }

                @Override // com.slp.library.track.ITrackApi
                public void push(OTrackWrap oTrackWrap) {
                    oTrackWrap.push();
                }

                @Override // com.slp.library.track.ITrackApi
                public void remove(OTrackWrap oTrackWrap, String str) {
                    oTrackWrap.remove(str);
                }
            };
        } catch (NoClassDefFoundError unused) {
            Logs.ERROR.log("Not impl Slp-OTrack");
            return null;
        }
    }

    public static void initOTrack(Context context) {
        try {
            addGlobal("time", Long.valueOf(System.currentTimeMillis()));
            addGlobal("id", UUID.randomUUID().toString());
            addGlobal("brand", Build.BRAND);
            addGlobal("ak", SlpSdk.getAppKey());
            addGlobal("client", TrackUtils.INSTANCE.getClientId(context));
            TrackUtils.init(context);
        } catch (NoClassDefFoundError unused) {
            Logs.ERROR.log("Not impl Slp-OTrack");
        }
    }

    public static TrackWrap<?> obtain(String str) {
        try {
            ITrackApi<?> iTrackApi = mTrack;
            if (iTrackApi == null) {
                iTrackApi = mBaseTrack;
            }
            return new TrackWrap<>(str, iTrackApi);
        } catch (NoClassDefFoundError unused) {
            return new TrackWrap<>(str, null);
        }
    }

    public static void removeGlobal(String str) {
        TrackWrap.removeGlobal(str);
    }

    public static void setTrackApi(ITrackApi<?> iTrackApi) {
        mTrack = iTrackApi;
    }
}
