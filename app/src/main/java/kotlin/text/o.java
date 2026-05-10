package kotlin.text;

import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o {
    public static final l f(Matcher matcher, int i10, CharSequence charSequence) {
        if (matcher.find(i10)) {
            return new m(matcher, charSequence);
        }
        return null;
    }

    public static final l g(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new m(matcher, charSequence);
        }
        return null;
    }

    public static final b9.c h(MatchResult matchResult) {
        return b9.d.l(matchResult.start(), matchResult.end());
    }

    public static final b9.c i(MatchResult matchResult, int i10) {
        return b9.d.l(matchResult.start(i10), matchResult.end(i10));
    }

    public static final int j(Iterable iterable) {
        Iterator it = iterable.iterator();
        int value = 0;
        while (it.hasNext()) {
            value |= ((f) it.next()).getValue();
        }
        return value;
    }
}
