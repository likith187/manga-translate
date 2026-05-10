package com.coloros.translate.ui.setting;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.coloros.translate.R;
import com.coloros.translate.base.BasePrivateActivity;
import com.coloros.translate.base.q;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.i1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class SettingActivity extends BasePrivateActivity<q> {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final a f6417u = new a(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private FrameLayout f6418t;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void L0() {
        FrameLayout frameLayout = this.f6418t;
        if (frameLayout == null) {
            r.r("containerView");
            frameLayout = null;
        }
        m0.y0(frameLayout, new a0() { // from class: com.coloros.translate.ui.setting.a
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return SettingActivity.M0(view, a1Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a1 M0(View view, a1 a1Var) {
        int i10 = a1Var.f(a1.m.d()).f15810d;
        c0.f7098a.d("SettingActivity", "setupWindowInsets navigationBarHeight=" + i10);
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
        return a1Var;
    }

    private final void N0() {
        FrameLayout frameLayout = this.f6418t;
        FrameLayout frameLayout2 = null;
        if (frameLayout == null) {
            r.r("containerView");
            frameLayout = null;
        }
        FrameLayout frameLayout3 = this.f6418t;
        if (frameLayout3 == null) {
            r.r("containerView");
            frameLayout3 = null;
        }
        int paddingLeft = frameLayout3.getPaddingLeft();
        FrameLayout frameLayout4 = this.f6418t;
        if (frameLayout4 == null) {
            r.r("containerView");
            frameLayout4 = null;
        }
        int paddingTop = frameLayout4.getPaddingTop();
        FrameLayout frameLayout5 = this.f6418t;
        if (frameLayout5 == null) {
            r.r("containerView");
            frameLayout5 = null;
        }
        frameLayout.setPadding(paddingLeft, paddingTop, frameLayout5.getPaddingRight(), i1.f7126a.b(this));
        FrameLayout frameLayout6 = this.f6418t;
        if (frameLayout6 == null) {
            r.r("containerView");
        } else {
            frameLayout2 = frameLayout6;
        }
        frameLayout2.requestLayout();
    }

    @Override // com.coloros.translate.base.BasePrivateActivity
    protected int H0() {
        return 3;
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return q.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_setting_main;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        c0.f7098a.d("SettingActivity", "onConfigurationChanged updateContainerView");
        N0();
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getSupportFragmentManager().n().q(R.id.fragment_container, new SettingFragment()).h();
        View viewFindViewById = findViewById(R.id.fragment_container);
        r.d(viewFindViewById, "findViewById(...)");
        this.f6418t = (FrameLayout) viewFindViewById;
        L0();
        N0();
    }
}
