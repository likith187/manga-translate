package com.oplus.vfxsdk.common;

import com.oplus.vfxsdk.common.Animator;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public interface q {

    public static final class a {
        public static HashMap a(q qVar) {
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                return animator.h();
            }
            return null;
        }

        public static HashMap b(q qVar) {
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                return animator.k();
            }
            return null;
        }

        public static PassParams[] c(q qVar, String stateKey) {
            kotlin.jvm.internal.r.e(stateKey, "stateKey");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                return animator.o(stateKey);
            }
            return null;
        }

        public static void d(q qVar, String stateKey, boolean z10, w8.a aVar) {
            kotlin.jvm.internal.r.e(stateKey, "stateKey");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.y(stateKey, z10, aVar);
            }
        }

        public static void e(q qVar, String key) {
            kotlin.jvm.internal.r.e(key, "key");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.A(key);
            }
        }

        public static void f(q qVar, String key) {
            kotlin.jvm.internal.r.e(key, "key");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.B(key);
            }
        }

        public static void g(q qVar, String key, float f10) {
            kotlin.jvm.internal.r.e(key, "key");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.C(key, f10);
            }
        }

        public static void h(q qVar, String key) {
            kotlin.jvm.internal.r.e(key, "key");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.E(key);
            }
        }

        public static void i(q qVar, String key) {
            kotlin.jvm.internal.r.e(key, "key");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.F(key);
            }
        }

        public static void j(q qVar, String key, float f10) {
            kotlin.jvm.internal.r.e(key, "key");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.G(key, f10);
            }
        }

        public static void k(q qVar, String key, w8.a cb) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(cb, "cb");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.H(key, cb);
            }
        }

        public static void l(q qVar, String key, Animator.a mode) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(mode, "mode");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.I(key, mode);
            }
        }

        public static void m(q qVar, String key, w8.l cb) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(cb, "cb");
            com.oplus.vfxsdk.common.a animator = qVar.getAnimator();
            if (animator != null) {
                animator.J(key, cb);
            }
        }
    }

    com.oplus.vfxsdk.common.a getAnimator();
}
