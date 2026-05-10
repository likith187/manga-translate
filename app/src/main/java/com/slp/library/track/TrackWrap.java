package com.slp.library.track;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class TrackWrap<T> {
    private static final HashMap<String, Object> globalObj = new HashMap<>();
    private final HashMap<String, Object> eventObj = new HashMap<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final T f11448t;
    private final ITrackApi<T> track;

    TrackWrap(String str, ITrackApi<T> iTrackApi) {
        this.track = iTrackApi;
        T tCreateTrack = null;
        if (iTrackApi != null && str != null && str.length() != 0) {
            tCreateTrack = iTrackApi.createTrack(str);
        }
        this.f11448t = tCreateTrack;
        if (iTrackApi == null || tCreateTrack == null) {
            Log.e("SLP-Engine", "SlpTrack Not Impl");
        }
    }

    static void addGlobal(String str, Object obj) {
        globalObj.put(str, obj);
    }

    static void cleanGlobal() {
        globalObj.clear();
    }

    static void removeGlobal(String str) {
        globalObj.remove(str);
    }

    public TrackWrap<T> add(String str, Object obj) {
        if (!checkTrack()) {
            return this;
        }
        this.eventObj.put(str, obj);
        return this;
    }

    public synchronized TrackWrap<T> addCount(String str) {
        return addCount("obj_counts", str);
    }

    public TrackWrap<T> addTime(String str) {
        return add(str, Long.valueOf(System.currentTimeMillis()));
    }

    public boolean checkTrack() {
        return (this.track == null || this.f11448t == null) ? false : true;
    }

    public TrackWrap<T> clean() {
        this.eventObj.clear();
        return this;
    }

    public TrackWrap<T> commit() {
        if (!checkTrack()) {
            return this;
        }
        this.track.add(this.f11448t, "global", new JSONObject(globalObj));
        this.track.add(this.f11448t, "event", new JSONObject(this.eventObj));
        this.track.commit(this.f11448t);
        return this;
    }

    public void push() {
        if (checkTrack()) {
            this.track.push(this.f11448t);
        }
    }

    public TrackWrap<T> remove(String str) {
        if (!checkTrack()) {
            return this;
        }
        this.eventObj.remove(str);
        return this;
    }

    public synchronized TrackWrap<T> addCount(String str, String str2) {
        Map map;
        try {
            if (!checkTrack()) {
                return this;
            }
            Object obj = this.eventObj.get(str);
            if (obj instanceof Map) {
                map = (Map) obj;
            } else {
                map = new HashMap();
                this.eventObj.put(str, map);
            }
            Object obj2 = map.get(str2);
            if (obj2 instanceof Integer) {
                map.put(str2, Integer.valueOf(((Integer) obj2).intValue() + 1));
            } else {
                map.put(str2, 1);
            }
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }
}
