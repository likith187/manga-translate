package b2;

import android.text.TextUtils;
import com.coloros.translate.utils.c0;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final String a(String str) {
        return r.a(str, "zh") ? "。" : ". ";
    }

    public static final void b(List textList, String text) {
        r.e(textList, "textList");
        r.e(text, "text");
        if (TextUtils.isEmpty(text)) {
            c0.f7098a.d("TranslateUtils", "splitText text is null");
            return;
        }
        if (text.length() <= 1500) {
            textList.add(text);
            return;
        }
        String strSubstring = text.substring(0, 1500);
        r.d(strSubstring, "substring(...)");
        int iMax = Math.max(kotlin.text.r.c0(strSubstring, "。", 0, false, 6, null), kotlin.text.r.c0(strSubstring, ".", 0, false, 6, null));
        int i10 = (iMax >= 20 ? iMax : 1500) + 1;
        String strSubstring2 = text.substring(0, i10);
        r.d(strSubstring2, "substring(...)");
        String strSubstring3 = text.substring(i10);
        r.d(strSubstring3, "substring(...)");
        textList.add(strSubstring2);
        b(textList, strSubstring3);
    }
}
