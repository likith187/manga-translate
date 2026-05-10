package com.ai.slp.library.mt;

import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public enum c implements com.ai.slp.library.mt.a {
    CHINESE("中文", "zh"),
    ENGLISH("英文", "en"),
    KOREAN("韩文", "ko"),
    FRENCH("法文", "fr"),
    JAPANESE("日文", "ja"),
    SPANISH("西班牙文", "es"),
    Vietnamese("越南文", "vi"),
    HINDI("印地文", "hi"),
    ITALIAN("意大利文", "it"),
    INDONESIA("印尼文", "id"),
    THAILAND("泰文", "th"),
    GERMAN("德文", "de");

    private final String chName;
    private final String code;
    public static final a Companion = new a(null);
    private static final HashMap<String, com.ai.slp.library.mt.a> dataMaps = new HashMap<>();

    public static final class a {

        /* JADX INFO: renamed from: com.ai.slp.library.mt.c$a$a, reason: collision with other inner class name */
        public static final class C0058a implements com.ai.slp.library.mt.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f4501a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f4502b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f4503c;

            C0058a(String str, String str2, String str3) {
                this.f4501a = str;
                this.f4502b = str2;
                this.f4503c = str3;
            }

            @Override // com.ai.slp.library.mt.a
            public String getCode() {
                return this.f4503c;
            }

            @Override // com.ai.slp.library.mt.a
            public String getName() {
                return this.f4501a;
            }
        }

        private a() {
        }

        public final com.ai.slp.library.mt.a a(String rwName, String chName, String code) {
            r.e(rwName, "rwName");
            r.e(chName, "chName");
            r.e(code, "code");
            HashMap map = c.dataMaps;
            Object c0058a = map.get(chName);
            if (c0058a == null) {
                c0058a = new C0058a(rwName, chName, code);
                map.put(chName, c0058a);
            }
            return (com.ai.slp.library.mt.a) c0058a;
        }

        public final com.ai.slp.library.mt.a b(String name) {
            r.e(name, "name");
            return (com.ai.slp.library.mt.a) c.dataMaps.get(name);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        for (c cVar : values()) {
            dataMaps.put(cVar.chName, cVar);
        }
    }

    c(String str, String str2) {
        this.chName = str;
        this.code = str2;
    }

    public static final com.ai.slp.library.mt.a createNewLanguage(String str, String str2, String str3) {
        return Companion.a(str, str2, str3);
    }

    public static final com.ai.slp.library.mt.a getLanguageOfName(String str) {
        return Companion.b(str);
    }

    public String getChName() {
        return this.chName;
    }

    @Override // com.ai.slp.library.mt.a
    public String getCode() {
        return this.code;
    }

    @Override // com.ai.slp.library.mt.a
    public String getName() {
        return name();
    }
}
