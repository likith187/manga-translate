package com.coui.component.responsiveui.status;

import android.util.Log;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.g0;
import androidx.lifecycle.l;
import androidx.lifecycle.t;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.coui.component.responsiveui.ResponsiveUILog;
import java.util.function.Consumer;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.g;
import kotlinx.coroutines.o0;
import n8.h0;
import n8.s;
import w8.p;

/* JADX INFO: loaded from: classes.dex */
public final class WindowFeatureUtil {
    public static final WindowFeatureUtil INSTANCE = new WindowFeatureUtil();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f7436a;

    /* JADX INFO: renamed from: com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1, reason: invalid class name */
    @f(c = "com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1", f = "WindowFeatureUtil.kt", l = {47}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p {
        final /* synthetic */ Consumer<WindowFeature> $action;
        final /* synthetic */ ComponentActivity $activity;
        int label;

        /* JADX INFO: renamed from: com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1", f = "WindowFeatureUtil.kt", l = {VibrateUtils.VIBRATE_SOFT_MAX_FREQUENCY}, m = "invokeSuspend")
        static final class C01021 extends l implements p {
            final /* synthetic */ Consumer<WindowFeature> $action;
            final /* synthetic */ ComponentActivity $activity;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01021(ComponentActivity componentActivity, Consumer<WindowFeature> consumer, d dVar) {
                super(2, dVar);
                this.$activity = componentActivity;
                this.$action = consumer;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final d create(Object obj, d dVar) {
                return new C01021(this.$activity, this.$action, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    s.b(obj);
                    final kotlinx.coroutines.flow.b bVarA = WindowInfoTracker.f4154a.d(this.$activity).a(this.$activity);
                    kotlinx.coroutines.flow.b bVar = new kotlinx.coroutines.flow.b() { // from class: com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1

                        /* JADX INFO: renamed from: com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                        public static final class AnonymousClass2<T> implements c {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            final /* synthetic */ c f7439a;

                            /* JADX INFO: renamed from: com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                            @f(c = "com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2", f = "WindowFeatureUtil.kt", l = {223}, m = "emit")
                            public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
                                Object L$0;
                                int label;
                                /* synthetic */ Object result;

                                public AnonymousClass1(d dVar) {
                                    super(dVar);
                                }

                                @Override // kotlin.coroutines.jvm.internal.a
                                public final Object invokeSuspend(Object obj) {
                                    this.result = obj;
                                    this.label |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(c cVar) {
                                this.f7439a = cVar;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.c
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct code enable 'Show inconsistent code' option in preferences
                            */
                            public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.d r8) {
                                /*
                                    r6 = this;
                                    boolean r0 = r8 instanceof com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                    if (r0 == 0) goto L13
                                    r0 = r8
                                    com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1 r0 = (com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                    int r1 = r0.label
                                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                    r3 = r1 & r2
                                    if (r3 == 0) goto L13
                                    int r1 = r1 - r2
                                    r0.label = r1
                                    goto L18
                                L13:
                                    com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1 r0 = new com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1
                                    r0.<init>(r8)
                                L18:
                                    java.lang.Object r8 = r0.result
                                    java.lang.Object r1 = kotlin.coroutines.intrinsics.b.f()
                                    int r2 = r0.label
                                    r3 = 1
                                    if (r2 == 0) goto L31
                                    if (r2 != r3) goto L29
                                    n8.s.b(r8)
                                    goto L65
                                L29:
                                    java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                    java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                    r6.<init>(r7)
                                    throw r6
                                L31:
                                    n8.s.b(r8)
                                    kotlinx.coroutines.flow.c r6 = r6.f7439a
                                    androidx.window.layout.WindowLayoutInfo r7 = (androidx.window.layout.WindowLayoutInfo) r7
                                    java.util.List r7 = r7.a()
                                    java.util.ArrayList r8 = new java.util.ArrayList
                                    r8.<init>()
                                    java.util.Iterator r2 = r7.iterator()
                                L45:
                                    boolean r4 = r2.hasNext()
                                    if (r4 == 0) goto L57
                                    java.lang.Object r4 = r2.next()
                                    boolean r5 = r4 instanceof androidx.window.layout.FoldingFeature
                                    if (r5 == 0) goto L45
                                    r8.add(r4)
                                    goto L45
                                L57:
                                    com.coui.component.responsiveui.status.WindowFeature r2 = new com.coui.component.responsiveui.status.WindowFeature
                                    r2.<init>(r7, r8)
                                    r0.label = r3
                                    java.lang.Object r6 = r6.emit(r2, r0)
                                    if (r6 != r1) goto L65
                                    return r1
                                L65:
                                    n8.h0 r6 = n8.h0.INSTANCE
                                    return r6
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
                            }
                        }

                        @Override // kotlinx.coroutines.flow.b
                        public Object collect(c cVar, d dVar) {
                            Object objCollect = bVarA.collect(new AnonymousClass2(cVar), dVar);
                            return objCollect == b.f() ? objCollect : h0.INSTANCE;
                        }
                    };
                    final Consumer<WindowFeature> consumer = this.$action;
                    c cVar = new c() { // from class: com.coui.component.responsiveui.status.WindowFeatureUtil.trackWindowFeature.1.1.2
                        @Override // kotlinx.coroutines.flow.c
                        public final Object emit(WindowFeature windowFeature, d dVar) {
                            consumer.accept(windowFeature);
                            if (WindowFeatureUtil.f7436a) {
                                Log.d("WindowFeatureUtil", "[trackWindowFeature] windowFeature = " + windowFeature);
                            }
                            return h0.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (bVar.collect(cVar, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    s.b(obj);
                }
                return h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(c0 c0Var, d dVar) {
                return ((C01021) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ComponentActivity componentActivity, Consumer<WindowFeature> consumer, d dVar) {
            super(2, dVar);
            this.$activity = componentActivity;
            this.$action = consumer;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final d create(Object obj, d dVar) {
            return new AnonymousClass1(this.$activity, this.$action, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = b.f();
            int i10 = this.label;
            if (i10 == 0) {
                s.b(obj);
                androidx.lifecycle.l lifecycle = this.$activity.getLifecycle();
                r.d(lifecycle, "activity.lifecycle");
                l.b bVar = l.b.STARTED;
                C01021 c01021 = new C01021(this.$activity, this.$action, null);
                this.label = 1;
                if (g0.a(lifecycle, bVar, c01021, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                s.b(obj);
            }
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(c0 c0Var, d dVar) {
            return ((AnonymousClass1) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7436a = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("WindowFeatureUtil", 3);
    }

    private WindowFeatureUtil() {
    }

    public static final boolean isBookPosture(FoldingFeature foldingFeature) {
        r.e(foldingFeature, "foldingFeature");
        if (f7436a) {
            Log.d("WindowFeatureUtil", "[isBookPosture] state: " + foldingFeature.getState() + ", orientation: " + foldingFeature.a());
        }
        return r.a(foldingFeature.getState(), FoldingFeature.State.f4110d) && r.a(foldingFeature.a(), FoldingFeature.Orientation.f4105c);
    }

    public static final boolean isSupportWindowFeature() {
        try {
            Class<?> cls = Class.forName("com.oplus.content.OplusFeatureConfigManager");
            Object objInvoke = cls.getDeclaredMethod("getInstance", null).invoke(null, null);
            if (objInvoke == null) {
                return false;
            }
            Object objInvoke2 = cls.getDeclaredMethod("hasFeature", String.class).invoke(objInvoke, "oplus.software.display.google_extension_layout");
            r.c(objInvoke2, "null cannot be cast to non-null type kotlin.Boolean");
            if (f7436a) {
                Log.d("WindowFeatureUtil", "[isSupportWindowFeature] " + objInvoke2);
            }
            return ((Boolean) objInvoke2).booleanValue();
        } catch (Exception e10) {
            Log.e("WindowFeatureUtil", "[isSupportWindowFeature] " + e10);
            return false;
        }
    }

    public static final boolean isTableTopPosture(FoldingFeature foldingFeature) {
        r.e(foldingFeature, "foldingFeature");
        if (f7436a) {
            Log.d("WindowFeatureUtil", "[isTableTopPosture] state: " + foldingFeature.getState() + ", orientation: " + foldingFeature.a());
        }
        return r.a(foldingFeature.getState(), FoldingFeature.State.f4110d) && r.a(foldingFeature.a(), FoldingFeature.Orientation.f4106d);
    }

    public final void trackWindowFeature(ComponentActivity activity, Consumer<WindowFeature> action) {
        r.e(activity, "activity");
        r.e(action, "action");
        g.b(t.a(activity), o0.c(), null, new AnonymousClass1(activity, action, null), 2, null);
    }
}
