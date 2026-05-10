package com.coloros.translate.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.coloros.translate.R;
import com.coloros.translate.base.BasePreferenceFragment;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.repository.remote.TtsEngineHandler;
import com.coloros.translate.ui.setting.CustomTTsPreference;
import com.coloros.translate.ui.setting.about.AboutUsActivity;
import com.coloros.translate.ui.setting.privacy.PrivacyActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.p;
import com.coloros.translate.utils.w;
import com.coloros.translate.utils.z0;
import com.coui.appcompat.preference.COUIPreference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.k;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class SettingFragment extends BasePreferenceFragment {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f6419l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CustomTTsPreference f6420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private COUIPreference f6421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CustomMarkPreference f6422c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CustomMarkPreference f6423f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f6426j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f6424h = "female";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n8.j f6425i = k.b(d.INSTANCE);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CustomTTsPreference.b f6427k = new e();

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

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            SettingFragment.this.N();
        }
    }

    public static final class c extends TtsEngineHandler.TtsListener {
        c() {
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            c0.f7098a.d("SettingFragment", "playText tts onStart");
            SettingFragment.this.f6426j = true;
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            c0.f7098a.d("SettingFragment", "playText tts code : " + i10 + " , msg : " + str);
            n.INSTANCE.k0(i10);
            SettingFragment.this.f6426j = false;
            if (i10 == -1000) {
                w.h(R.string.no_network, 0, 2, null);
                return;
            }
            if (i10 == -602) {
                w.h(R.string.network_error, 0, 2, null);
            } else if (i10 != 601) {
                w.h(R.string.network_error, 0, 2, null);
            } else {
                w.h(R.string.network_error, 0, 2, null);
            }
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            c0.a aVar = c0.f7098a;
            aVar.d("SettingFragment", "playText tts onStop");
            if (SettingFragment.this.f6426j) {
                SettingFragment.this.f6426j = false;
            } else {
                aVar.q("SettingFragment", "playText tts not start");
            }
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
        }
    }

    static final class d extends s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().x();
        }
    }

    public static final class e implements CustomTTsPreference.b {
        e() {
        }

        @Override // com.coloros.translate.ui.setting.CustomTTsPreference.b
        public void a() {
            c0.f7098a.i("SettingFragment", "onSpeedChanged and replay text");
            SettingFragment.this.N();
        }
    }

    private final TtsEngineHandler C() {
        return (TtsEngineHandler) this.f6425i.getValue();
    }

    private final void D() {
        this.f6424h = (String) l0.a.g(l0.f7130a, "broadcast_timbre", "female", null, 4, null);
        this.f6421b = (COUIPreference) findPreference("broadcast_timbre");
        CustomMarkPreference customMarkPreference = (CustomMarkPreference) findPreference("timbre_female");
        this.f6423f = customMarkPreference;
        if (customMarkPreference != null) {
            customMarkPreference.setBorderRectRadius(0);
        }
        CustomMarkPreference customMarkPreference2 = this.f6423f;
        if (customMarkPreference2 != null) {
            customMarkPreference2.setOnPreferenceChangeListener(new Preference.c() { // from class: com.coloros.translate.ui.setting.g
                @Override // androidx.preference.Preference.c
                public final boolean a(Preference preference, Object obj) {
                    return SettingFragment.G(this.f6438a, preference, obj);
                }
            });
        }
        CustomMarkPreference customMarkPreference3 = this.f6423f;
        if (customMarkPreference3 != null) {
            customMarkPreference3.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.h
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return SettingFragment.H(this.f6439a, preference);
                }
            });
        }
        CustomMarkPreference customMarkPreference4 = (CustomMarkPreference) findPreference("timbre_male");
        this.f6422c = customMarkPreference4;
        if (customMarkPreference4 != null) {
            customMarkPreference4.setBorderRectRadius(0);
        }
        CustomMarkPreference customMarkPreference5 = this.f6422c;
        if (customMarkPreference5 != null) {
            customMarkPreference5.setOnPreferenceChangeListener(new Preference.c() { // from class: com.coloros.translate.ui.setting.i
                @Override // androidx.preference.Preference.c
                public final boolean a(Preference preference, Object obj) {
                    return SettingFragment.E(this.f6440a, preference, obj);
                }
            });
        }
        CustomMarkPreference customMarkPreference6 = this.f6422c;
        if (customMarkPreference6 != null) {
            customMarkPreference6.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.j
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return SettingFragment.F(this.f6441a, preference);
                }
            });
        }
        CustomMarkPreference customMarkPreference7 = this.f6423f;
        if (customMarkPreference7 != null) {
            customMarkPreference7.setChecked(r.a(this.f6424h, "female"));
        }
        CustomMarkPreference customMarkPreference8 = this.f6422c;
        if (customMarkPreference8 != null) {
            customMarkPreference8.setChecked(r.a(this.f6424h, "male"));
        }
        P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean E(SettingFragment this$0, Preference preference, Object obj) {
        r.e(this$0, "this$0");
        if (!r.a(obj, Boolean.TRUE)) {
            if (this$0.f6426j) {
                this$0.O();
                return true;
            }
            this$0.N();
            return true;
        }
        if (!r.a(this$0.f6424h, "female")) {
            return true;
        }
        this$0.f6424h = "male";
        CustomMarkPreference customMarkPreference = this$0.f6423f;
        if (customMarkPreference != null) {
            customMarkPreference.setChecked(false);
        }
        this$0.P();
        this$0.N();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F(SettingFragment this$0, Preference preference) {
        r.e(this$0, "this$0");
        CustomMarkPreference customMarkPreference = this$0.f6422c;
        if (customMarkPreference != null) {
            customMarkPreference.setChecked(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean G(SettingFragment this$0, Preference preference, Object obj) {
        r.e(this$0, "this$0");
        if (!r.a(obj, Boolean.TRUE)) {
            if (this$0.f6426j) {
                this$0.O();
                return true;
            }
            this$0.N();
            return true;
        }
        if (!r.a(this$0.f6424h, "male")) {
            return true;
        }
        this$0.f6424h = "female";
        CustomMarkPreference customMarkPreference = this$0.f6422c;
        if (customMarkPreference != null) {
            customMarkPreference.setChecked(false);
        }
        this$0.P();
        this$0.N();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H(SettingFragment this$0, Preference preference) {
        r.e(this$0, "this$0");
        CustomMarkPreference customMarkPreference = this$0.f6423f;
        if (customMarkPreference != null) {
            customMarkPreference.setChecked(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean I(SettingFragment this$0, Preference preference) {
        Object objM59constructorimpl;
        r.e(this$0, "this$0");
        n.INSTANCE.r();
        if (!j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) && com.coloros.translate.repository.d.f5439a.b()) {
            try {
                r.a aVar = n8.r.Companion;
                Intent intent = new Intent("oplus.intent.action.TRANSLATE_DOWNLOADS");
                intent.putExtra("extra_from_package", "com.coloros.translate");
                this$0.startActivity(intent);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("SettingFragment", "startActivity error : " + thM62exceptionOrNullimpl.getMessage());
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean J(SettingFragment this$0, Preference preference) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            this$0.startActivity(new Intent(this$0.requireContext(), (Class<?>) AboutUsActivity.class));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K(SettingFragment this$0, Preference preference) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        kotlin.jvm.internal.r.d(contextRequireContext, "requireContext(...)");
        com.coloros.translate.utils.r.a(contextRequireContext);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean L(SettingFragment this$0, Preference preference) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Context contextRequireContext = this$0.requireContext();
        kotlin.jvm.internal.r.d(contextRequireContext, "requireContext(...)");
        com.coloros.translate.utils.r.b(contextRequireContext);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean M(SettingFragment this$0, Preference preference) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            this$0.startActivity(new Intent(this$0.requireContext(), (Class<?>) PrivacyActivity.class));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        c0.f7098a.d("SettingFragment", "play text : " + this.f6426j);
        if (this.f6426j) {
            O();
            z0.c(100L, new b());
        } else if (com.coloros.translate.repository.d.f5439a.b()) {
            C().a("Thank you for using Translate! Enjoy the robust translation services we offer.", new TtsParams(this.f6424h, com.coloros.translate.b.ENGLISH.getLanguageCode(), 0, 0, 0, null, 0, false, 252, null), new c(), new Bundle());
        }
    }

    private final void O() {
        if (this.f6426j) {
            C().g();
        }
    }

    private final void P() {
        COUIPreference cOUIPreference = this.f6421b;
        if (cOUIPreference == null) {
            return;
        }
        cOUIPreference.setSummary(kotlin.jvm.internal.r.a(this.f6424h, "male") ? getResources().getString(R.string.broadcast_timbre_tip_new) : "");
    }

    @Override // com.coloros.translate.base.BasePreferenceFragment, com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment
    public String getTitle() {
        String string = getResources().getString(R.string.ai_btn);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        return string;
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g
    public void onCreatePreferences(Bundle bundle, String str) {
        addPreferencesFromResource(R.xml.setting_main);
        c0.f7098a.d("SettingFragment", "onCreatePreferences");
        COUIPreference cOUIPreference = (COUIPreference) findPreference("version_code");
        if (cOUIPreference != null) {
            cOUIPreference.setSummary("16.0.26");
        }
        COUIPreference cOUIPreference2 = (COUIPreference) findPreference("abouts_us");
        COUIPreference cOUIPreference3 = (COUIPreference) findPreference("collect_personal_info_list");
        COUIPreference cOUIPreference4 = (COUIPreference) findPreference("third_party_info_list");
        COUIPreference cOUIPreference5 = (COUIPreference) findPreference("download_offline_package");
        COUIPreference cOUIPreference6 = (COUIPreference) findPreference("privacy");
        CustomTTsPreference customTTsPreference = (CustomTTsPreference) findPreference("play_speed");
        this.f6420a = customTTsPreference;
        if (customTTsPreference != null) {
            customTTsPreference.k(this.f6427k);
        }
        D();
        if (cOUIPreference5 != null) {
            cOUIPreference5.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.b
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return SettingFragment.I(this.f6433a, preference);
                }
            });
        }
        if (cOUIPreference2 != null) {
            cOUIPreference2.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.c
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return SettingFragment.J(this.f6434a, preference);
                }
            });
        }
        if (p.INSTANCE.e()) {
            if (cOUIPreference3 != null) {
                cOUIPreference3.setVisible(true);
            }
            if (cOUIPreference4 != null) {
                cOUIPreference4.setVisible(true);
            }
            if (cOUIPreference3 != null) {
                cOUIPreference3.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.d
                    @Override // androidx.preference.Preference.d
                    public final boolean a(Preference preference) {
                        return SettingFragment.K(this.f6435a, preference);
                    }
                });
            }
            if (cOUIPreference4 != null) {
                cOUIPreference4.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.e
                    @Override // androidx.preference.Preference.d
                    public final boolean a(Preference preference) {
                        return SettingFragment.L(this.f6436a, preference);
                    }
                });
            }
        }
        if (cOUIPreference6 != null) {
            cOUIPreference6.setOnPreferenceClickListener(new Preference.d() { // from class: com.coloros.translate.ui.setting.f
                @Override // androidx.preference.Preference.d
                public final boolean a(Preference preference) {
                    return SettingFragment.M(this.f6437a, preference);
                }
            });
        }
    }

    @Override // com.coui.appcompat.preference.COUIPreferenceWithAppbarFragment, com.coui.appcompat.preference.COUIPreferenceFragment, androidx.preference.g
    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerViewOnCreateRecyclerView = super.onCreateRecyclerView(layoutInflater, viewGroup, bundle);
        recyclerViewOnCreateRecyclerView.setItemAnimator(null);
        return recyclerViewOnCreateRecyclerView;
    }

    @Override // androidx.preference.g, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        c0.f7098a.i("SettingFragment", "onStop save chosenTimbre and stopTTS");
        l0.a.l(l0.f7130a, "broadcast_timbre", this.f6424h, false, null, 12, null);
        O();
    }
}
