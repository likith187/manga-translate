package com.coloros.translate.screen.widget;

import android.os.IOplusExInputCallBack;
import android.view.InputEvent;
import androidx.annotation.Keep;
import com.coloros.translate.utils.c0;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationTranslationView$newFloatTipExInputCallback$1 extends IOplusExInputCallBack.Default {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ScreenTranslationTranslationView f5958a;

    ScreenTranslationTranslationView$newFloatTipExInputCallback$1(ScreenTranslationTranslationView screenTranslationTranslationView) {
        this.f5958a = screenTranslationTranslationView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ScreenTranslationTranslationView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        v vVar = this$0.f5932h;
        if (vVar != null) {
            vVar.d();
        }
    }

    @Keep
    public void onInputEvent(InputEvent inputEvent) {
        if (inputEvent == null) {
            return;
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "floatViewTip onInputEvent");
        if (this.f5958a.H == null) {
            aVar.d("ScreenTranslationTranslationView", "floatViewTip hide");
            this.f5958a.j0().b(this);
            this.f5958a.f5940p = null;
            final ScreenTranslationTranslationView screenTranslationTranslationView = this.f5958a;
            com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.a2
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationTranslationView$newFloatTipExInputCallback$1.b(screenTranslationTranslationView);
                }
            });
        }
    }
}
