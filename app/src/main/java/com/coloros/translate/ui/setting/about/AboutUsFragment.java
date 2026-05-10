package com.coloros.translate.ui.setting.about;

import android.content.Intent;
import android.os.Bundle;
import androidx.preference.Preference;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.BasePreferenceFragment;
import com.coloros.translate.base.R$drawable;
import com.coloros.translate.ui.setting.about.AboutUsFragment;
import com.coloros.translate.utils.n0;
import com.coui.appcompat.aboutpage.COUIAppInfoPreference;
import com.coui.appcompat.preference.COUIJumpPreference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AboutUsFragment extends BasePreferenceFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f6431a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r(AboutUsFragment this$0, Preference preference) {
        r.e(this$0, "this$0");
        this$0.startActivity(new Intent(this$0.requireContext(), (Class<?>) OpenSourceStatementActivity.class));
        return true;
    }

    @Override // com.coloros.translate.base.BasePreferenceFragment, com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment
    public String getTitle() {
        String string = getResources().getString(R.string.about_translation);
        r.d(string, "getString(...)");
        return string;
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g
    public void onCreatePreferences(Bundle bundle, String str) {
        super.onCreatePreferences(bundle, str);
        addPreferencesFromResource(R.xml.about_us);
        COUIAppInfoPreference cOUIAppInfoPreference = (COUIAppInfoPreference) findPreference("app_info");
        if (cOUIAppInfoPreference != null) {
            cOUIAppInfoPreference.setAppIcon(r.a.e(TranslationApplication.f4754b.a(), R$drawable.ic_app_launcher));
            cOUIAppInfoPreference.setAppName(n0.b(R.string.app_name_new));
            cOUIAppInfoPreference.setAppVersion(n0.b(R.string.version) + " 16.0.26");
            cOUIAppInfoPreference.setShowDivider(false);
        }
        COUIJumpPreference cOUIJumpPreference = (COUIJumpPreference) findPreference("open_source");
        if (cOUIJumpPreference != null) {
            cOUIJumpPreference.setOnPreferenceClickListener(new Preference.d() { // from class: n2.a
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return AboutUsFragment.r(this.f14045a, preference);
                }
            });
        }
    }
}
