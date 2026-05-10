package com.coloros.translate.screen.widget;

import android.os.IOplusExInputCallBack;
import android.view.InputEvent;
import android.view.MotionEvent;
import androidx.annotation.Keep;
import com.coloros.translate.screen.widget.ScreenTranslationTranslationView;
import kotlinx.coroutines.f1;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationTranslationView$newFullExInputCallback$1 extends IOplusExInputCallBack.Default {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private kotlinx.coroutines.f1 f5961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScreenTranslationTranslationView.b f5962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ ScreenTranslationTranslationView f5963d;

    static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ InputEvent $event;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(InputEvent inputEvent, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$event = inputEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationTranslationView$newFullExInputCallback$1.this.new a(this.$event, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.k0.a(100L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            ScreenTranslationTranslationView$newFullExInputCallback$1.this.f((MotionEvent) this.$event);
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class b extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ InputEvent $event;
        int label;
        final /* synthetic */ ScreenTranslationTranslationView this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ScreenTranslationTranslationView screenTranslationTranslationView, InputEvent inputEvent, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.this$1 = screenTranslationTranslationView;
            this.$event = inputEvent;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return ScreenTranslationTranslationView$newFullExInputCallback$1.this.new b(this.this$1, this.$event, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.f1 f1Var = ScreenTranslationTranslationView$newFullExInputCallback$1.this.f5961b;
                if (f1Var != null) {
                    this.label = 1;
                    if (f1Var.G(this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            if (this.this$1.f5935k.c()) {
                kotlin.jvm.internal.z zVar = new kotlin.jvm.internal.z();
                ScreenTranslationTranslationView.b bVar = ScreenTranslationTranslationView$newFullExInputCallback$1.this.f5962c;
                if (bVar != null && bVar.b() > 2 && bVar.a() == 0) {
                    zVar.element = true;
                }
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onInputEvent： ACTION_UP:" + zVar.element);
                if (!zVar.element) {
                    ScreenTranslationTranslationView$newFullExInputCallback$1.this.h((MotionEvent) this.$event);
                }
            } else {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onInputEvent： ACTION_UP");
                ScreenTranslationTranslationView$newFullExInputCallback$1.this.h((MotionEvent) this.$event);
            }
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((b) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    ScreenTranslationTranslationView$newFullExInputCallback$1(ScreenTranslationTranslationView screenTranslationTranslationView) {
        this.f5963d = screenTranslationTranslationView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(MotionEvent motionEvent) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "processDown:" + this.f5960a);
        if (!this.f5963d.f5944t || this.f5960a) {
            return;
        }
        this.f5963d.f5949y = true;
        final ScreenTranslationTranslationView screenTranslationTranslationView = this.f5963d;
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.b2
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView$newFullExInputCallback$1.g(screenTranslationTranslationView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ScreenTranslationTranslationView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.f5936l.g();
        ScreenTranslationScanHolderView.o(this$0.f5930f, false, 1, null);
        this$0.f5935k.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(MotionEvent motionEvent) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "processUpAndCancel:" + this.f5963d.B + "," + this.f5963d.f5944t);
        this.f5963d.f5949y = false;
        if (this.f5963d.f5944t && this.f5963d.f5939o == com.coloros.translate.screen.translate.business.l.FULL && !this.f5960a) {
            if (this.f5963d.B) {
                this.f5963d.T0(1200L);
            } else {
                this.f5963d.T0(500L);
            }
        }
        if (this.f5963d.f5944t && this.f5963d.f5939o == com.coloros.translate.screen.translate.business.l.FULL && !this.f5963d.m0().isShown()) {
            this.f5963d.m0().D1(true, true);
        }
    }

    @Keep
    public void onInputEvent(InputEvent event) {
        kotlin.jvm.internal.r.e(event, "event");
        if (event instanceof MotionEvent) {
            MotionEvent motionEvent = (MotionEvent) event;
            if (motionEvent.getAction() != 0 && motionEvent.getActionMasked() != 5) {
                if (motionEvent.getAction() == 1 && motionEvent.getPointerCount() == 1) {
                    kotlinx.coroutines.g.b(kotlinx.coroutines.y0.INSTANCE, kotlinx.coroutines.o0.c(), null, new b(this.f5963d, event, null), 2, null);
                    return;
                }
                return;
            }
            this.f5962c = new ScreenTranslationTranslationView.b(0, motionEvent.getPointerCount());
            if (!this.f5963d.f5935k.c()) {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onInputEvent： processDown");
                this.f5960a = this.f5963d.m0().Z1(motionEvent.getRawX(), motionEvent.getRawY());
                f(motionEvent);
                return;
            }
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onInputEvent：last event " + this.f5962c);
            if (motionEvent.getPointerCount() == 1) {
                this.f5960a = this.f5963d.m0().Z1(motionEvent.getRawX(), motionEvent.getRawY());
                this.f5961b = kotlinx.coroutines.g.b(kotlinx.coroutines.y0.INSTANCE, kotlinx.coroutines.o0.c(), null, new a(event, null), 2, null);
            } else if (motionEvent.getPointerCount() > 2) {
                kotlinx.coroutines.f1 f1Var = this.f5961b;
                if (f1Var != null) {
                    f1.a.a(f1Var, null, 1, null);
                }
                this.f5961b = null;
            }
        }
    }
}
