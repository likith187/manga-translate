package o2;

import com.coloros.translate.repository.local.SimultaneousSentence;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final C0186a f14359r = new C0186a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f14360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f14361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f14362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f14363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f14364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f14365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f14366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f14367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f14368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f14369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f14370k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f14371l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f14372m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f14373n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f14374o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f14375p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f14376q;

    /* JADX INFO: renamed from: o2.a$a, reason: collision with other inner class name */
    public static final class C0186a {
        public /* synthetic */ C0186a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0186a() {
        }
    }

    public a(long j10, long j11, long j12, String recordId, String fromText, String toText, String fromLanguage, String toLanguage, long j13, long j14, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i10, int i11) {
        r.e(recordId, "recordId");
        r.e(fromText, "fromText");
        r.e(toText, "toText");
        r.e(fromLanguage, "fromLanguage");
        r.e(toLanguage, "toLanguage");
        this.f14360a = j10;
        this.f14361b = j11;
        this.f14362c = j12;
        this.f14363d = recordId;
        this.f14364e = fromText;
        this.f14365f = toText;
        this.f14366g = fromLanguage;
        this.f14367h = toLanguage;
        this.f14368i = j13;
        this.f14369j = j14;
        this.f14370k = z10;
        this.f14371l = z11;
        this.f14372m = z12;
        this.f14373n = z13;
        this.f14374o = z14;
        this.f14375p = i10;
        this.f14376q = i11;
    }

    public final void A(boolean z10) {
        this.f14372m = z10;
    }

    public final void B(boolean z10) {
        this.f14374o = z10;
    }

    public final SimultaneousSentence C(long j10) {
        SimultaneousSentence simultaneousSentence = new SimultaneousSentence();
        simultaneousSentence.setNoteId(j10);
        simultaneousSentence.setMsgId(this.f14361b + this.f14362c);
        simultaneousSentence.setRecordId(this.f14363d);
        simultaneousSentence.setFromText(this.f14364e);
        simultaneousSentence.setToText(this.f14365f);
        simultaneousSentence.setFromLanguage(this.f14366g);
        simultaneousSentence.setToLanguage(this.f14367h);
        simultaneousSentence.setStartTimeOffset(this.f14368i);
        simultaneousSentence.setEndTimeOffset(this.f14369j);
        return simultaneousSentence;
    }

    public final String a() {
        return this.f14366g;
    }

    public final String b() {
        return this.f14364e;
    }

    public final int c() {
        return this.f14376q;
    }

    public final long d() {
        return this.f14361b;
    }

    public final long e() {
        return this.f14362c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f14360a == aVar.f14360a && this.f14361b == aVar.f14361b && this.f14362c == aVar.f14362c && r.a(this.f14363d, aVar.f14363d) && r.a(this.f14364e, aVar.f14364e) && r.a(this.f14365f, aVar.f14365f) && r.a(this.f14366g, aVar.f14366g) && r.a(this.f14367h, aVar.f14367h) && this.f14368i == aVar.f14368i && this.f14369j == aVar.f14369j && this.f14370k == aVar.f14370k && this.f14371l == aVar.f14371l && this.f14372m == aVar.f14372m && this.f14373n == aVar.f14373n && this.f14374o == aVar.f14374o && this.f14375p == aVar.f14375p && this.f14376q == aVar.f14376q;
    }

    public final String f() {
        return this.f14363d;
    }

    public final String g() {
        return this.f14367h;
    }

    public final String h() {
        return this.f14365f;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((Long.hashCode(this.f14360a) * 31) + Long.hashCode(this.f14361b)) * 31) + Long.hashCode(this.f14362c)) * 31) + this.f14363d.hashCode()) * 31) + this.f14364e.hashCode()) * 31) + this.f14365f.hashCode()) * 31) + this.f14366g.hashCode()) * 31) + this.f14367h.hashCode()) * 31) + Long.hashCode(this.f14368i)) * 31) + Long.hashCode(this.f14369j)) * 31) + Boolean.hashCode(this.f14370k)) * 31) + Boolean.hashCode(this.f14371l)) * 31) + Boolean.hashCode(this.f14372m)) * 31) + Boolean.hashCode(this.f14373n)) * 31) + Boolean.hashCode(this.f14374o)) * 31) + Integer.hashCode(this.f14375p)) * 31) + Integer.hashCode(this.f14376q);
    }

    public final boolean i() {
        return this.f14373n;
    }

    public final boolean j() {
        return this.f14370k;
    }

    public final boolean k() {
        return this.f14371l;
    }

    public final boolean l() {
        return this.f14372m;
    }

    public final boolean m() {
        return this.f14374o;
    }

    public final void n(boolean z10) {
        this.f14373n = z10;
    }

    public final void o(long j10) {
        this.f14369j = j10;
    }

    public final void p(String str) {
        r.e(str, "<set-?>");
        this.f14366g = str;
    }

    public final void q(String str) {
        r.e(str, "<set-?>");
        this.f14364e = str;
    }

    public final void r(boolean z10) {
        this.f14370k = z10;
    }

    public final void s(int i10) {
        this.f14375p = i10;
    }

    public final void t(int i10) {
        this.f14376q = i10;
    }

    public String toString() {
        return "SimultaneousTranslateResult(id=" + this.f14360a + ", msgId=" + this.f14361b + ", pageOffSet=" + this.f14362c + ", recordId=" + this.f14363d + ", fromText=" + this.f14364e + ", toText=" + this.f14365f + ", fromLanguage=" + this.f14366g + ", toLanguage=" + this.f14367h + ", startTimeOffset=" + this.f14368i + ", endTimeOffset=" + this.f14369j + ", isLanguageChange=" + this.f14370k + ", isNeedTTSRead=" + this.f14371l + ", isTransalteEnd=" + this.f14372m + ", isAsrEnd=" + this.f14373n + ", isTranslateError=" + this.f14374o + ", lastContentLength=" + this.f14375p + ", lastOriginContentLength=" + this.f14376q + ")";
    }

    public final void u(long j10) {
        this.f14361b = j10;
    }

    public final void v(boolean z10) {
        this.f14371l = z10;
    }

    public final void w(String str) {
        r.e(str, "<set-?>");
        this.f14363d = str;
    }

    public final void x(long j10) {
        this.f14368i = j10;
    }

    public final void y(String str) {
        r.e(str, "<set-?>");
        this.f14367h = str;
    }

    public final void z(String str) {
        r.e(str, "<set-?>");
        this.f14365f = str;
    }

    public /* synthetic */ a(long j10, long j11, long j12, String str, String str2, String str3, String str4, String str5, long j13, long j14, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0L : j10, (i12 & 2) != 0 ? 0L : j11, (i12 & 4) != 0 ? 0L : j12, (i12 & 8) != 0 ? "" : str, (i12 & 16) != 0 ? "" : str2, (i12 & 32) != 0 ? "" : str3, (i12 & 64) != 0 ? "" : str4, (i12 & 128) == 0 ? str5 : "", (i12 & COUIToolTips.ALIGN_TOP) != 0 ? 0L : j13, (i12 & ConfigPackage.FRAME_SIZE_1) != 0 ? 0L : j14, (i12 & 1024) != 0 ? false : z10, (i12 & ConfigPackage.FRAME_SIZE_3) != 0 ? false : z11, (i12 & ConfigPackage.FRAME_SIZE_5) != 0 ? false : z12, (i12 & ConfigPackage.FRAME_SIZE_6) != 0 ? false : z13, (i12 & ReaderJsonLexerKt.BATCH_SIZE) != 0 ? false : z14, (i12 & 32768) != 0 ? 0 : i10, (i12 & 65536) != 0 ? 0 : i11);
    }
}
