package s;

import android.app.Person;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.core.app.n;
import androidx.core.graphics.drawable.IconCompat;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f15471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f15472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Intent[] f15473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ComponentName f15474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    CharSequence f15475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    CharSequence f15476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    CharSequence f15477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    IconCompat f15478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    n[] f15479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Set f15480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    r.b f15481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f15482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f15483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    PersistableBundle f15484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f15485o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f15486p;

    /* JADX INFO: renamed from: s.a$a, reason: collision with other inner class name */
    private static class C0214a {
        static void a(ShortcutInfo.Builder builder, int i10) {
            builder.setExcludedFromSurfaces(i10);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a f15487a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f15488b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Set f15489c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Map f15490d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Uri f15491e;

        public b(Context context, String str) {
            a aVar = new a();
            this.f15487a = aVar;
            aVar.f15471a = context;
            aVar.f15472b = str;
        }

        public a a() {
            if (TextUtils.isEmpty(this.f15487a.f15475e)) {
                throw new IllegalArgumentException("Shortcut must have a non-empty label");
            }
            a aVar = this.f15487a;
            Intent[] intentArr = aVar.f15473c;
            if (intentArr == null || intentArr.length == 0) {
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
            if (this.f15488b) {
                if (aVar.f15481k == null) {
                    aVar.f15481k = new r.b(aVar.f15472b);
                }
                this.f15487a.f15482l = true;
            }
            if (this.f15489c != null) {
                a aVar2 = this.f15487a;
                if (aVar2.f15480j == null) {
                    aVar2.f15480j = new HashSet();
                }
                this.f15487a.f15480j.addAll(this.f15489c);
            }
            if (this.f15490d != null) {
                a aVar3 = this.f15487a;
                if (aVar3.f15484n == null) {
                    aVar3.f15484n = new PersistableBundle();
                }
                for (String str : this.f15490d.keySet()) {
                    Map map = (Map) this.f15490d.get(str);
                    this.f15487a.f15484n.putStringArray(str, (String[]) map.keySet().toArray(new String[0]));
                    for (String str2 : map.keySet()) {
                        List list = (List) map.get(str2);
                        this.f15487a.f15484n.putStringArray(str + "/" + str2, list == null ? new String[0] : (String[]) list.toArray(new String[0]));
                    }
                }
            }
            if (this.f15491e != null) {
                a aVar4 = this.f15487a;
                if (aVar4.f15484n == null) {
                    aVar4.f15484n = new PersistableBundle();
                }
                this.f15487a.f15484n.putString("extraSliceUri", y.a.a(this.f15491e));
            }
            return this.f15487a;
        }

        public b b(IconCompat iconCompat) {
            this.f15487a.f15478h = iconCompat;
            return this;
        }

        public b c(Intent intent) {
            return d(new Intent[]{intent});
        }

        public b d(Intent[] intentArr) {
            this.f15487a.f15473c = intentArr;
            return this;
        }

        public b e(CharSequence charSequence) {
            this.f15487a.f15475e = charSequence;
            return this;
        }
    }

    a() {
    }

    public String a() {
        return this.f15472b;
    }

    public int b() {
        return this.f15483m;
    }

    public boolean c(int i10) {
        return (this.f15486p & i10) != 0;
    }

    public ShortcutInfo d() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.f15471a, this.f15472b).setShortLabel(this.f15475e).setIntents(this.f15473c);
        IconCompat iconCompat = this.f15478h;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.j(this.f15471a));
        }
        if (!TextUtils.isEmpty(this.f15476f)) {
            intents.setLongLabel(this.f15476f);
        }
        if (!TextUtils.isEmpty(this.f15477g)) {
            intents.setDisabledMessage(this.f15477g);
        }
        ComponentName componentName = this.f15474d;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set<String> set = this.f15480j;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.f15483m);
        PersistableBundle persistableBundle = this.f15484n;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        int i10 = Build.VERSION.SDK_INT;
        n[] nVarArr = this.f15479i;
        if (nVarArr != null && nVarArr.length > 0) {
            int length = nVarArr.length;
            Person[] personArr = new Person[length];
            if (length > 0) {
                n nVar = nVarArr[0];
                throw null;
            }
            intents.setPersons(personArr);
        }
        r.b bVar = this.f15481k;
        if (bVar != null) {
            intents.setLocusId(bVar.b());
        }
        intents.setLongLived(this.f15482l);
        if (i10 >= 33) {
            C0214a.a(intents, this.f15486p);
        }
        return intents.build();
    }
}
