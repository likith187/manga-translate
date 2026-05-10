package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a */
    private Context f2982a;

    /* JADX INFO: renamed from: c */
    private SharedPreferences f2984c;

    /* JADX INFO: renamed from: d */
    private SharedPreferences.Editor f2985d;

    /* JADX INFO: renamed from: e */
    private boolean f2986e;

    /* JADX INFO: renamed from: f */
    private String f2987f;

    /* JADX INFO: renamed from: g */
    private int f2988g;

    /* JADX INFO: renamed from: i */
    private PreferenceScreen f2990i;

    /* JADX INFO: renamed from: j */
    private c f2991j;

    /* JADX INFO: renamed from: k */
    private a f2992k;

    /* JADX INFO: renamed from: l */
    private b f2993l;

    /* JADX INFO: renamed from: b */
    private long f2983b = 0;

    /* JADX INFO: renamed from: h */
    private int f2989h = 0;

    public interface a {
        void onDisplayPreferenceDialog(Preference preference);
    }

    public interface b {
        void onNavigateToScreen(PreferenceScreen preferenceScreen);
    }

    public interface c {
        boolean onPreferenceTreeClick(Preference preference);
    }

    public static abstract class d {
    }

    public j(Context context) {
        this.f2982a = context;
        q(b(context));
    }

    private static String b(Context context) {
        return context.getPackageName() + "_preferences";
    }

    private void l(boolean z10) {
        SharedPreferences.Editor editor;
        if (!z10 && (editor = this.f2985d) != null) {
            editor.apply();
        }
        this.f2986e = z10;
    }

    public Preference a(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f2990i;
        if (preferenceScreen == null) {
            return null;
        }
        return preferenceScreen.findPreference(charSequence);
    }

    SharedPreferences.Editor c() {
        if (!this.f2986e) {
            return j().edit();
        }
        if (this.f2985d == null) {
            this.f2985d = j().edit();
        }
        return this.f2985d;
    }

    long d() {
        long j10;
        synchronized (this) {
            j10 = this.f2983b;
            this.f2983b = 1 + j10;
        }
        return j10;
    }

    public b e() {
        return this.f2993l;
    }

    public c f() {
        return this.f2991j;
    }

    public d g() {
        return null;
    }

    public e h() {
        return null;
    }

    public PreferenceScreen i() {
        return this.f2990i;
    }

    public SharedPreferences j() {
        h();
        if (this.f2984c == null) {
            this.f2984c = (this.f2989h != 1 ? this.f2982a : r.a.b(this.f2982a)).getSharedPreferences(this.f2987f, this.f2988g);
        }
        return this.f2984c;
    }

    public PreferenceScreen k(Context context, int i10, PreferenceScreen preferenceScreen) {
        l(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new i(context, this).d(i10, preferenceScreen);
        preferenceScreen2.onAttachedToHierarchy(this);
        l(false);
        return preferenceScreen2;
    }

    public void m(a aVar) {
        this.f2992k = aVar;
    }

    public void n(b bVar) {
        this.f2993l = bVar;
    }

    public void o(c cVar) {
        this.f2991j = cVar;
    }

    public boolean p(PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2 = this.f2990i;
        if (preferenceScreen == preferenceScreen2) {
            return false;
        }
        if (preferenceScreen2 != null) {
            preferenceScreen2.onDetached();
        }
        this.f2990i = preferenceScreen;
        return true;
    }

    public void q(String str) {
        this.f2987f = str;
        this.f2984c = null;
    }

    boolean r() {
        return !this.f2986e;
    }

    public void s(Preference preference) {
        a aVar = this.f2992k;
        if (aVar != null) {
            aVar.onDisplayPreferenceDialog(preference);
        }
    }
}
