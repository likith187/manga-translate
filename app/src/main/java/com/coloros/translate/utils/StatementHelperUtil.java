package com.coloros.translate.utils;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.View;
import com.coloros.translate.utils.StatementHelperUtil;
import com.coui.appcompat.statement.COUIStatementClickableSpan;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class StatementHelperUtil {
    public static final StatementHelperUtil INSTANCE = new StatementHelperUtil();

    public interface a {
        void a();
    }

    private StatementHelperUtil() {
    }

    public static final SpannableStringBuilder a(final Context context, String fullText, List list, final List list2) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(fullText, "fullText");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fullText);
        if (list != null) {
            final int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    kotlin.collections.o.q();
                }
                String str = (String) obj;
                int iW = kotlin.text.r.W(fullText, str, 0, false, 6, null);
                int length = str.length() + iW;
                if (iW == -1) {
                    c0.f7098a.e("StatementHelperUtil", "createSpannableString startIndex is -1," + str + " does not exist in fullText");
                } else {
                    spannableStringBuilder.setSpan(new COUIStatementClickableSpan(context) { // from class: com.coloros.translate.utils.StatementHelperUtil$createSpannableString$1$1$1
                        @Override // com.coui.appcompat.statement.COUIStatementClickableSpan, android.text.style.ClickableSpan
                        public void onClick(View widget) {
                            StatementHelperUtil.a aVar;
                            kotlin.jvm.internal.r.e(widget, "widget");
                            super.onClick(widget);
                            List list3 = list2;
                            if (list3 == null || (aVar = (StatementHelperUtil.a) list3.get(i10)) == null) {
                                return;
                            }
                            aVar.a();
                        }
                    }, iW, length, 33);
                }
                i10 = i11;
            }
        }
        return spannableStringBuilder;
    }
}
