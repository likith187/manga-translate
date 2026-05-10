package com.coloros.translate.ui.simultaneous.main;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {
    public static final g0 INSTANCE = new g0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final n8.j f6670a = n8.k.b(a.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Pattern mo8invoke() {
            return Pattern.compile("[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|");
        }
    }

    private g0() {
    }

    public static final String a(String str) {
        kotlin.jvm.internal.r.e(str, "str");
        Matcher matcher = INSTANCE.b().matcher(kotlin.text.r.B(str, "/[←-⇿]|[☀-⛿]|[✀-➿]|[\u3000-〿]|[ἰ0-ὤF]|[Ὠ0-ὯF]/g", "", false, 4, null));
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        String strReplaceAll = matcher.replaceAll("");
        kotlin.jvm.internal.r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    private final Pattern b() {
        return (Pattern) f6670a.getValue();
    }

    public static final void c(LinkedBlockingQueue ttsStack, String text) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(ttsStack, "ttsStack");
        kotlin.jvm.internal.r.e(text, "text");
        String string = kotlin.text.r.N0(text).toString();
        ArrayList<String> arrayList = new ArrayList();
        if (string.length() > 300) {
            String strSubstring = string.substring(0, 300);
            kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
            int iC0 = kotlin.text.r.c0(strSubstring, " ", 0, false, 6, null);
            int i10 = iC0 >= 0 ? iC0 : 300;
            String strSubstring2 = string.substring(0, i10);
            kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
            arrayList.add(strSubstring2);
            string = string.substring(i10);
            kotlin.jvm.internal.r.d(string, "substring(...)");
        }
        String[] strArr = (String[]) kotlin.text.r.u0(string, new String[]{"\n"}, false, 0, 6, null).toArray(new String[0]);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            if (!kotlin.jvm.internal.r.a(str, "")) {
                arrayList2.add(str);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            d(arrayList, (String) it.next());
        }
        for (String str2 : arrayList) {
            try {
                r.a aVar = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(ttsStack.add(str2)));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                com.coloros.translate.utils.c0.f7098a.e("TtsHelper", "playText split length error");
            }
        }
        com.coloros.translate.utils.c0.f7098a.d("TtsHelper", "playText count " + ttsStack.size());
    }

    private static final void d(List list, String str) {
        if (str.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.d("TtsHelper", "splitText text is null");
            return;
        }
        if (str.length() <= 300) {
            list.add(str);
            com.coloros.translate.utils.c0.f7098a.d("TtsHelper", "splitText,textList size = " + list.size());
            return;
        }
        String strSubstring = str.substring(0, 300);
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        int iC0 = kotlin.text.r.c0(strSubstring, " ", 0, false, 6, null);
        int i10 = iC0 > 0 ? iC0 : 300;
        String strSubstring2 = strSubstring.substring(0, i10);
        kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
        list.add(strSubstring2);
        String strSubstring3 = str.substring(i10);
        kotlin.jvm.internal.r.d(strSubstring3, "substring(...)");
        com.coloros.translate.utils.c0.f7098a.d("TtsHelper", "splitText,textList size = " + list.size());
        d(list, strSubstring3);
    }
}
