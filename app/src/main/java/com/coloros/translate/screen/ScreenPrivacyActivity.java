package com.coloros.translate.screen;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.coloros.translate.screen.widget.a0;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.theme.COUIThemeOverlay;

/* JADX INFO: loaded from: classes.dex */
public class ScreenPrivacyActivity extends AppCompatActivity {

    class a implements e2.b {
        a() {
        }

        @Override // e2.b
        public void a() {
            c0.i("ScreenPrivacyActivity", "showPrivacyPolicyDialog: doAfterRejected");
            ScreenPrivacyActivity.this.finish();
        }

        @Override // e2.b
        public void b() {
            boolean zC = com.coloros.translate.base.a.INSTANCE.c();
            c0.i("ScreenPrivacyActivity", "showPrivacyPolicyDialog: doAfterGranted:" + zC);
            if (zC) {
                ScreenPrivacyActivity.this.h0();
            } else {
                ScreenPrivacyActivity.this.f0();
            }
        }

        @Override // e2.b
        public void c() {
        }
    }

    class b implements e2.a {
        b() {
        }

        @Override // e2.a
        public void a() {
            c0.i("ScreenPrivacyActivity", "showScreenTranslationFunctionInstruction:doAfterRejected");
            ScreenPrivacyActivity.this.finish();
        }

        @Override // e2.a
        public void b() {
            c0.i("ScreenPrivacyActivity", "showScreenTranslationFunctionInstruction:doAfterGranted");
            ScreenPrivacyActivity.this.f0();
        }

        @Override // e2.a
        public void c() {
            c0.i("ScreenPrivacyActivity", "showScreenTranslationFunctionInstruction:doAfterReturn");
            ScreenPrivacyActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        if (com.coloros.translate.screen.utils.c.a(this)) {
            com.coloros.translate.screen.utils.c.b(this, getIntent().getExtras());
        } else {
            try {
                Intent intent = new Intent(this, (Class<?>) ScreenTranslationService.class);
                if (getIntent().getExtras() != null) {
                    intent.putExtras(getIntent().getExtras());
                }
                intent.setPackage(getPackageName());
                startService(intent);
            } catch (Exception e10) {
                c0.j("ScreenPrivacyActivity", "error on start service: " + e10.getMessage());
            }
        }
        finish();
    }

    public void g0() {
        com.coloros.translate.base.a.INSTANCE.a(this, 1, new a());
    }

    public void h0() {
        com.coloros.translate.base.a.INSTANCE.d(this, new b());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        com.coloros.translate.base.a aVar = com.coloros.translate.base.a.INSTANCE;
        boolean zB = aVar.b();
        boolean zC = aVar.c();
        if (zB) {
            g0();
        } else if (zC) {
            h0();
        } else {
            finish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c0.i("ScreenPrivacyActivity", "ScreenPrivacyActivity onDestroy");
        a0.s(this);
    }
}
