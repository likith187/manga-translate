package com.coloros.translate.base;

import android.R;
import android.content.Intent;
import android.os.Bundle;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.q;
import com.coloros.translate.engine.offline.a0;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.repository.d;
import com.coloros.translate.ui.MainActivity;
import com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity;
import com.coloros.translate.ui.dialoguetranslation.FaceToFaceTranslateActivity;
import com.coloros.translate.ui.simultaneous.SimultaneousMainActivity;
import com.coloros.translate.ui.texttranslation.TextTranslationActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.o0;
import com.coloros.translate.utils.z;
import com.coloros.translate.utils.z0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasePrivateActivity<T extends q> extends BaseActivity<T> {

    /* JADX INFO: renamed from: s */
    public static final a f4791s = new a(null);

    /* JADX INFO: renamed from: o */
    private final n8.j f4792o = n8.k.b(e.INSTANCE);

    /* JADX INFO: renamed from: p */
    private boolean f4793p;

    /* JADX INFO: renamed from: q */
    private boolean f4794q;

    /* JADX INFO: renamed from: r */
    private BasePrivateActivity f4795r;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements e2.a {
        b() {
        }

        @Override // e2.a
        public void a() {
            BasePrivateActivity.this.finish();
        }

        @Override // e2.a
        public void b() {
        }

        @Override // e2.a
        public void c() {
            BasePrivateActivity.this.finish();
        }
    }

    public static final class c implements e2.b {
        c() {
        }

        @Override // e2.b
        public void a() {
            BasePrivateActivity.this.finish();
        }

        @Override // e2.b
        public void b() {
            c0.f7098a.d("BasePrivateActivity", "doAfterGranted");
            BasePrivateActivity basePrivateActivity = BasePrivateActivity.this;
            basePrivateActivity.F0(basePrivateActivity.getIntent());
            BasePrivateActivity.this.A0();
            f1.f7117a.a(TranslationApplication.f4754b.a(), "event_start_translate_app", (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
        }

        @Override // e2.b
        public void c() {
            BasePrivateActivity.this.getWindow().getDecorView().findViewById(R.id.content).setVisibility(4);
        }
    }

    static final class d extends s implements w8.a {
        final /* synthetic */ BasePrivateActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(BasePrivateActivity<T> basePrivateActivity) {
            super(0);
            this.this$0 = basePrivateActivity;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            d.a aVar = com.coloros.translate.repository.d.f5439a;
            if (!aVar.e().C()) {
                aVar.e().F();
            }
            BasePrivateActivity<T> basePrivateActivity = this.this$0;
            if ((basePrivateActivity instanceof MainActivity) || (basePrivateActivity instanceof TextTranslationActivity)) {
                a0.INSTANCE.f();
                new d2.c(this.this$0).f();
            }
        }
    }

    static final class e extends s implements w8.a {
        public static final e INSTANCE = new e();

        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final PrivacyPolicyManager mo8invoke() {
            return new PrivacyPolicyManager();
        }
    }

    private final void D0() {
        c0.f7098a.d("BasePrivateActivity", "checkAndShowDialogueSimultaneousFunctionInstruction");
        BasePrivateActivity basePrivateActivity = this.f4795r;
        BasePrivateActivity basePrivateActivity2 = null;
        if (basePrivateActivity == null) {
            r.r("activity");
            basePrivateActivity = null;
        }
        if (!(basePrivateActivity instanceof DialogTranslationActivity)) {
            BasePrivateActivity basePrivateActivity3 = this.f4795r;
            if (basePrivateActivity3 == null) {
                r.r("activity");
                basePrivateActivity3 = null;
            }
            if (!(basePrivateActivity3 instanceof SimultaneousMainActivity)) {
                BasePrivateActivity basePrivateActivity4 = this.f4795r;
                if (basePrivateActivity4 == null) {
                    r.r("activity");
                    basePrivateActivity4 = null;
                }
                if (!(basePrivateActivity4 instanceof FaceToFaceTranslateActivity)) {
                    return;
                }
            }
        }
        PrivacyPolicyManager privacyPolicyManagerG0 = G0();
        BasePrivateActivity basePrivateActivity5 = this.f4795r;
        if (basePrivateActivity5 == null) {
            r.r("activity");
        } else {
            basePrivateActivity2 = basePrivateActivity5;
        }
        privacyPolicyManagerG0.E(this, !(basePrivateActivity2 instanceof SimultaneousMainActivity), new b());
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void I0() {
        /*
            r3 = this;
            android.content.Intent r0 = r3.getIntent()
            r1 = 0
            if (r0 == 0) goto Lc
            java.lang.String r0 = r0.getAction()
            goto Ld
        Lc:
            r0 = r1
        Ld:
            java.lang.String r2 = "coloros.intent.action.SIMULTANEOUS_TRANS_SHORTCUT"
            boolean r0 = kotlin.jvm.internal.r.a(r0, r2)
            if (r0 != 0) goto L3e
            android.content.Intent r0 = r3.getIntent()
            if (r0 == 0) goto L20
            java.lang.String r0 = r0.getAction()
            goto L21
        L20:
            r0 = r1
        L21:
            java.lang.String r2 = "coloros.intent.action.DIALOGUE_TRANSLATION_SHORTCUT"
            boolean r0 = kotlin.jvm.internal.r.a(r0, r2)
            if (r0 != 0) goto L3e
            android.content.Intent r0 = r3.getIntent()
            if (r0 == 0) goto L33
            java.lang.String r1 = r0.getAction()
        L33:
            java.lang.String r0 = "coloros.intent.action.TEXT_TRANS_SHORTCUT"
            boolean r0 = kotlin.jvm.internal.r.a(r1, r0)
            if (r0 == 0) goto L3c
            goto L3e
        L3c:
            r0 = 0
            goto L3f
        L3e:
            r0 = 1
        L3f:
            r3.f4793p = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.base.BasePrivateActivity.I0():void");
    }

    public final void E0() {
        if (PrivacyPolicyManager.f5415i.a()) {
            G0().K(this, new c(), H0());
        } else {
            F0(getIntent());
        }
    }

    public void F0(Intent intent) {
        getWindow().getDecorView().findViewById(R.id.content).setVisibility(0);
        c0.f7098a.d("BasePrivateActivity", "dispatchIntentActions :" + (intent != null ? intent.getAction() : null));
        z0.d(0L, new d(this), 1, null);
    }

    protected final PrivacyPolicyManager G0() {
        return (PrivacyPolicyManager) this.f4792o.getValue();
    }

    protected int H0() {
        return 0;
    }

    public final boolean J0() {
        return this.f4794q;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (!this.f4793p || PrivacyPolicyManager.f5415i.a()) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.putExtra("fromSecondPage", true);
        String action = getIntent().getAction();
        if (action == null) {
            action = "";
        }
        intent.putExtra("fromSecondAction", action);
        startActivity(intent);
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c0.f7098a.d("BasePrivateActivity", "onCreate");
        this.f4795r = this;
        setRequestedOrientation((o0.e() || z.g(null, 1, null)) ? -1 : 5);
        I0();
        E0();
        D0();
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        G0().D();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        r.e(intent, "intent");
        super.onNewIntent(intent);
        c0.a aVar = c0.f7098a;
        aVar.d("BasePrivateActivity", "onNewIntent");
        this.f4795r = this;
        setIntent(intent);
        I0();
        aVar.d("BasePrivateActivity", "onNewIntent:" + intent.getAction());
        E0();
        D0();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        this.f4794q = false;
        c0.f7098a.d("BasePrivateActivity", "onRestart false");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.f4794q = true;
        c0.f7098a.d("BasePrivateActivity", "onStop true");
    }
}
