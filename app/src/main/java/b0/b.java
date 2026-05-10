package b0;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements Spannable {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextPaint f4210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextDirectionHeuristic f4211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f4212c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f4213d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final PrecomputedText.Params f4214e;

        public a(PrecomputedText.Params params) {
            this.f4210a = params.getTextPaint();
            this.f4211b = params.getTextDirection();
            this.f4212c = params.getBreakStrategy();
            this.f4213d = params.getHyphenationFrequency();
            this.f4214e = params;
        }

        public boolean a(a aVar) {
            if (this.f4212c == aVar.b() && this.f4213d == aVar.c() && this.f4210a.getTextSize() == aVar.e().getTextSize() && this.f4210a.getTextScaleX() == aVar.e().getTextScaleX() && this.f4210a.getTextSkewX() == aVar.e().getTextSkewX() && this.f4210a.getLetterSpacing() == aVar.e().getLetterSpacing() && TextUtils.equals(this.f4210a.getFontFeatureSettings(), aVar.e().getFontFeatureSettings()) && this.f4210a.getFlags() == aVar.e().getFlags() && this.f4210a.getTextLocales().equals(aVar.e().getTextLocales())) {
                return this.f4210a.getTypeface() == null ? aVar.e().getTypeface() == null : this.f4210a.getTypeface().equals(aVar.e().getTypeface());
            }
            return false;
        }

        public int b() {
            return this.f4212c;
        }

        public int c() {
            return this.f4213d;
        }

        public TextDirectionHeuristic d() {
            return this.f4211b;
        }

        public TextPaint e() {
            return this.f4210a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return a(aVar) && this.f4211b == aVar.d();
        }

        public int hashCode() {
            return c0.c.b(Float.valueOf(this.f4210a.getTextSize()), Float.valueOf(this.f4210a.getTextScaleX()), Float.valueOf(this.f4210a.getTextSkewX()), Float.valueOf(this.f4210a.getLetterSpacing()), Integer.valueOf(this.f4210a.getFlags()), this.f4210a.getTextLocales(), this.f4210a.getTypeface(), Boolean.valueOf(this.f4210a.isElegantTextHeight()), this.f4211b, Integer.valueOf(this.f4212c), Integer.valueOf(this.f4213d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f4210a.getTextSize());
            sb.append(", textScaleX=" + this.f4210a.getTextScaleX());
            sb.append(", textSkewX=" + this.f4210a.getTextSkewX());
            sb.append(", letterSpacing=" + this.f4210a.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.f4210a.isElegantTextHeight());
            sb.append(", textLocale=" + this.f4210a.getTextLocales());
            sb.append(", typeface=" + this.f4210a.getTypeface());
            sb.append(", variationSettings=" + this.f4210a.getFontVariationSettings());
            sb.append(", textDir=" + this.f4211b);
            sb.append(", breakStrategy=" + this.f4212c);
            sb.append(", hyphenationFrequency=" + this.f4213d);
            sb.append("}");
            return sb.toString();
        }
    }
}
