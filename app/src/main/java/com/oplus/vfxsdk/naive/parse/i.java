package com.oplus.vfxsdk.naive.parse;

import com.oplus.vfxsdk.common.Animator;
import com.oplus.vfxsdk.naive.coe.engine.BaseRenderer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements d8.b {

    /* JADX INFO: renamed from: a */
    private final HashMap f11397a;

    /* JADX INFO: renamed from: b */
    private final Map f11398b;

    public i(CopyOnWriteArrayList layers, HashMap playMap, Map notifiers) {
        r.e(layers, "layers");
        r.e(playMap, "playMap");
        r.e(notifiers, "notifiers");
        this.f11397a = playMap;
        this.f11398b = notifiers;
        Iterator it = layers.iterator();
        while (it.hasNext()) {
            HashMap<String, Animator> animators = ((BaseRenderer) it.next()).getAnimators();
            if (animators != null) {
                for (Map.Entry<String, Animator> entry : animators.entrySet()) {
                    this.f11397a.put(Integer.valueOf(entry.getValue().getData().getId()), entry.getValue());
                }
            }
        }
    }

    @Override // d8.b
    public d8.c a(int i10) {
        return (d8.c) this.f11397a.get(Integer.valueOf(i10));
    }

    @Override // d8.b
    public void b(String key, String str) {
        r.e(key, "key");
        List list = (List) this.f11398b.get(key);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((l) it.next()).invoke(str == null ? "" : str);
            }
        }
    }
}
