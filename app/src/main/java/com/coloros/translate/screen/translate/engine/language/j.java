package com.coloros.translate.screen.translate.engine.language;

import android.content.Context;
import android.util.ArrayMap;
import com.coloros.translate.observer.e;
import com.coloros.translate.screen.translate.engine.translate.TranslateManager;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.dcsTrackingPoint.DcsTrackingPoint;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.q;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class j implements e.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f5577i = new b(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final n8.j f5578j = n8.k.b(a.INSTANCE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f5579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayMap f5580b = new ArrayMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.coloros.translate.screen.translate.engine.language.a f5581c = com.coloros.translate.screen.translate.engine.language.a.ENGLISH;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.coloros.translate.screen.translate.engine.language.a f5582d = com.coloros.translate.screen.translate.engine.language.a.CHINESE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n8.j f5583e = n8.k.b(f.INSTANCE);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f5584f = com.coloros.translate.base.a.INSTANCE.f();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayList f5585g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n8.j f5586h = n8.k.b(d.INSTANCE);

    static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final j mo8invoke() {
            return new j();
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            return (j) j.f5578j.getValue();
        }

        private b() {
        }
    }

    public static final class c implements com.coloros.translate.screen.translate.engine.language.f {
        c() {
        }

        @Override // com.coloros.translate.screen.translate.engine.language.f
        public void a() {
            c0.f7098a.e("ScreenTranslation.LanguageManager", "load config onError");
        }

        @Override // com.coloros.translate.screen.translate.engine.language.f
        public void onSuccess(String str) {
            c0.f7098a.d("ScreenTranslation.LanguageManager", "load config onSuccess");
            j.this.N(k.INSTANCE.a(str));
        }
    }

    static final class d extends s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ConcurrentHashMap<String, com.coloros.translate.screen.translate.engine.language.a> mo8invoke() {
            return new ConcurrentHashMap<>();
        }
    }

    public static final class e implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return q8.a.a(Integer.valueOf(((com.coloros.translate.screen.translate.engine.language.a) obj).getSortIndex()), Integer.valueOf(((com.coloros.translate.screen.translate.engine.language.a) obj2).getSortIndex()));
        }
    }

    static final class f extends s implements w8.a {
        public static final f INSTANCE = new f();

        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final String mo8invoke() {
            return "screen_language_set";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(j this$0) {
        r.e(this$0, "this$0");
        new com.coloros.translate.screen.translate.engine.language.c().b(this$0.f5584f);
        this$0.D();
        O(this$0, null, 1, null);
        com.coloros.translate.observer.e eVar = com.coloros.translate.observer.e.INSTANCE;
        if (eVar.k()) {
            eVar.l(this$0);
        } else {
            this$0.u();
        }
    }

    private final void D() {
        w().clear();
        for (com.coloros.translate.screen.translate.engine.language.a aVar : com.coloros.translate.screen.translate.engine.language.a.getEntries()) {
            w().put(aVar.getLanguageCode(), aVar);
        }
    }

    private final boolean E(com.coloros.translate.screen.translate.engine.language.a aVar, com.coloros.translate.screen.translate.engine.language.a aVar2) {
        return m().contains(aVar) && o(aVar).contains(aVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(j this$0) {
        r.e(this$0, "this$0");
        this$0.u();
    }

    private final void J() {
        this.f5579a = false;
        this.f5580b.clear();
    }

    private final void K() {
        com.coloros.translate.screen.utils.e.d(this.f5584f, y(), this.f5581c.getLanguageCode() + "," + this.f5582d.getLanguageCode());
    }

    private final void L() {
        com.coloros.translate.screen.translate.engine.language.a aVarQ;
        q qVarX = x();
        com.coloros.translate.screen.translate.engine.language.a aVar = (com.coloros.translate.screen.translate.engine.language.a) qVarX.getFirst();
        com.coloros.translate.screen.translate.engine.language.a aVar2 = (com.coloros.translate.screen.translate.engine.language.a) qVarX.getSecond();
        if (aVar != null && aVar2 != null && E(aVar, aVar2)) {
            this.f5581c = aVar;
            this.f5582d = aVar2;
            return;
        }
        List listM = m();
        com.coloros.translate.screen.translate.engine.language.a aVar3 = com.coloros.translate.screen.translate.engine.language.a.AUTO;
        if (!listM.contains(aVar3)) {
            aVar3 = com.coloros.translate.screen.translate.engine.language.a.ENGLISH;
        }
        this.f5581c = aVar3;
        if (com.coloros.translate.screen.utils.d.a(this.f5584f)) {
            aVarQ = q();
            c0.f7098a.i("ScreenTranslation.LanguageManager", "currentToSystemLanguage:" + aVarQ);
            if (aVarQ == null) {
                aVarQ = com.coloros.translate.screen.translate.engine.language.a.ENGLISH;
            }
        } else {
            aVarQ = com.coloros.translate.screen.translate.engine.language.a.CHINESE;
        }
        this.f5582d = aVarQ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(List list) {
        J();
        ArrayList arrayList = new ArrayList();
        if (com.coloros.translate.screen.utils.d.a(this.f5584f)) {
            h(this.f5580b);
            arrayList.addAll(s());
        } else {
            i(this.f5580b);
            arrayList.addAll(r());
        }
        k(arrayList, list);
        L();
        t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.language.i
            @Override // java.lang.Runnable
            public final void run() {
                j.P(this.f5576a);
            }
        });
    }

    static /* synthetic */ void O(j jVar, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = null;
        }
        jVar.N(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(j this$0) {
        r.e(this$0, "this$0");
        this$0.f5579a = true;
        Iterator it = this$0.f5585g.iterator();
        while (it.hasNext()) {
            ((com.coloros.translate.screen.translate.engine.language.e) it.next()).a();
        }
    }

    private final void R(ArrayList arrayList) {
        if (arrayList.size() > 1) {
            o.u(arrayList, new e());
        }
    }

    private final void h(ArrayMap arrayMap) {
        com.coloros.translate.screen.translate.engine.language.a aVarQ = q();
        if (aVarQ == null) {
            arrayMap.put(o.b(com.coloros.translate.screen.translate.engine.language.a.AUTO.getLanguageCode()), o.b(com.coloros.translate.screen.translate.engine.language.a.ENGLISH.getLanguageCode()));
        } else {
            arrayMap.put(o.b(com.coloros.translate.screen.translate.engine.language.a.AUTO.getLanguageCode()), o.b(aVarQ.getLanguageCode()));
        }
    }

    private final void i(ArrayMap arrayMap) {
        arrayMap.put(o.b(com.coloros.translate.screen.translate.engine.language.a.AUTO.getLanguageCode()), o.b(com.coloros.translate.screen.translate.engine.language.a.CHINESE.getLanguageCode()));
    }

    private final void k(List list, List list2) {
        ArrayList<String> arrayList = new ArrayList();
        if (list2 == null || list2.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((com.coloros.translate.screen.translate.engine.language.a) it.next()).getLanguageCode());
            }
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                String languageCode = ((com.coloros.translate.screen.translate.engine.language.a) it2.next()).getLanguageCode();
                if (list2.contains(languageCode)) {
                    arrayList.add(languageCode);
                }
            }
        }
        for (String str : arrayList) {
            ArrayList arrayList2 = new ArrayList();
            for (String str2 : arrayList) {
                if (!r.a(str, str2)) {
                    arrayList2.add(str2);
                }
            }
            if (!arrayList2.isEmpty()) {
                this.f5580b.put(o.b(str), arrayList2);
            }
        }
        this.f5580b.put(o.b(com.coloros.translate.screen.translate.engine.language.a.AUTO.getLanguageCode()), arrayList);
    }

    public static /* synthetic */ List p(j jVar, com.coloros.translate.screen.translate.engine.language.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = null;
        }
        return jVar.o(aVar);
    }

    private final com.coloros.translate.screen.translate.engine.language.a q() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        List listS = s();
        Object obj = null;
        if (r.a(language, "fil")) {
            language = com.coloros.translate.screen.translate.engine.language.a.FILIPINO.getLanguageCode();
        } else if (r.a(language, "zh")) {
            String string = locale.toString();
            r.d(string, "toString(...)");
            if (kotlin.text.r.K(string, "Hant", false, 2, null)) {
                language = com.coloros.translate.screen.translate.engine.language.a.CHINESE_TW.getLanguageCode();
            }
        }
        c0.f7098a.d("ScreenTranslation.LanguageManager", "getCurrentToSystemLanguage:" + locale.getLanguage() + "," + ((Object) language));
        Iterator it = listS.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (r.a(((com.coloros.translate.screen.translate.engine.language.a) next).getLanguageCode(), language)) {
                obj = next;
                break;
            }
        }
        return (com.coloros.translate.screen.translate.engine.language.a) obj;
    }

    private final List r() {
        ArrayList arrayList = new ArrayList();
        o.w(arrayList, com.coloros.translate.screen.translate.engine.language.a.getEntries().toArray(new com.coloros.translate.screen.translate.engine.language.a[0]));
        arrayList.remove(com.coloros.translate.screen.translate.engine.language.a.AUTO);
        arrayList.remove(com.coloros.translate.screen.translate.engine.language.a.BENGALI);
        arrayList.remove(com.coloros.translate.screen.translate.engine.language.a.TURKISH);
        arrayList.remove(com.coloros.translate.screen.translate.engine.language.a.POLISH);
        return arrayList;
    }

    private final List s() {
        ArrayList arrayList = new ArrayList();
        o.w(arrayList, com.coloros.translate.screen.translate.engine.language.a.getEntries().toArray(new com.coloros.translate.screen.translate.engine.language.a[0]));
        arrayList.remove(com.coloros.translate.screen.translate.engine.language.a.AUTO);
        return arrayList;
    }

    private final void u() {
        c0.f7098a.d("ScreenTranslation.LanguageManager", DcsTrackingPoint.Method.getImgTransConfig);
        TranslateManager.Companion.getINSTANCE().getImgTransConfig(new c());
    }

    private final Map v() {
        return this.f5580b;
    }

    private final ConcurrentHashMap w() {
        return (ConcurrentHashMap) this.f5586h.getValue();
    }

    private final q x() {
        Object obj;
        Object obj2;
        List listU0 = kotlin.text.r.u0((String) com.coloros.translate.screen.utils.e.b(this.f5584f, y(), ""), new String[]{","}, false, 0, 6, null);
        if (listU0.size() > 1) {
            obj = w().get(listU0.get(0));
            obj2 = w().get(listU0.get(1));
        } else {
            obj = null;
            obj2 = null;
        }
        return new q(obj, obj2);
    }

    private final String y() {
        return (String) this.f5583e.getValue();
    }

    public final boolean A() {
        return this.f5579a;
    }

    public final void B() {
        t.i(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.language.g
            @Override // java.lang.Runnable
            public final void run() {
                j.C(this.f5574a);
            }
        });
    }

    public final void F() {
        K();
        Iterator it = this.f5585g.iterator();
        while (it.hasNext()) {
            ((com.coloros.translate.screen.translate.engine.language.e) it.next()).b();
        }
    }

    public final void H(com.coloros.translate.screen.translate.engine.language.e languageListener) {
        r.e(languageListener, "languageListener");
        if (this.f5585g.contains(languageListener)) {
            return;
        }
        if (this.f5579a) {
            c0.f7098a.d("ScreenTranslation.LanguageManager", "language has loaded");
            languageListener.a();
        }
        this.f5585g.add(languageListener);
    }

    public final void I() {
        try {
            r.a aVar = n8.r.Companion;
            this.f5585g.clear();
            w().clear();
            com.coloros.translate.observer.e.INSTANCE.n(this);
            n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
    }

    public final void M(com.coloros.translate.screen.translate.engine.language.a fromLanguage) {
        kotlin.jvm.internal.r.e(fromLanguage, "fromLanguage");
        this.f5581c = fromLanguage;
    }

    public final void Q(com.coloros.translate.screen.translate.engine.language.a toLanguage) {
        kotlin.jvm.internal.r.e(toLanguage, "toLanguage");
        this.f5582d = toLanguage;
    }

    public final boolean S() {
        if (!j(this.f5581c, this.f5582d)) {
            return false;
        }
        com.coloros.translate.screen.translate.engine.language.a aVar = this.f5581c;
        this.f5581c = this.f5582d;
        this.f5582d = aVar;
        F();
        return true;
    }

    public final void T(com.coloros.translate.screen.translate.engine.language.e languageListener) {
        kotlin.jvm.internal.r.e(languageListener, "languageListener");
        this.f5585g.remove(languageListener);
    }

    @Override // com.coloros.translate.observer.e.a
    public void a() {
        com.coloros.translate.observer.e.INSTANCE.n(this);
        t.i(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.language.h
            @Override // java.lang.Runnable
            public final void run() {
                j.G(this.f5575a);
            }
        });
    }

    @Override // com.coloros.translate.observer.e.a
    public void b() {
    }

    public final boolean j(com.coloros.translate.screen.translate.engine.language.a fromLanguage, com.coloros.translate.screen.translate.engine.language.a toLanguage) {
        kotlin.jvm.internal.r.e(fromLanguage, "fromLanguage");
        kotlin.jvm.internal.r.e(toLanguage, "toLanguage");
        c0.f7098a.d("ScreenTranslation.LanguageManager", "can switch, from=" + fromLanguage.getLanguageCode() + ", to=" + toLanguage.getLanguageCode());
        for (Map.Entry entry : v().entrySet()) {
            List list = (List) entry.getKey();
            List list2 = (List) entry.getValue();
            if (list.contains(toLanguage.getLanguageCode()) && list2.contains(fromLanguage.getLanguageCode())) {
                return true;
            }
        }
        return false;
    }

    public final com.coloros.translate.screen.translate.engine.language.a l() {
        List listM = m();
        if (listM.isEmpty()) {
            return this.f5581c;
        }
        if (!listM.contains(this.f5581c)) {
            com.coloros.translate.screen.translate.engine.language.a aVar = com.coloros.translate.screen.translate.engine.language.a.ENGLISH;
            if (!listM.contains(aVar)) {
                aVar = (com.coloros.translate.screen.translate.engine.language.a) listM.get(0);
            }
            this.f5581c = aVar;
        }
        return this.f5581c;
    }

    public final List m() {
        ArrayList arrayList = new ArrayList();
        Iterator it = v().keySet().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                com.coloros.translate.screen.translate.engine.language.a aVar = (com.coloros.translate.screen.translate.engine.language.a) w().get((String) it2.next());
                if (aVar != null && !arrayList.contains(aVar)) {
                    arrayList.add(aVar);
                }
            }
        }
        R(arrayList);
        return arrayList;
    }

    public final com.coloros.translate.screen.translate.engine.language.a n() {
        List listP = p(this, null, 1, null);
        if (listP.isEmpty()) {
            return this.f5582d;
        }
        if (!listP.contains(this.f5582d)) {
            this.f5582d = (com.coloros.translate.screen.translate.engine.language.a) listP.get(0);
        }
        return this.f5582d;
    }

    public final List o(com.coloros.translate.screen.translate.engine.language.a aVar) {
        String languageCode;
        ArrayList arrayList = new ArrayList();
        if (aVar == null || (languageCode = aVar.getLanguageCode()) == null) {
            languageCode = this.f5581c.getLanguageCode();
        }
        for (Map.Entry entry : v().entrySet()) {
            List list = (List) entry.getKey();
            List list2 = (List) entry.getValue();
            if (list.contains(languageCode)) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    com.coloros.translate.screen.translate.engine.language.a aVar2 = (com.coloros.translate.screen.translate.engine.language.a) w().get((String) it.next());
                    if (aVar2 != null) {
                        arrayList.add(aVar2);
                    }
                }
            }
        }
        R(arrayList);
        return arrayList;
    }

    public final String t() {
        return this.f5581c.getLanguageCode();
    }

    public final String z() {
        return this.f5582d.getLanguageCode();
    }
}
