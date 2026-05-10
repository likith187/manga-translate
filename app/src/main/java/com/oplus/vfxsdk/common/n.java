package com.oplus.vfxsdk.common;

import android.content.Context;
import android.util.Log;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11283a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f11284b = new ConcurrentHashMap();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d8.d a(Context context, Object coe, Object render, Uniform uniform) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(coe, "coe");
            kotlin.jvm.internal.r.e(render, "render");
            kotlin.jvm.internal.r.e(uniform, "uniform");
            String mediaType = uniform.getMediaType();
            if (n.f11284b.containsKey(mediaType)) {
                Class cls = (Class) n.f11284b.get(mediaType);
                Class cls2 = cls == null ? null : cls;
                if (cls2 == null) {
                    return null;
                }
                try {
                    Object objNewInstance = cls2.getDeclaredConstructor(null).newInstance(null);
                    kotlin.jvm.internal.r.c(objNewInstance, "null cannot be cast to non-null type com.oplus.vfxsdk.common.api.IPlugin<*, K of com.oplus.vfxsdk.common.COEPlugin.Companion.create, V of com.oplus.vfxsdk.common.COEPlugin.Companion.create>");
                    androidx.appcompat.app.t.a(objNewInstance);
                    throw null;
                } catch (Exception e10) {
                    Log.e("TAG", "create plugin error", new RuntimeException("Failed to instantiate plugin for " + mediaType + "," + cls, e10));
                }
            }
            return null;
        }

        private a() {
        }
    }
}
