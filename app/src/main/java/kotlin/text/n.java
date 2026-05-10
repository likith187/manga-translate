package kotlin.text;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements Serializable {
    public static final a Companion = new a(null);
    private Set<? extends p> _options;
    private final Pattern nativePattern;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int b(int i10) {
            return (i10 & 2) != 0 ? i10 | 64 : i10;
        }

        public final String c(String literal) {
            kotlin.jvm.internal.r.e(literal, "literal");
            String strQuote = Pattern.quote(literal);
            kotlin.jvm.internal.r.d(strQuote, "quote(...)");
            return strQuote;
        }

        private a() {
        }
    }

    private static final class b implements Serializable {
        public static final a Companion = new a(null);
        private static final long serialVersionUID = 0;
        private final int flags;
        private final String pattern;

        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public b(String pattern, int i10) {
            kotlin.jvm.internal.r.e(pattern, "pattern");
            this.pattern = pattern;
            this.flags = i10;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.pattern, this.flags);
            kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
            return new n(patternCompile);
        }

        public final int getFlags() {
            return this.flags;
        }

        public final String getPattern() {
            return this.pattern;
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ CharSequence $input;
        final /* synthetic */ int $startIndex;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CharSequence charSequence, int i10) {
            super(0);
            this.$input = charSequence;
            this.$startIndex = i10;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final l mo8invoke() {
            return n.this.find(this.$input, this.$startIndex);
        }
    }

    /* synthetic */ class d extends kotlin.jvm.internal.o implements w8.l {
        public static final d INSTANCE = new d();

        d() {
            super(1, l.class, "next", "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override // w8.l
        public final l invoke(l p02) {
            kotlin.jvm.internal.r.e(p02, "p0");
            return p02.next();
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ int $value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(int i10) {
            super(1);
            this.$value = i10;
        }

        @Override // w8.l
        public final Boolean invoke(p pVar) {
            p pVar2 = pVar;
            return Boolean.valueOf((this.$value & pVar2.getMask()) == pVar2.getValue());
        }
    }

    static final class f extends kotlin.coroutines.jvm.internal.k implements w8.p {
        final /* synthetic */ CharSequence $input;
        final /* synthetic */ int $limit;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(CharSequence charSequence, int i10, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$input = charSequence;
            this.$limit = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            f fVar = n.this.new f(this.$input, this.$limit, dVar);
            fVar.L$0 = obj;
            return fVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x0070 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x009c A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x006e -> B:56:0x0071). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.f()
                int r1 = r9.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L32
                if (r1 == r4) goto L2d
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                n8.s.b(r10)
                goto L9d
            L16:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L1e:
                int r1 = r9.I$0
                java.lang.Object r5 = r9.L$1
                java.util.regex.Matcher r5 = (java.util.regex.Matcher) r5
                java.lang.Object r6 = r9.L$0
                kotlin.sequences.h r6 = (kotlin.sequences.h) r6
                n8.s.b(r10)
                r10 = r5
                goto L71
            L2d:
                n8.s.b(r10)
                goto Laf
            L32:
                n8.s.b(r10)
                java.lang.Object r10 = r9.L$0
                kotlin.sequences.h r10 = (kotlin.sequences.h) r10
                kotlin.text.n r1 = kotlin.text.n.this
                java.util.regex.Pattern r1 = kotlin.text.n.access$getNativePattern$p(r1)
                java.lang.CharSequence r5 = r9.$input
                java.util.regex.Matcher r1 = r1.matcher(r5)
                int r5 = r9.$limit
                if (r5 == r4) goto La0
                boolean r5 = r1.find()
                if (r5 != 0) goto L50
                goto La0
            L50:
                r5 = 0
                r6 = r10
                r10 = r1
                r1 = r5
            L54:
                java.lang.CharSequence r7 = r9.$input
                int r8 = r10.start()
                java.lang.CharSequence r5 = r7.subSequence(r5, r8)
                java.lang.String r5 = r5.toString()
                r9.L$0 = r6
                r9.L$1 = r10
                r9.I$0 = r1
                r9.label = r3
                java.lang.Object r5 = r6.c(r5, r9)
                if (r5 != r0) goto L71
                return r0
            L71:
                int r5 = r10.end()
                int r1 = r1 + r4
                int r7 = r9.$limit
                int r7 = r7 - r4
                if (r1 == r7) goto L81
                boolean r7 = r10.find()
                if (r7 != 0) goto L54
            L81:
                java.lang.CharSequence r10 = r9.$input
                int r1 = r10.length()
                java.lang.CharSequence r10 = r10.subSequence(r5, r1)
                java.lang.String r10 = r10.toString()
                r1 = 0
                r9.L$0 = r1
                r9.L$1 = r1
                r9.label = r2
                java.lang.Object r9 = r6.c(r10, r9)
                if (r9 != r0) goto L9d
                return r0
            L9d:
                n8.h0 r9 = n8.h0.INSTANCE
                return r9
            La0:
                java.lang.CharSequence r1 = r9.$input
                java.lang.String r1 = r1.toString()
                r9.label = r4
                java.lang.Object r9 = r10.c(r1, r9)
                if (r9 != r0) goto Laf
                return r0
            Laf:
                n8.h0 r9 = n8.h0.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.n.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // w8.p
        public final Object invoke(kotlin.sequences.h hVar, kotlin.coroutines.d dVar) {
            return ((f) create(hVar, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    public n(Pattern nativePattern) {
        kotlin.jvm.internal.r.e(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    public static /* synthetic */ l find$default(n nVar, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return nVar.find(charSequence, i10);
    }

    public static /* synthetic */ kotlin.sequences.f findAll$default(n nVar, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return nVar.findAll(charSequence, i10);
    }

    public static /* synthetic */ List split$default(n nVar, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return nVar.split(charSequence, i10);
    }

    public static /* synthetic */ kotlin.sequences.f splitToSequence$default(n nVar, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return nVar.splitToSequence(charSequence, i10);
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        kotlin.jvm.internal.r.d(strPattern, "pattern(...)");
        return new b(strPattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(CharSequence input) {
        kotlin.jvm.internal.r.e(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    public final l find(CharSequence input, int i10) {
        kotlin.jvm.internal.r.e(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        return o.f(matcher, i10, input);
    }

    public final kotlin.sequences.f findAll(CharSequence input, int i10) {
        kotlin.jvm.internal.r.e(input, "input");
        if (i10 >= 0 && i10 <= input.length()) {
            return kotlin.sequences.i.f(new c(input, i10), d.INSTANCE);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + i10 + ", input length: " + input.length());
    }

    public final Set<p> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(p.class);
        kotlin.jvm.internal.r.b(enumSetAllOf);
        kotlin.collections.o.C(enumSetAllOf, new e(iFlags));
        Set<p> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        kotlin.jvm.internal.r.d(setUnmodifiableSet, "unmodifiableSet(...)");
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    public final String getPattern() {
        String strPattern = this.nativePattern.pattern();
        kotlin.jvm.internal.r.d(strPattern, "pattern(...)");
        return strPattern;
    }

    public final l matchAt(CharSequence input, int i10) {
        kotlin.jvm.internal.r.e(input, "input");
        Matcher matcherRegion = this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(i10, input.length());
        if (!matcherRegion.lookingAt()) {
            return null;
        }
        kotlin.jvm.internal.r.b(matcherRegion);
        return new m(matcherRegion, input);
    }

    public final l matchEntire(CharSequence input) {
        kotlin.jvm.internal.r.e(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        return o.g(matcher, input);
    }

    public final boolean matches(CharSequence input) {
        kotlin.jvm.internal.r.e(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    public final boolean matchesAt(CharSequence input, int i10) {
        kotlin.jvm.internal.r.e(input, "input");
        return this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(i10, input.length()).lookingAt();
    }

    public final String replace(CharSequence input, String replacement) {
        kotlin.jvm.internal.r.e(input, "input");
        kotlin.jvm.internal.r.e(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        kotlin.jvm.internal.r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    public final String replaceFirst(CharSequence input, String replacement) {
        kotlin.jvm.internal.r.e(input, "input");
        kotlin.jvm.internal.r.e(replacement, "replacement");
        String strReplaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        kotlin.jvm.internal.r.d(strReplaceFirst, "replaceFirst(...)");
        return strReplaceFirst;
    }

    public final List<String> split(CharSequence input, int i10) {
        kotlin.jvm.internal.r.e(input, "input");
        b0.p0(i10);
        Matcher matcher = this.nativePattern.matcher(input);
        if (i10 == 1 || !matcher.find()) {
            return kotlin.collections.o.b(input.toString());
        }
        ArrayList arrayList = new ArrayList(i10 > 0 ? b9.d.e(i10, 10) : 10);
        int i11 = i10 - 1;
        int iEnd = 0;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i11 >= 0 && arrayList.size() == i11) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    public final kotlin.sequences.f splitToSequence(CharSequence input, int i10) {
        kotlin.jvm.internal.r.e(input, "input");
        b0.p0(i10);
        return kotlin.sequences.i.b(new f(input, i10, null));
    }

    public final Pattern toPattern() {
        return this.nativePattern;
    }

    public String toString() {
        String string = this.nativePattern.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    public final String replace(CharSequence input, w8.l transform) {
        kotlin.jvm.internal.r.e(input, "input");
        kotlin.jvm.internal.r.e(transform, "transform");
        int iIntValue = 0;
        l lVarFind$default = find$default(this, input, 0, 2, null);
        if (lVarFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append(input, iIntValue, lVarFind$default.c().h().intValue());
            sb.append((CharSequence) transform.invoke(lVarFind$default));
            iIntValue = lVarFind$default.c().g().intValue() + 1;
            lVarFind$default = lVarFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (lVarFind$default != null);
        if (iIntValue < length) {
            sb.append(input, iIntValue, length);
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public n(String pattern) {
        kotlin.jvm.internal.r.e(pattern, "pattern");
        Pattern patternCompile = Pattern.compile(pattern);
        kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public n(String pattern, p option) {
        kotlin.jvm.internal.r.e(pattern, "pattern");
        kotlin.jvm.internal.r.e(option, "option");
        Pattern patternCompile = Pattern.compile(pattern, Companion.b(option.getValue()));
        kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public n(String pattern, Set<? extends p> options) {
        kotlin.jvm.internal.r.e(pattern, "pattern");
        kotlin.jvm.internal.r.e(options, "options");
        Pattern patternCompile = Pattern.compile(pattern, Companion.b(o.j(options)));
        kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
        this(patternCompile);
    }
}
