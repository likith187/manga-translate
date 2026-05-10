package t;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import androidx.core.R$styleable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    static class a {
        static int a(TypedArray typedArray, int i10) {
            return typedArray.getType(i10);
        }
    }

    public interface b {
    }

    public static final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d[] f15604a;

        public c(d[] dVarArr) {
            this.f15604a = dVarArr;
        }

        public d[] a() {
            return this.f15604a;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f15605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f15606b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f15607c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f15608d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f15609e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f15610f;

        public d(String str, int i10, boolean z10, String str2, int i11, int i12) {
            this.f15605a = str;
            this.f15606b = i10;
            this.f15607c = z10;
            this.f15608d = str2;
            this.f15609e = i11;
            this.f15610f = i12;
        }

        public int a() {
            return this.f15610f;
        }

        public int b() {
            return this.f15609e;
        }

        public String c() {
            return this.f15608d;
        }

        public int d() {
            return this.f15606b;
        }

        public boolean e() {
            return this.f15607c;
        }
    }

    /* JADX INFO: renamed from: t.e$e, reason: collision with other inner class name */
    public static final class C0219e implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0.e f15611a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a0.e f15612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f15613c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f15614d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f15615e;

        public C0219e(a0.e eVar, a0.e eVar2, int i10, int i11, String str) {
            this.f15611a = eVar;
            this.f15612b = eVar2;
            this.f15614d = i10;
            this.f15613c = i11;
            this.f15615e = str;
        }

        public a0.e a() {
            return this.f15612b;
        }

        public int b() {
            return this.f15614d;
        }

        public a0.e c() {
            return this.f15611a;
        }

        public String d() {
            return this.f15615e;
        }

        public int e() {
            return this.f15613c;
        }
    }

    private static int a(TypedArray typedArray, int i10) {
        return a.a(typedArray, i10);
    }

    public static b b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List c(Resources resources, int i10) {
        if (i10 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i10);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i11 = 0; i11 < typedArrayObtainTypedArray.length(); i11++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i11, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i10)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static b d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static b e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamily);
        String string = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderQuery);
        String string4 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderFallbackQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string5 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            List listC = c(resources, resourceId);
            return new C0219e(new a0.e(string, string2, string3, listC), string4 != null ? new a0.e(string, string2, string4, listC) : null, integer, integer2, string5);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new c((d[]) arrayList.toArray(new d[0]));
    }

    private static d f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamilyFont);
        int i10 = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontWeight) ? R$styleable.FontFamilyFont_fontWeight : R$styleable.FontFamilyFont_android_fontWeight, 400);
        boolean z10 = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontStyle) ? R$styleable.FontFamilyFont_fontStyle : R$styleable.FontFamilyFont_android_fontStyle, 0);
        int i11 = typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_ttcIndex) ? R$styleable.FontFamilyFont_ttcIndex : R$styleable.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontVariationSettings) ? R$styleable.FontFamilyFont_fontVariationSettings : R$styleable.FontFamilyFont_android_fontVariationSettings);
        int i12 = typedArrayObtainAttributes.getInt(i11, 0);
        int i13 = typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_font) ? R$styleable.FontFamilyFont_font : R$styleable.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i13, 0);
        String string2 = typedArrayObtainAttributes.getString(i13);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new d(string2, i10, z10, string, i12, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i10 = 1;
        while (i10 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    private static List h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
