package com.coloros.translate;

import android.util.ArrayMap;
import android.util.ArraySet;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.d;
import com.coloros.translate.observer.e;
import com.coloros.translate.utils.b0;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.n0;
import com.coloros.translate.utils.z0;
import com.google.gson.reflect.TypeToken;
import com.oplus.aiunit.translation.utils.CountryRegionMapper;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import kotlin.collections.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlin.jvm.internal.z;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class LanguageManager {
    private static final n8.j A;
    private static final n8.j B;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final d f4727w = new d(null);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final com.coloros.translate.b f4728x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final com.coloros.translate.b f4729y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final n8.j f4730z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayMap f4736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayMap f4737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayMap f4738h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.coloros.translate.b f4742l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.coloros.translate.b f4743m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.coloros.translate.b f4744n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.coloros.translate.b f4745o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile com.coloros.translate.d f4746p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f4747q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f4748r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f4749s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f4750t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f4751u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private AtomicLong f4752v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayMap f4731a = new ArrayMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f4732b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayMap f4733c = new ArrayMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayMap f4734d = new ArrayMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ArrayMap f4735e = new ArrayMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayMap f4739i = new ArrayMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n8.j f4740j = n8.k.b(h.INSTANCE);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final n8.j f4741k = n8.k.b(i.INSTANCE);

    static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final HashMap<String, com.coloros.translate.b> mo8invoke() {
            HashMap<String, com.coloros.translate.b> map = new HashMap<>();
            map.put("auto", com.coloros.translate.b.AUTO);
            map.put("zh", com.coloros.translate.b.CHINESE);
            map.put("zh-TW", com.coloros.translate.b.CHINESE_TW);
            map.put("en", com.coloros.translate.b.ENGLISH);
            map.put("ja", com.coloros.translate.b.JAPANESE);
            map.put("ko", com.coloros.translate.b.KOREAN);
            map.put("it", com.coloros.translate.b.ITALIANO);
            map.put("fr", com.coloros.translate.b.FRENCH);
            map.put("es", com.coloros.translate.b.SPANISH);
            map.put("es-MX", com.coloros.translate.b.SPANISH_MX);
            map.put("pt", com.coloros.translate.b.PORTUGUESE);
            map.put("pt-BR", com.coloros.translate.b.PORTUGUESE_BR);
            map.put("vi", com.coloros.translate.b.VIETNAMESE);
            map.put("th", com.coloros.translate.b.THAI);
            map.put("ms", com.coloros.translate.b.MALAY);
            map.put("id", com.coloros.translate.b.INDONESIAN);
            map.put("hi", com.coloros.translate.b.HINDI);
            map.put("ru", com.coloros.translate.b.RUSSIA);
            com.coloros.translate.b bVar = com.coloros.translate.b.FILIPINO;
            map.put("tl", bVar);
            map.put("fil", bVar);
            map.put("de", com.coloros.translate.b.GERMAN);
            map.put("ur", com.coloros.translate.b.URDU);
            map.put("ar", com.coloros.translate.b.ARABIC);
            map.put("km", com.coloros.translate.b.CAMBODIAN);
            map.put("bn", com.coloros.translate.b.BENGALI);
            map.put("tr", com.coloros.translate.b.TURKISH);
            map.put("pl", com.coloros.translate.b.POLISH);
            map.put("kn", com.coloros.translate.b.KANADA);
            map.put("mr", com.coloros.translate.b.MARATHI);
            map.put("gu", com.coloros.translate.b.GUJRATI);
            map.put("ta", com.coloros.translate.b.TAMIL);
            map.put("ml", com.coloros.translate.b.MALAYALAM);
            map.put("te", com.coloros.translate.b.TELEGU);
            map.put("pa", com.coloros.translate.b.PUNJABI);
            return map;
        }
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final HashMap<String, Locale> mo8invoke() {
            HashMap<String, Locale> map = new HashMap<>();
            Locale CHINESE = Locale.CHINESE;
            r.d(CHINESE, "CHINESE");
            map.put("zh", CHINESE);
            Locale TRADITIONAL_CHINESE = Locale.TRADITIONAL_CHINESE;
            r.d(TRADITIONAL_CHINESE, "TRADITIONAL_CHINESE");
            map.put("zh-TW", TRADITIONAL_CHINESE);
            Locale ENGLISH = Locale.ENGLISH;
            r.d(ENGLISH, "ENGLISH");
            map.put("en", ENGLISH);
            Locale JAPANESE = Locale.JAPANESE;
            r.d(JAPANESE, "JAPANESE");
            map.put("ja", JAPANESE);
            Locale KOREAN = Locale.KOREAN;
            r.d(KOREAN, "KOREAN");
            map.put("ko", KOREAN);
            Locale GERMAN = Locale.GERMAN;
            r.d(GERMAN, "GERMAN");
            map.put("de", GERMAN);
            Locale ITALIAN = Locale.ITALIAN;
            r.d(ITALIAN, "ITALIAN");
            map.put("it", ITALIAN);
            Locale FRENCH = Locale.FRENCH;
            r.d(FRENCH, "FRENCH");
            map.put("fr", FRENCH);
            map.put("es", new Locale("es"));
            map.put("es-MX", new Locale("es", "MX"));
            map.put("vi", new Locale("vi"));
            map.put("th", new Locale("th"));
            map.put("ms", new Locale("ms", "MY"));
            map.put("id", new Locale(CountryRegionMapper.Region.IN));
            map.put("ru", new Locale("ru"));
            map.put("pt", new Locale("pt", "PT"));
            map.put("pt-BR", new Locale("pt", "BR"));
            map.put("hi", new Locale("hi"));
            map.put("ru", new Locale("ru"));
            map.put("tl", new Locale("tl"));
            map.put("fil", new Locale("fil"));
            r.d(GERMAN, "GERMAN");
            map.put("de", GERMAN);
            map.put("ur", new Locale("ur", "PK"));
            map.put("ar", new Locale("ar"));
            map.put("km", new Locale("km", "KH"));
            map.put("bn", new Locale("bn", "BD"));
            map.put("tr", new Locale("tr"));
            map.put("pl", new Locale("pl"));
            map.put("kn", new Locale("kn", "IN"));
            map.put("mr", new Locale("mr", "IN"));
            map.put("gu", new Locale("gu", "IN"));
            map.put("ta", new Locale("ta", "IN"));
            map.put("ml", new Locale("ml", "IN"));
            map.put("te", new Locale("te", "IN"));
            map.put("pa", new Locale("pa", "IN"));
            return map;
        }
    }

    static final class c extends s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return new LanguageManager();
        }
    }

    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Map d() {
            return (Map) LanguageManager.B.getValue();
        }

        public final LanguageManager b() {
            return (LanguageManager) LanguageManager.f4730z.getValue();
        }

        public final Map c() {
            return (Map) LanguageManager.A.getValue();
        }

        private d() {
        }
    }

    static final class e extends s implements w8.p {
        final /* synthetic */ z $isContains;
        final /* synthetic */ List<String> $list1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(List<String> list, z zVar) {
            super(2);
            this.$list1 = list;
            this.$isContains = zVar;
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((List<String>) obj, (List<String>) obj2);
            return h0.INSTANCE;
        }

        public final void invoke(List<String> list, List<String> list2) {
            LanguageManager languageManager = LanguageManager.this;
            List<String> list3 = this.$list1;
            r.b(list2);
            if (languageManager.A(list3, list2)) {
                this.$isContains.element = true;
            }
        }
    }

    public static final class f implements e.a {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(LanguageManager this$0) {
            r.e(this$0, "this$0");
            this$0.W(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(LanguageManager this$0) {
            r.e(this$0, "this$0");
            this$0.W(true);
        }

        @Override // com.coloros.translate.observer.e.a
        public void a() {
            c0.f7098a.d("LanguageManager", "net onAvailable:" + LanguageManager.this.f4748r);
            if (LanguageManager.this.f4748r) {
                LanguageManager.this.f4749s = true;
            } else {
                final LanguageManager languageManager = LanguageManager.this;
                z0.g(500L, new Runnable() { // from class: com.coloros.translate.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        LanguageManager.f.e(languageManager);
                    }
                });
            }
        }

        @Override // com.coloros.translate.observer.e.a
        public void b() {
            c0.f7098a.d("LanguageManager", "net onLost:" + LanguageManager.this.f4748r);
            if (LanguageManager.this.f4748r) {
                LanguageManager.this.f4749s = true;
            } else {
                final LanguageManager languageManager = LanguageManager.this;
                z0.g(500L, new Runnable() { // from class: com.coloros.translate.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        LanguageManager.f.f(languageManager);
                    }
                });
            }
        }
    }

    public static final class g implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return q8.a.a(Integer.valueOf(((com.coloros.translate.b) obj).getSortIndex()), Integer.valueOf(((com.coloros.translate.b) obj2).getSortIndex()));
        }
    }

    static final class h extends s implements w8.a {
        public static final h INSTANCE = new h();

        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final String mo8invoke() {
            return "_translate_from_language";
        }
    }

    static final class i extends s implements w8.a {
        public static final i INSTANCE = new i();

        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final String mo8invoke() {
            return "_translate_to_language";
        }
    }

    static {
        com.coloros.translate.b bVar = com.coloros.translate.b.NONE;
        f4728x = bVar;
        f4729y = bVar;
        f4730z = n8.k.b(c.INSTANCE);
        A = n8.k.b(a.INSTANCE);
        B = n8.k.b(b.INSTANCE);
    }

    public LanguageManager() {
        com.coloros.translate.b bVar = f4728x;
        this.f4742l = bVar;
        com.coloros.translate.b bVar2 = f4729y;
        this.f4743m = bVar2;
        this.f4744n = bVar;
        this.f4745o = bVar2;
        this.f4747q = "";
        this.f4752v = new AtomicLong(0L);
        if (com.coloros.translate.utils.p.INSTANCE.e()) {
            K();
        } else {
            L();
        }
        H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A(List list, List list2) {
        return list.size() == list2.size() && list.containsAll(list2) && list2.containsAll(list);
    }

    private final ArrayMap C(ArrayMap arrayMap) {
        ArrayMap arrayMap2 = new ArrayMap();
        arrayMap2.putAll(arrayMap);
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        arrayMap4.putAll(arrayMap);
        Iterator it = arrayMap4.entrySet().iterator();
        while (it.hasNext()) {
            List list = (List) ((Map.Entry) it.next()).getValue();
            r.b(list);
            if (!x(arrayMap3, list)) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : arrayMap2.entrySet()) {
                    String str = (String) entry.getKey();
                    List list2 = (List) entry.getValue();
                    r.b(list2);
                    if (A(list, list2)) {
                        r.b(str);
                        arrayList.add(str);
                    }
                }
                arrayMap3.put(arrayList, list);
            }
        }
        return arrayMap3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(LanguageManager this$0, Boolean bool) {
        Object objM59constructorimpl;
        h0 h0Var;
        r.e(this$0, "this$0");
        try {
            r.a aVar = n8.r.Companion;
            com.coloros.translate.d dVar = this$0.f4746p;
            if (dVar != null) {
                dVar.i(bool);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("LanguageManager", "notifyLanguageChanged : " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(LanguageManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.W(true);
    }

    private final void H() {
        com.coloros.translate.observer.e.INSTANCE.l(new f());
    }

    private final void I() {
        String str = this.f4747q + t();
        String str2 = this.f4747q + u();
        l0.a aVar = l0.f7130a;
        l0.a.l(aVar, str, this.f4742l.getLanguageCode(), false, null, 12, null);
        l0.a.l(aVar, str2, this.f4743m.getLanguageCode(), false, null, 12, null);
    }

    private final void J() {
        String str = this.f4747q + t();
        String str2 = this.f4747q + u();
        com.coloros.translate.b bVarS = s(str);
        com.coloros.translate.b bVarS2 = s(str2);
        if (bVarS == null || bVarS2 == null || !z(bVarS, bVarS2)) {
            n();
            this.f4742l = kotlin.jvm.internal.r.a(this.f4747q, "si") ? f4729y : f4728x;
            this.f4743m = kotlin.jvm.internal.r.a(this.f4747q, "si") ? f4728x : f4729y;
            this.f4751u = false;
            return;
        }
        this.f4742l = bVarS;
        this.f4743m = bVarS2;
        this.f4751u = true;
        this.f4752v.set(System.currentTimeMillis());
    }

    private final void K() {
        this.f4739i.put(kotlin.collections.o.m("auto"), kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("zh", kotlin.collections.o.k("zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("zh-TW", kotlin.collections.o.k("zh", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("en", kotlin.collections.o.k("zh", "zh-TW", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("ja", kotlin.collections.o.k("zh", "zh-TW", "en", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("ko", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("it", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("fr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("es", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("es-MX", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("pt", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("pt-BR", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("vi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("th", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("ms", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("id", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("hi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("ru", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("de", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("ur", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("ar", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "km", "bn", "tr", "pl", "tl"));
        this.f4735e.put("km", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "bn", "tr", "pl", "tl"));
        this.f4735e.put("bn", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "tr", "pl", "tl"));
        this.f4735e.put("tr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "pl", "tl"));
        this.f4735e.put("pl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "tl"));
        this.f4735e.put("tl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl"));
        this.f4733c.put("zh", kotlin.collections.o.k("zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("zh-TW", kotlin.collections.o.k("zh", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("en", kotlin.collections.o.k("zh", "zh-TW", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("ja", kotlin.collections.o.k("zh", "zh-TW", "en", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("ko", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("it", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("fr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("es", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("es-MX", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("pt", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("pt-BR", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("vi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("th", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("ms", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("id", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("hi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("ru", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("de", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("ur", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("ar", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "km", "bn", "tr", "pl", "tl"));
        this.f4733c.put("km", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "bn", "tr", "pl", "tl"));
        this.f4733c.put("bn", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "tr", "pl", "tl"));
        this.f4733c.put("tr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "pl", "tl"));
        this.f4733c.put("pl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "tl"));
        this.f4733c.put("tl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl"));
        this.f4734d.put("zh", kotlin.collections.o.k("en", "ja", "ko", "it", "fr", "de", "es", "vi"));
        this.f4734d.put("en", kotlin.collections.o.k("zh", "hi", "vi", "th", "es", "id"));
        this.f4734d.put("ja", kotlin.collections.o.b("zh"));
        this.f4734d.put("ko", kotlin.collections.o.b("zh"));
        this.f4734d.put("it", kotlin.collections.o.b("zh"));
        this.f4734d.put("fr", kotlin.collections.o.b("zh"));
        this.f4734d.put("de", kotlin.collections.o.b("zh"));
        this.f4734d.put("es", kotlin.collections.o.k("zh", "en"));
        this.f4734d.put("vi", kotlin.collections.o.k("zh", "en"));
        this.f4734d.put("hi", kotlin.collections.o.b("en"));
        this.f4734d.put("th", kotlin.collections.o.b("en"));
        this.f4734d.put("id", kotlin.collections.o.b("en"));
        this.f4732b.addAll(kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "tl"));
        this.f4738h = C(this.f4735e);
        this.f4736f = C(this.f4733c);
        this.f4737g = C(this.f4734d);
    }

    private final void L() {
        this.f4739i.put(kotlin.collections.o.m("auto"), kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("zh", kotlin.collections.o.k("zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("zh-TW", kotlin.collections.o.k("zh", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("en", kotlin.collections.o.k("zh", "zh-TW", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ja", kotlin.collections.o.k("zh", "zh-TW", "en", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ko", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("it", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("fr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("es", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("es-MX", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("pt", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("pt-BR", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("vi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("th", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ms", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("id", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("hi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ru", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("de", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ur", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ar", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("km", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("bn", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("tr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("pl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("kn", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("mr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("gu", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "ta", "ml", "te", "pa", "tl"));
        this.f4735e.put("ta", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ml", "te", "pa", "tl"));
        this.f4735e.put("ml", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "te", "pa", "tl"));
        this.f4735e.put("te", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "pa", "tl"));
        this.f4735e.put("pa", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "tl"));
        this.f4735e.put("tl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa"));
        this.f4733c.put("zh", kotlin.collections.o.k("zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("zh-TW", kotlin.collections.o.k("zh", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("en", kotlin.collections.o.k("zh", "zh-TW", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ja", kotlin.collections.o.k("zh", "zh-TW", "en", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ko", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("it", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("fr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("es", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("es-MX", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("pt", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("pt-BR", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("vi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("th", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ms", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("id", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("hi", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ru", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("de", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ur", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ar", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("km", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("bn", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("tr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("pl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("kn", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("mr", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("gu", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "ta", "ml", "te", "pa", "tl"));
        this.f4733c.put("ta", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ml", "te", "pa", "tl"));
        this.f4733c.put("ml", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "te", "pa", "tl"));
        this.f4733c.put("te", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "pa", "tl"));
        this.f4733c.put("pa", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "tl"));
        this.f4733c.put("tl", kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa"));
        this.f4734d.put("zh", kotlin.collections.o.k("en", "ja", "ko", "it", "fr", "de", "es", "vi"));
        this.f4734d.put("en", kotlin.collections.o.k("zh", "hi", "vi", "th", "es", "id"));
        this.f4734d.put("ja", kotlin.collections.o.b("zh"));
        this.f4734d.put("ko", kotlin.collections.o.b("zh"));
        this.f4734d.put("it", kotlin.collections.o.b("zh"));
        this.f4734d.put("fr", kotlin.collections.o.b("zh"));
        this.f4734d.put("de", kotlin.collections.o.b("zh"));
        this.f4734d.put("es", kotlin.collections.o.k("zh", "en"));
        this.f4734d.put("vi", kotlin.collections.o.k("zh", "en"));
        this.f4734d.put("hi", kotlin.collections.o.b("en"));
        this.f4734d.put("th", kotlin.collections.o.b("en"));
        this.f4734d.put("id", kotlin.collections.o.b("en"));
        this.f4732b.addAll(kotlin.collections.o.k("zh", "zh-TW", "en", "ja", "ko", "it", "fr", "es", "es-MX", "pt", "pt-BR", "vi", "th", "ms", "id", "hi", "ru", "de", "ur", "ar", "km", "bn", "tr", "pl", "kn", "mr", "gu", "ta", "ml", "te", "pa", "tl"));
        this.f4738h = C(this.f4735e);
        this.f4736f = C(this.f4733c);
        this.f4737g = C(this.f4734d);
    }

    private final void P(SupportLanguageConfig supportLanguageConfig) {
        c0.f7098a.d("LanguageManager", "setSupportLanguage start:");
        Set setV0 = kotlin.collections.o.v0(this.f4732b);
        Set setV02 = kotlin.collections.o.v0(supportLanguageConfig.getTts());
        if (!setV02.isEmpty()) {
            Set setW = kotlin.collections.o.W(setV0, setV02);
            this.f4732b.clear();
            this.f4732b.addAll(setW);
        }
        ArrayMap arrayMap = null;
        if (!supportLanguageConfig.getAsr().isEmpty()) {
            Map mapW = w(this.f4735e, supportLanguageConfig.getAsr());
            ArrayMap arrayMap2 = this.f4738h;
            if (arrayMap2 == null) {
                kotlin.jvm.internal.r.r("displayAsrLanguageMap");
                arrayMap2 = null;
            }
            arrayMap2.clear();
            ArrayMap arrayMap3 = this.f4738h;
            if (arrayMap3 == null) {
                kotlin.jvm.internal.r.r("displayAsrLanguageMap");
                arrayMap3 = null;
            }
            arrayMap3.putAll(mapW);
        }
        if (!supportLanguageConfig.getOnlineText().isEmpty()) {
            Map mapW2 = w(this.f4733c, supportLanguageConfig.getOnlineText());
            ArrayMap arrayMap4 = this.f4736f;
            if (arrayMap4 == null) {
                kotlin.jvm.internal.r.r("displayOnLineLanguageMap");
                arrayMap4 = null;
            }
            arrayMap4.clear();
            ArrayMap arrayMap5 = this.f4736f;
            if (arrayMap5 == null) {
                kotlin.jvm.internal.r.r("displayOnLineLanguageMap");
                arrayMap5 = null;
            }
            arrayMap5.putAll(mapW2);
        }
        if (!supportLanguageConfig.getOfflineText().isEmpty()) {
            Map mapW3 = w(this.f4734d, supportLanguageConfig.getOfflineText());
            ArrayMap arrayMap6 = this.f4737g;
            if (arrayMap6 == null) {
                kotlin.jvm.internal.r.r("displayOffLineLanguageMap");
                arrayMap6 = null;
            }
            arrayMap6.clear();
            ArrayMap arrayMap7 = this.f4737g;
            if (arrayMap7 == null) {
                kotlin.jvm.internal.r.r("displayOffLineLanguageMap");
            } else {
                arrayMap = arrayMap7;
            }
            arrayMap.putAll(mapW3);
        }
        this.f4749s = true;
        if (this.f4748r) {
            return;
        }
        z0.g(500L, new Runnable() { // from class: com.coloros.translate.h
            @Override // java.lang.Runnable
            public final void run() {
                LanguageManager.Q(this.f5283a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(LanguageManager this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        X(this$0, false, 1, null);
    }

    private final void T(ArrayList arrayList) {
        if (arrayList.size() > 1) {
            kotlin.collections.o.u(arrayList, new g());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(boolean z10) {
        com.coloros.translate.b bVar;
        com.coloros.translate.b bVar2;
        com.coloros.translate.b bVar3;
        com.coloros.translate.b bVar4;
        Y();
        com.coloros.translate.b bVar5 = this.f4742l;
        com.coloros.translate.b bVar6 = this.f4743m;
        com.coloros.translate.b bVar7 = (com.coloros.translate.b) f4727w.c().get(v());
        List listN = n();
        ArrayList arrayListP = p(this.f4742l);
        boolean z11 = true;
        boolean z12 = !listN.isEmpty() && listN.contains(bVar5) && !arrayListP.isEmpty() && arrayListP.contains(bVar6);
        c0.a aVar = c0.f7098a;
        if (aVar.l()) {
            aVar.d("LanguageManager", "updateLanguageConfig lastCurrentFromLanguage : " + bVar5 + " , lastCurrentToLanguage : " + bVar6 + " , languageSystem : " + bVar7 + " , isSystemLanguageSupported : " + z12 + " , isNetChanged : " + z10);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f4752v.get();
        boolean z13 = this.f4751u;
        if (z13 && jCurrentTimeMillis < 500 && z12) {
            aVar.d("LanguageManager", "updateLanguageConfig: cold start protection, isNetChanged: " + z10 + ", timeSinceLoad: " + jCurrentTimeMillis + "ms");
            return;
        }
        if (z13 && jCurrentTimeMillis >= 500) {
            this.f4751u = false;
            aVar.d("LanguageManager", "updateLanguageConfig: timeSinceLoad is over，reset");
        }
        com.coloros.translate.b bVar8 = null;
        if (z10 && bVar7 != null && listN.contains(bVar7)) {
            String strV = v();
            bVar = com.coloros.translate.b.ENGLISH;
            if (kotlin.jvm.internal.r.a(strV, bVar.getLanguageCode())) {
                bVar = com.coloros.translate.b.CHINESE;
            } else {
                com.coloros.translate.b bVar9 = com.coloros.translate.b.CHINESE;
                if (bVar7 == bVar9 || bVar7 == com.coloros.translate.b.CHINESE_TW) {
                    bVar = bVar9;
                }
            }
        } else {
            bVar = null;
        }
        boolean z14 = !z12 || !(listN.isEmpty() || listN.contains(bVar5)) || ((z10 && bVar7 != null && listN.contains(bVar7) && (bVar5 == com.coloros.translate.b.CHINESE || bVar5 == com.coloros.translate.b.NONE)) || !(bVar == null || bVar5 == bVar));
        aVar.d("LanguageManager", "updateLanguageConfig:expectedFromLanguage=" + bVar + ", needUpdateFromLanguage=" + z14);
        if (z14 && (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel") || !com.coloros.translate.observer.e.INSTANCE.k())) {
            this.f4742l = com.coloros.translate.b.NONE;
            m();
        }
        ArrayList arrayListP2 = p(this.f4742l);
        if (z10 && bVar7 != null && arrayListP2.contains(bVar7)) {
            String strV2 = v();
            com.coloros.translate.b bVar10 = com.coloros.translate.b.ENGLISH;
            bVar8 = (kotlin.jvm.internal.r.a(strV2, bVar10.getLanguageCode()) || bVar7 == com.coloros.translate.b.CHINESE || bVar7 == com.coloros.translate.b.CHINESE_TW) ? bVar10 : bVar7;
        }
        boolean z15 = !z12 || !(arrayListP2.isEmpty() || arrayListP2.contains(bVar6)) || ((z10 && bVar7 != null && arrayListP2.contains(bVar7) && bVar6 != bVar7) || !(bVar8 == null || bVar6 == bVar8));
        aVar.d("LanguageManager", "updateLanguageConfig:expectedToLanguage=" + bVar8 + ", needUpdateToLanguage=" + z15);
        if (z15 && (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel") || !com.coloros.translate.observer.e.INSTANCE.k())) {
            this.f4743m = com.coloros.translate.b.NONE;
            o();
        }
        com.coloros.translate.b bVar11 = this.f4742l;
        com.coloros.translate.b bVar12 = com.coloros.translate.b.CHINESE;
        if (bVar11 == bVar12 && this.f4743m == bVar12) {
            this.f4743m = com.coloros.translate.b.ENGLISH;
        }
        aVar.d("LanguageManager", "updateLanguageConfig currentFromLanguage : " + bVar11 + ", currentToLanguage : " + this.f4743m);
        if (!z10 || ((bVar2 = this.f4742l) != bVar12 && (bVar3 = this.f4743m) != bVar12 && bVar2 != (bVar4 = com.coloros.translate.b.SPANISH) && bVar3 != bVar4)) {
            z11 = false;
        }
        if (bVar6 == this.f4743m && bVar5 == this.f4742l && !z11) {
            return;
        }
        D(Boolean.TRUE);
    }

    static /* synthetic */ void X(LanguageManager languageManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        languageManager.W(z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005c A[PHI: r1
      0x005c: PHI (r1v22 android.util.ArrayMap) = (r1v21 android.util.ArrayMap), (r1v23 android.util.ArrayMap) binds: [B:16:0x0060, B:12:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.Map Y() {
        /*
            r7 = this;
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            java.lang.String r1 = r7.f4747q
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "updateLanguageMap currentType : "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r2 = "LanguageManager"
            r0.d(r2, r1)
            r0 = 0
            r7.f4750t = r0
            java.lang.String r1 = r7.f4747q
            java.lang.String r2 = "voice"
            boolean r1 = kotlin.jvm.internal.r.a(r1, r2)
            r2 = 0
            if (r1 != 0) goto La7
            java.lang.String r1 = r7.f4747q
            java.lang.String r3 = "si"
            boolean r1 = kotlin.jvm.internal.r.a(r1, r3)
            if (r1 == 0) goto L34
            goto La7
        L34:
            java.lang.String r1 = r7.f4747q
            java.lang.String r3 = "text"
            boolean r1 = kotlin.jvm.internal.r.a(r1, r3)
            java.lang.String r3 = "displayOnLineLanguageMap"
            java.lang.String r4 = "displayOffLineLanguageMap"
            r5 = 1
            if (r1 == 0) goto L69
            android.util.ArrayMap r1 = r7.f4731a
            r1.clear()
            com.coloros.translate.observer.e r1 = com.coloros.translate.observer.e.INSTANCE
            boolean r1 = r1.k()
            android.util.ArrayMap r6 = r7.f4731a
            if (r1 == 0) goto L5e
            r7.f4750t = r5
            android.util.ArrayMap r1 = r7.f4737g
            if (r1 != 0) goto L5c
            kotlin.jvm.internal.r.r(r4)
            goto L65
        L5c:
            r2 = r1
            goto L65
        L5e:
            android.util.ArrayMap r1 = r7.f4736f
            if (r1 != 0) goto L5c
            kotlin.jvm.internal.r.r(r3)
        L65:
            r6.putAll(r2)
            goto Lbc
        L69:
            java.lang.String r1 = r7.f4747q
            java.lang.String r6 = "text_panel"
            boolean r1 = kotlin.jvm.internal.r.a(r1, r6)
            if (r1 == 0) goto Lbc
            android.util.ArrayMap r1 = r7.f4731a
            r1.clear()
            com.coloros.translate.observer.e r1 = com.coloros.translate.observer.e.INSTANCE
            boolean r1 = r1.k()
            if (r1 == 0) goto L91
            r7.f4750t = r5
            android.util.ArrayMap r1 = r7.f4731a
            android.util.ArrayMap r3 = r7.f4737g
            if (r3 != 0) goto L8c
            kotlin.jvm.internal.r.r(r4)
            goto L8d
        L8c:
            r2 = r3
        L8d:
            r1.putAll(r2)
            goto Lbc
        L91:
            android.util.ArrayMap r1 = r7.f4731a
            android.util.ArrayMap r4 = r7.f4739i
            r1.putAll(r4)
            android.util.ArrayMap r1 = r7.f4731a
            android.util.ArrayMap r4 = r7.f4736f
            if (r4 != 0) goto La2
            kotlin.jvm.internal.r.r(r3)
            goto La3
        La2:
            r2 = r4
        La3:
            r1.putAll(r2)
            goto Lbc
        La7:
            android.util.ArrayMap r1 = r7.f4731a
            r1.clear()
            android.util.ArrayMap r1 = r7.f4731a
            android.util.ArrayMap r3 = r7.f4738h
            if (r3 != 0) goto Lb8
            java.lang.String r3 = "displayAsrLanguageMap"
            kotlin.jvm.internal.r.r(r3)
            goto Lb9
        Lb8:
            r2 = r3
        Lb9:
            r1.putAll(r2)
        Lbc:
            r7.f4749s = r0
            android.util.ArrayMap r7 = r7.f4731a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.LanguageManager.Y():java.util.Map");
    }

    private final com.coloros.translate.b s(String str) {
        com.coloros.translate.b bVar = (com.coloros.translate.b) f4727w.c().get((String) l0.a.g(l0.f7130a, str, "", null, 4, null));
        if (bVar != null) {
            return bVar;
        }
        return null;
    }

    private final String t() {
        return (String) this.f4740j.getValue();
    }

    private final String u() {
        return (String) this.f4741k.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String v() {
        /*
            r7 = this;
            java.util.Locale r7 = java.util.Locale.getDefault()
            com.coloros.translate.utils.c0$a r0 = com.coloros.translate.utils.c0.f7098a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "locale : "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "LanguageManager"
            r0.d(r2, r1)
            com.coloros.translate.utils.p r0 = com.coloros.translate.utils.p.INSTANCE
            boolean r0 = r0.e()
            java.lang.String r1 = "-"
            java.lang.String r2 = "zh"
            if (r0 == 0) goto L61
            java.lang.String r0 = r7.getLanguage()
            boolean r0 = kotlin.jvm.internal.r.a(r0, r2)
            if (r0 == 0) goto L59
            java.lang.String r0 = r7.toString()
            java.lang.String r2 = "zh_CN"
            boolean r0 = kotlin.jvm.internal.r.a(r0, r2)
            if (r0 != 0) goto L59
            java.lang.String r0 = r7.getLanguage()
            java.lang.String r7 = r7.getCountry()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r1)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            goto L5d
        L59:
            java.lang.String r7 = r7.getLanguage()
        L5d:
            kotlin.jvm.internal.r.b(r7)
            goto Lc6
        L61:
            java.lang.String r0 = r7.getLanguage()
            boolean r0 = kotlin.jvm.internal.r.a(r0, r2)
            if (r0 == 0) goto Lbf
            java.lang.String r0 = r7.toString()
            java.lang.String r2 = "toString(...)"
            kotlin.jvm.internal.r.d(r0, r2)
            java.lang.String r3 = "Hant"
            r4 = 0
            r5 = 2
            r6 = 0
            boolean r0 = kotlin.text.r.K(r0, r3, r4, r5, r6)
            if (r0 == 0) goto Lbf
            java.lang.String r0 = r7.toString()
            kotlin.jvm.internal.r.d(r0, r2)
            java.lang.String r2 = "HK"
            boolean r0 = kotlin.text.r.K(r0, r2, r4, r5, r6)
            if (r0 == 0) goto La9
            java.lang.String r0 = r7.getLanguage()
            java.lang.String r7 = r7.getCountry()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            r2.append(r1)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            goto Lc3
        La9:
            java.lang.String r7 = r7.getLanguage()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r7)
            java.lang.String r7 = "-TW"
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            goto Lc3
        Lbf:
            java.lang.String r7 = r7.getLanguage()
        Lc3:
            kotlin.jvm.internal.r.b(r7)
        Lc6:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.LanguageManager.v():java.lang.String");
    }

    private final Map w(Map map, Map map2) {
        ArraySet arraySet = new ArraySet();
        arraySet.addAll(map.keySet());
        ArraySet arraySet2 = new ArraySet();
        arraySet2.addAll(map2.keySet());
        Set<String> setW = kotlin.collections.o.W(arraySet, arraySet2);
        ArraySet arraySet3 = new ArraySet();
        ArraySet arraySet4 = new ArraySet();
        ArrayMap arrayMap = new ArrayMap();
        for (String str : setW) {
            kotlin.jvm.internal.r.b(str);
            List list = (List) j0.i(map, str);
            List list2 = (List) j0.i(map2, str);
            arraySet3.addAll(list);
            arraySet4.addAll(list2);
            Set setW2 = kotlin.collections.o.W(arraySet3, arraySet4);
            arraySet3.clear();
            arraySet4.clear();
            if (!setW2.isEmpty()) {
                arrayMap.put(str, kotlin.collections.o.r0(setW2));
            }
        }
        ArrayMap arrayMapC = C(arrayMap);
        c0.f7098a.d("LanguageManager", "merge newMap :" + arrayMapC);
        return arrayMapC;
    }

    private final boolean x(ArrayMap arrayMap, List list) {
        z zVar = new z();
        final e eVar = new e(list, zVar);
        arrayMap.forEach(new BiConsumer() { // from class: com.coloros.translate.e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                LanguageManager.y(eVar, obj, obj2);
            }
        });
        return zVar.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(w8.p tmp0, Object obj, Object obj2) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        tmp0.invoke(obj, obj2);
    }

    private final boolean z(com.coloros.translate.b bVar, com.coloros.translate.b bVar2) {
        return n().contains(bVar) && p(bVar).contains(bVar2);
    }

    public final boolean B() {
        return this.f4750t;
    }

    public final void D(final Boolean bool) {
        I();
        z0.h(0L, new Runnable() { // from class: com.coloros.translate.f
            @Override // java.lang.Runnable
            public final void run() {
                LanguageManager.E(this.f5280a, bool);
            }
        }, 1, null);
    }

    public final void F() {
        this.f4748r = false;
        if (this.f4749s) {
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.g
                @Override // java.lang.Runnable
                public final void run() {
                    LanguageManager.G(this.f5282a);
                }
            }, 1, null);
        }
    }

    public final void M(com.coloros.translate.b fromLanguage) {
        kotlin.jvm.internal.r.e(fromLanguage, "fromLanguage");
        this.f4742l = fromLanguage;
    }

    public final void N() {
        this.f4748r = true;
    }

    public final void O(com.coloros.translate.d dVar, String type) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(type, "type");
        this.f4746p = dVar;
        this.f4747q = type;
        Y();
        if (kotlin.jvm.internal.r.a(type, "text_panel")) {
            J();
            com.coloros.translate.b bVar = this.f4744n;
            com.coloros.translate.b bVar2 = f4728x;
            if (bVar != bVar2) {
                this.f4742l = bVar;
            }
            com.coloros.translate.b bVar3 = this.f4745o;
            if (bVar3 != f4729y) {
                this.f4743m = bVar3;
            }
            com.coloros.translate.b bVar4 = this.f4742l;
            if (bVar4 == bVar2 || bVar4 == this.f4743m) {
                this.f4742l = com.coloros.translate.b.AUTO;
            }
        } else {
            J();
            W(false);
        }
        try {
            r.a aVar = n8.r.Companion;
            com.coloros.translate.d dVar2 = this.f4746p;
            h0 h0Var = null;
            if (dVar2 != null) {
                d.a.a(dVar2, null, 1, null);
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("LanguageManager", "setLanguageListener : " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void R(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            this.f4744n = f4729y;
            return;
        }
        for (com.coloros.translate.b bVar : com.coloros.translate.b.getEntries()) {
            if (kotlin.jvm.internal.r.a(bVar.getLanguageCode(), str)) {
                this.f4744n = bVar;
            }
            if (kotlin.jvm.internal.r.a(bVar.getLanguageCode(), str2)) {
                this.f4745o = bVar;
            }
        }
    }

    public final void S(com.coloros.translate.b toLanguage) {
        kotlin.jvm.internal.r.e(toLanguage, "toLanguage");
        this.f4743m = toLanguage;
    }

    public final void U() {
        com.coloros.translate.b bVar = this.f4742l;
        this.f4742l = this.f4743m;
        this.f4743m = bVar;
        D(Boolean.TRUE);
    }

    public final void V(String fromLanguageCode, String toLanguageCode) {
        boolean z10;
        com.coloros.translate.b bVar;
        com.coloros.translate.b bVar2;
        kotlin.jvm.internal.r.e(fromLanguageCode, "fromLanguageCode");
        kotlin.jvm.internal.r.e(toLanguageCode, "toLanguageCode");
        boolean z11 = true;
        if (kotlin.jvm.internal.r.a(this.f4742l.getLanguageCode(), fromLanguageCode) || (bVar2 = (com.coloros.translate.b) f4727w.c().get(fromLanguageCode)) == null || !n().contains(bVar2)) {
            z10 = false;
        } else {
            this.f4742l = bVar2;
            z10 = true;
        }
        boolean z12 = z10;
        if (kotlin.jvm.internal.r.a(this.f4743m.getLanguageCode(), toLanguageCode) || (bVar = (com.coloros.translate.b) f4727w.c().get(toLanguageCode)) == null || !n().contains(bVar)) {
            z11 = z10;
        } else {
            this.f4743m = bVar;
        }
        if (z11) {
            I();
            com.coloros.translate.d dVar = this.f4746p;
            if (dVar != null) {
                dVar.i(Boolean.valueOf(z12));
            }
        }
    }

    public final void Z(String json) {
        kotlin.jvm.internal.r.e(json, "json");
        Type type = new TypeToken<SupportLanguageConfig>() { // from class: com.coloros.translate.LanguageManager$updateOnlineSupportLanguage$languageData$1
        }.getType();
        kotlin.jvm.internal.r.d(type, "getType(...)");
        SupportLanguageConfig supportLanguageConfig = (SupportLanguageConfig) b0.a(json, type);
        c0.f7098a.d("LanguageManager", "languageData = " + supportLanguageConfig);
        if (supportLanguageConfig != null) {
            P(supportLanguageConfig);
        }
    }

    public final void l() {
        this.f4746p = null;
    }

    public final com.coloros.translate.b m() {
        List listN = n();
        if (listN.isEmpty()) {
            c0.f7098a.e("LanguageManager", "getCurrentFromLanguageList is empty");
            if (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel")) {
                com.coloros.translate.b bVar = this.f4742l;
                return bVar == com.coloros.translate.b.NONE ? com.coloros.translate.b.CHINESE : bVar;
            }
            com.coloros.translate.b bVar2 = com.coloros.translate.b.NONE;
            this.f4742l = bVar2;
            return bVar2;
        }
        com.coloros.translate.b bVar3 = this.f4742l;
        com.coloros.translate.b bVar4 = com.coloros.translate.b.NONE;
        if (bVar3 == bVar4) {
            c0.f7098a.d("LanguageManager", "getCurrentFromLanguage systemLanguage : " + v());
            if (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel")) {
                d dVar = f4727w;
                if (kotlin.collections.o.M(listN, dVar.c().get(v()))) {
                    com.coloros.translate.b bVar5 = (com.coloros.translate.b) dVar.c().get(v());
                    String strV = v();
                    bVar4 = com.coloros.translate.b.ENGLISH;
                    if (kotlin.jvm.internal.r.a(strV, bVar4.getLanguageCode())) {
                        bVar4 = com.coloros.translate.b.CHINESE;
                    } else {
                        com.coloros.translate.b bVar6 = com.coloros.translate.b.CHINESE;
                        if (bVar5 == bVar6 || bVar5 == com.coloros.translate.b.CHINESE_TW) {
                            bVar4 = bVar6;
                        }
                    }
                } else {
                    bVar4 = com.coloros.translate.b.CHINESE;
                }
            } else if (!com.coloros.translate.observer.e.INSTANCE.k()) {
                bVar4 = com.coloros.translate.b.AUTO;
            }
            this.f4742l = bVar4;
        } else if (!listN.contains(bVar3)) {
            c0.f7098a.d("LanguageManager", "getCurrentFromLanguage it : " + listN + " , currentFromLanguage : " + this.f4742l);
            if (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel")) {
                bVar4 = (com.coloros.translate.b) listN.get(0);
            } else if (!com.coloros.translate.observer.e.INSTANCE.k()) {
                bVar4 = com.coloros.translate.b.AUTO;
            }
            this.f4742l = bVar4;
        }
        c0.f7098a.d("LanguageManager", "getCurrentFromLanguage currentFromLanguage : " + this.f4742l.getLanguageCode());
        return this.f4742l;
    }

    public final List n() {
        ArrayList arrayList = new ArrayList();
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.putAll(this.f4731a);
        Set<List> setKeySet = arrayMap.keySet();
        kotlin.jvm.internal.r.d(setKeySet, "<get-keys>(...)");
        for (List list : setKeySet) {
            kotlin.jvm.internal.r.b(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.coloros.translate.b bVar = (com.coloros.translate.b) f4727w.c().get((String) it.next());
                if (bVar != null && !arrayList.contains(bVar)) {
                    arrayList.add(bVar);
                }
            }
        }
        T(arrayList);
        return arrayList;
    }

    public final com.coloros.translate.b o() {
        ArrayList arrayListP = p(this.f4742l);
        if (arrayListP.isEmpty()) {
            c0.f7098a.e("LanguageManager", "getCurrentToLanguage getCurrentToLanguageList is empty");
            if (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel")) {
                com.coloros.translate.b bVar = this.f4743m;
                return bVar == com.coloros.translate.b.NONE ? com.coloros.translate.b.ENGLISH : bVar;
            }
            com.coloros.translate.b bVar2 = com.coloros.translate.b.NONE;
            this.f4743m = bVar2;
            return bVar2;
        }
        com.coloros.translate.b bVar3 = this.f4743m;
        com.coloros.translate.b bVar4 = com.coloros.translate.b.NONE;
        if (bVar3 == bVar4) {
            com.coloros.translate.b bVar5 = (com.coloros.translate.b) f4727w.c().get(v());
            c0.f7098a.d("LanguageManager", "getCurrentToLanguage systemLanguage : " + v() + " , languageSystem : " + bVar5);
            if (!kotlin.jvm.internal.r.a(this.f4747q, "text_panel") || !com.coloros.translate.observer.e.INSTANCE.k()) {
                if (bVar5 == null || !arrayListP.contains(bVar5)) {
                    bVar4 = com.coloros.translate.b.ENGLISH;
                } else {
                    String strV = v();
                    bVar4 = com.coloros.translate.b.ENGLISH;
                    if (!kotlin.jvm.internal.r.a(strV, bVar4.getLanguageCode()) && bVar5 != com.coloros.translate.b.CHINESE && bVar5 != com.coloros.translate.b.CHINESE_TW) {
                        bVar4 = bVar5;
                    }
                }
            }
            this.f4743m = bVar4;
        } else if (!arrayListP.contains(bVar3)) {
            c0.f7098a.d("LanguageManager", "getCurrentToLanguage it : " + arrayListP + " , currentToLanguage : " + this.f4743m);
            if (arrayListP.get(0) != this.f4742l) {
                Object obj = arrayListP.get(0);
                kotlin.jvm.internal.r.d(obj, "get(...)");
                this.f4743m = (com.coloros.translate.b) obj;
            } else if (arrayListP.size() > 1) {
                Object obj2 = arrayListP.get(1);
                kotlin.jvm.internal.r.d(obj2, "get(...)");
                this.f4743m = (com.coloros.translate.b) obj2;
            }
        }
        c0.f7098a.d("LanguageManager", "getCurrentToLanguage currentToLanguage : " + this.f4743m.getLanguageCode());
        return this.f4743m;
    }

    public final ArrayList p(com.coloros.translate.b fromLanguage) {
        kotlin.jvm.internal.r.e(fromLanguage, "fromLanguage");
        ArrayList arrayList = new ArrayList();
        String languageCode = fromLanguage.getLanguageCode();
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.putAll(this.f4731a);
        for (Map.Entry entry : arrayMap.entrySet()) {
            List list = (List) entry.getKey();
            List list2 = (List) entry.getValue();
            if (list.contains(languageCode)) {
                kotlin.jvm.internal.r.b(list2);
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    com.coloros.translate.b bVar = (com.coloros.translate.b) f4727w.c().get((String) it.next());
                    if (bVar != null) {
                        arrayList.add(bVar);
                    }
                }
            }
        }
        if (!arrayList.contains(fromLanguage)) {
            arrayList.add(fromLanguage);
        }
        if (kotlin.jvm.internal.r.a(this.f4747q, "text_panel")) {
            arrayList.remove(com.coloros.translate.b.AUTO);
        }
        T(arrayList);
        return arrayList;
    }

    public final n8.q q(String type) {
        com.coloros.translate.b bVar;
        kotlin.jvm.internal.r.e(type, "type");
        String str = type + t();
        String str2 = type + u();
        com.coloros.translate.b bVarS = s(str);
        com.coloros.translate.b bVarS2 = s(str2);
        if (bVarS != null && bVarS2 != null) {
            return new n8.q(bVarS, bVarS2);
        }
        com.coloros.translate.b bVar2 = this.f4742l;
        com.coloros.translate.b bVar3 = com.coloros.translate.b.NONE;
        return (bVar2 == bVar3 || (bVar = this.f4743m) == bVar3) ? new n8.q(com.coloros.translate.b.CHINESE, com.coloros.translate.b.ENGLISH) : new n8.q(bVar2, bVar);
    }

    public final String r(int i10, String code) {
        kotlin.jvm.internal.r.e(code, "code");
        Locale locale = (Locale) f4727w.d().get(code);
        if (locale == null) {
            locale = Locale.ENGLISH;
        }
        kotlin.jvm.internal.r.b(locale);
        return n0.c(i10, locale);
    }
}
