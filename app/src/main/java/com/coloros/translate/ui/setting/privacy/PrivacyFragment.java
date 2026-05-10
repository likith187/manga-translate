package com.coloros.translate.ui.setting.privacy;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.BasePreferenceFragment;
import com.coloros.translate.engine.offline.x;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.ui.setting.privacy.PrivacyFragment;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.p;
import com.coloros.translate.widget.f;
import com.coui.appcompat.preference.COUIJumpPreference;
import com.support.preference.R$layout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class PrivacyFragment extends BasePreferenceFragment {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f6443f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f6444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private COUIJumpPreference f6445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j f6446c = k.b(new b());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        b() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$2$lambda$1(Context it, PrivacyFragment this$0, DialogInterface dialogInterface, int i10) {
            r.e(it, "$it");
            r.e(this$0, "this$0");
            c0.f7098a.d("PrivacyFragment", "mCancelProtectionPolicyDialog, cancel protection policy");
            x.o(it).E();
            COUIJumpPreference cOUIJumpPreference = this$0.f6445b;
            if (cOUIJumpPreference != null) {
                Integer num = this$0.f6444a;
                r.b(num);
                cOUIJumpPreference.setLayoutResource(num.intValue());
                cOUIJumpPreference.setEnabled(false);
            }
            this$0.C(it);
            this$0.x(it);
            PrivacyPolicyManager.f5415i.e();
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final f mo8invoke() {
            final Context context = PrivacyFragment.this.getContext();
            if (context == null) {
                return null;
            }
            final PrivacyFragment privacyFragment = PrivacyFragment.this;
            return new f(context, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.setting.privacy.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    PrivacyFragment.b.invoke$lambda$2$lambda$1(context, privacyFragment, dialogInterface, i10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean A(PrivacyFragment this$0, Preference preference) {
        r.e(this$0, "this$0");
        Context context = this$0.getContext();
        if (context == null) {
            return true;
        }
        PrivacyPolicyManager.f5415i.d(context);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B(PrivacyFragment this$0, Preference preference) {
        r.e(this$0, "this$0");
        f fVarY = this$0.y();
        if (fVarY == null) {
            return true;
        }
        fVarY.a();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(Context context) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Intent intent = new Intent("oplus.intent.action.GLOBAL_TRANSLATION");
            intent.setPackage(context.getPackageName());
            intent.putExtra("extra_exit", true);
            objM59constructorimpl = n8.r.m59constructorimpl(context.startService(intent));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.d("PrivacyFragment", "tryExitScreenTranslate:" + thM62exceptionOrNullimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(Context context) {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Context applicationContext = context.getApplicationContext();
            h0 h0Var = null;
            TranslationApplication translationApplication = applicationContext instanceof TranslationApplication ? (TranslationApplication) applicationContext : null;
            if (translationApplication != null) {
                translationApplication.b();
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("PrivacyFragment", "finishCurrentAppActivities failure: " + thM62exceptionOrNullimpl.getMessage());
            FragmentActivity activity = getActivity();
            if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            activity.finish();
        }
    }

    private final f y() {
        return (f) this.f6446c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean z(PrivacyFragment this$0, Preference preference) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Context context = this$0.getContext();
        if (context == null) {
            return true;
        }
        PrivacyPolicyManager.f5415i.c(context);
        return true;
    }

    @Override // com.coloros.translate.base.BasePreferenceFragment, com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment
    public String getTitle() {
        String string = getResources().getString(R.string.privacy);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        return string;
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g
    public void onCreatePreferences(Bundle bundle, String str) {
        super.onCreatePreferences(bundle, str);
        addPreferencesFromResource(R.xml.privacy);
        COUIJumpPreference cOUIJumpPreference = (COUIJumpPreference) findPreference("personal_info_protection_policy");
        COUIJumpPreference cOUIJumpPreference2 = (COUIJumpPreference) findPreference("trans_user_protocol");
        this.f6445b = (COUIJumpPreference) findPreference("cancel_personal_info_protection_policy");
        if (cOUIJumpPreference != null) {
            cOUIJumpPreference.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.privacy.a
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return PrivacyFragment.z(this.f6447a, preference);
                }
            });
        }
        if (cOUIJumpPreference2 != null) {
            cOUIJumpPreference2.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.privacy.b
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return PrivacyFragment.A(this.f6448a, preference);
                }
            });
        }
        if (p.INSTANCE.e()) {
            COUIJumpPreference cOUIJumpPreference3 = this.f6445b;
            if (cOUIJumpPreference3 != null) {
                cOUIJumpPreference3.setVisible(true);
            }
            if (((Boolean) l0.a.g(l0.f7130a, "show_privacy_policy_alert_new", Boolean.TRUE, null, 4, null)).booleanValue()) {
                COUIJumpPreference cOUIJumpPreference4 = this.f6445b;
                if (cOUIJumpPreference4 == null) {
                    return;
                }
                cOUIJumpPreference4.setEnabled(false);
                return;
            }
            COUIJumpPreference cOUIJumpPreference5 = this.f6445b;
            if (cOUIJumpPreference5 != null) {
                this.f6444a = Integer.valueOf(cOUIJumpPreference5.getLayoutResource());
                cOUIJumpPreference5.setLayoutResource(R$layout.coui_preference_red);
                cOUIJumpPreference5.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.privacy.c
                    @Override // androidx.preference.Preference.d
                    public final boolean a(Preference preference) {
                        return PrivacyFragment.B(this.f6449a, preference);
                    }
                });
            }
        }
    }
}
