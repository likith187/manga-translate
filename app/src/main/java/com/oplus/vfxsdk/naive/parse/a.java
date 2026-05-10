package com.oplus.vfxsdk.naive.parse;

import android.util.Log;
import com.oplus.vfxsdk.common.Animator;
import java.util.HashMap;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a */
    private final String f11379a = "VFX:COEAnimator";

    /* JADX INFO: renamed from: b */
    private HashMap f11380b = new HashMap();

    public final Animator a(String name) {
        r.e(name, "name");
        return (Animator) this.f11380b.get(name);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:506)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:509)
        */
    public void b(java.util.concurrent.CopyOnWriteArrayList r22, java.util.HashMap r23, com.oplus.vfxsdk.common.k r24, d8.b r25) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.vfxsdk.naive.parse.a.b(java.util.concurrent.CopyOnWriteArrayList, java.util.HashMap, com.oplus.vfxsdk.common.k, d8.b):void");
    }

    public final void c(String key, Animator animator) {
        r.e(key, "key");
        r.e(animator, "animator");
        Log.i(this.f11379a, "putAnim:" + key);
        this.f11380b.put(key, animator);
    }
}
