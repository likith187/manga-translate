package com.coloros.translate.ui.setting.privacy;

import android.os.Bundle;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseSettingActivity;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class PrivacyActivity extends BaseSettingActivity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6442b = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.coloros.translate.base.BaseSettingActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting_privacy);
        getSupportFragmentManager().n().q(R.id.privacy_content_view, new PrivacyFragment()).h();
    }
}
