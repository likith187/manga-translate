package com.coloros.translate.ui.setting.about;

import android.content.Context;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.R$string;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.m0;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseActivity;
import com.coloros.translate.base.q;
import com.coloros.translate.ui.setting.about.OpenSourceStatementActivity;
import com.coloros.translate.utils.i1;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.google.android.material.appbar.AppBarLayout;
import com.support.appcompat.R$drawable;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.io.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class OpenSourceStatementActivity extends BaseActivity<q> {

    /* JADX INFO: renamed from: o */
    public static final a f6432o = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String F0() throws IOException {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer = new StringBuffer("");
        InputStream inputStreamOpenRawResource = getResources().openRawResource(R.raw.notice);
        try {
            inputStreamReader = new InputStreamReader(inputStreamOpenRawResource, "gbk");
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
            } finally {
            }
        } finally {
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                h0 h0Var = h0.INSTANCE;
                c.a(inputStreamReader, null);
                c.a(inputStreamOpenRawResource, null);
                String string = stringBuffer.toString();
                r.d(string, "toString(...)");
                return string;
            }
            stringBuffer.append(line);
            stringBuffer.append("\n");
        }
    }

    public static final void G0(OpenSourceStatementActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    public static final void H0(AppBarLayout appBarLayout, OpenSourceStatementActivity this$0, ScrollView scrollView) {
        r.e(this$0, "this$0");
        scrollView.setPadding(0, appBarLayout.getMeasuredHeight() + this$0.getResources().getDimensionPixelOffset(R.dimen.dp_6), 0, 0);
        scrollView.setClipToPadding(false);
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return q.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_setting_open_source_statement;
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        COUIToolbar cOUIToolbar = (COUIToolbar) findViewById(R.id.toolbar);
        final AppBarLayout appBarLayout = (AppBarLayout) findViewById(R.id.app_bar_layout);
        final ScrollView scrollView = (ScrollView) findViewById(R.id.open_scroll);
        TextView textView = (TextView) findViewById(R.id.ep_open_source_content);
        if (cOUIToolbar != null) {
            cOUIToolbar.setNavigationIcon(R$drawable.coui_back_arrow);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setNavigationContentDescription(R$string.abc_action_bar_up_description);
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: n2.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OpenSourceStatementActivity.G0(this.f14046a, view);
                }
            });
        }
        if (cOUIToolbar != null) {
            cOUIToolbar.setTitle(getString(R.string.open_source_code_licenses));
        }
        setSupportActionBar(cOUIToolbar);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        m0.x0(scrollView, true);
        View statusBarView = getStatusBarView();
        appBarLayout.addView(statusBarView, 0, statusBarView.getLayoutParams());
        appBarLayout.post(new Runnable() { // from class: n2.c
            @Override // java.lang.Runnable
            public final void run() {
                OpenSourceStatementActivity.H0(appBarLayout, this, scrollView);
            }
        });
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) findViewById(R.id.coordinator);
        if (coordinatorLayout != null) {
            int paddingLeft = coordinatorLayout.getPaddingLeft();
            int paddingTop = coordinatorLayout.getPaddingTop();
            int paddingRight = coordinatorLayout.getPaddingRight();
            i1.a aVar = i1.f7126a;
            Context context = coordinatorLayout.getContext();
            r.d(context, "getContext(...)");
            coordinatorLayout.setPadding(paddingLeft, paddingTop, paddingRight, aVar.b(context));
        }
        textView.setText(F0());
    }

    @Override // com.coloros.translate.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        r.e(item, "item");
        if (item.getItemId() != 16908332) {
            return super.onOptionsItemSelected(item);
        }
        finish();
        return true;
    }
}
