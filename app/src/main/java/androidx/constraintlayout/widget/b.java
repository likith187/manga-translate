package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a */
    private final ConstraintLayout f1700a;

    /* JADX INFO: renamed from: b */
    c f1701b;

    /* JADX INFO: renamed from: c */
    int f1702c = -1;

    /* JADX INFO: renamed from: d */
    int f1703d = -1;

    /* JADX INFO: renamed from: e */
    private SparseArray f1704e = new SparseArray();

    /* JADX INFO: renamed from: f */
    private SparseArray f1705f = new SparseArray();

    static class a {

        /* JADX INFO: renamed from: a */
        int f1706a;

        /* JADX INFO: renamed from: b */
        ArrayList f1707b = new ArrayList();

        /* JADX INFO: renamed from: c */
        int f1708c;

        /* JADX INFO: renamed from: d */
        c f1709d;

        a(Context context, XmlPullParser xmlPullParser) {
            this.f1708c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.State_android_id) {
                    this.f1706a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1706a);
                } else if (index == R$styleable.State_constraints) {
                    this.f1708c = typedArrayObtainStyledAttributes.getResourceId(index, this.f1708c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1708c);
                    context.getResources().getResourceName(this.f1708c);
                    if ("layout".equals(resourceTypeName)) {
                        c cVar = new c();
                        this.f1709d = cVar;
                        cVar.n(context, this.f1708c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(C0010b c0010b) {
            this.f1707b.add(c0010b);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f1707b.size(); i10++) {
                if (((C0010b) this.f1707b.get(i10)).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.b$b */
    static class C0010b {

        /* JADX INFO: renamed from: a */
        float f1710a;

        /* JADX INFO: renamed from: b */
        float f1711b;

        /* JADX INFO: renamed from: c */
        float f1712c;

        /* JADX INFO: renamed from: d */
        float f1713d;

        /* JADX INFO: renamed from: e */
        int f1714e;

        /* JADX INFO: renamed from: f */
        c f1715f;

        C0010b(Context context, XmlPullParser xmlPullParser) {
            this.f1710a = Float.NaN;
            this.f1711b = Float.NaN;
            this.f1712c = Float.NaN;
            this.f1713d = Float.NaN;
            this.f1714e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Variant_constraints) {
                    this.f1714e = typedArrayObtainStyledAttributes.getResourceId(index, this.f1714e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1714e);
                    context.getResources().getResourceName(this.f1714e);
                    if ("layout".equals(resourceTypeName)) {
                        c cVar = new c();
                        this.f1715f = cVar;
                        cVar.n(context, this.f1714e);
                    }
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.f1713d = typedArrayObtainStyledAttributes.getDimension(index, this.f1713d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.f1711b = typedArrayObtainStyledAttributes.getDimension(index, this.f1711b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.f1712c = typedArrayObtainStyledAttributes.getDimension(index, this.f1712c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.f1710a = typedArrayObtainStyledAttributes.getDimension(index, this.f1710a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f1710a) && f10 < this.f1710a) {
                return false;
            }
            if (!Float.isNaN(this.f1711b) && f11 < this.f1711b) {
                return false;
            }
            if (Float.isNaN(this.f1712c) || f10 <= this.f1712c) {
                return Float.isNaN(this.f1713d) || f11 <= this.f1713d;
            }
            return false;
        }
    }

    b(Context context, ConstraintLayout constraintLayout, int i10) {
        this.f1700a = constraintLayout;
        a(context, i10);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:89:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(android.content.Context r11, int r12) {
        /*
            r10 = this;
            java.lang.String r0 = "Error parsing resource: "
            java.lang.String r1 = "ConstraintLayoutStates"
            android.content.res.Resources r2 = r11.getResources()
            android.content.res.XmlResourceParser r2 = r2.getXml(r12)
            int r3 = r2.getEventType()     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            r4 = 0
        L11:
            r5 = 1
            if (r3 == r5) goto Lab
            r6 = 2
            if (r3 == r6) goto L19
            goto L81
        L19:
            java.lang.String r3 = r2.getName()     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            int r7 = r3.hashCode()     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            r8 = 4
            r9 = 3
            switch(r7) {
                case -1349929691: goto L53;
                case 80204913: goto L49;
                case 1382829617: goto L40;
                case 1657696882: goto L36;
                case 1901439077: goto L27;
                default: goto L26;
            }     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
        L26:
            goto L5d
        L27:
            java.lang.String r5 = "Variant"
            boolean r3 = r3.equals(r5)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            if (r3 == 0) goto L5d
            r5 = r9
            goto L5e
        L31:
            r10 = move-exception
            goto L86
        L33:
            r10 = move-exception
            goto L99
        L36:
            java.lang.String r5 = "layoutDescription"
            boolean r3 = r3.equals(r5)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            if (r3 == 0) goto L5d
            r5 = 0
            goto L5e
        L40:
            java.lang.String r7 = "StateSet"
            boolean r3 = r3.equals(r7)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            if (r3 == 0) goto L5d
            goto L5e
        L49:
            java.lang.String r5 = "State"
            boolean r3 = r3.equals(r5)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            if (r3 == 0) goto L5d
            r5 = r6
            goto L5e
        L53:
            java.lang.String r5 = "ConstraintSet"
            boolean r3 = r3.equals(r5)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            if (r3 == 0) goto L5d
            r5 = r8
            goto L5e
        L5d:
            r5 = -1
        L5e:
            if (r5 == r6) goto L74
            if (r5 == r9) goto L69
            if (r5 == r8) goto L65
            goto L81
        L65:
            r10.b(r11, r2)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            goto L81
        L69:
            androidx.constraintlayout.widget.b$b r3 = new androidx.constraintlayout.widget.b$b     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            r3.<init>(r11, r2)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            if (r4 == 0) goto L81
            r4.a(r3)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            goto L81
        L74:
            androidx.constraintlayout.widget.b$a r3 = new androidx.constraintlayout.widget.b$a     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            r3.<init>(r11, r2)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            android.util.SparseArray r4 = r10.f1704e     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            int r5 = r3.f1706a     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            r4.put(r5, r3)     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            r4 = r3
        L81:
            int r3 = r2.next()     // Catch: java.io.IOException -> L31 org.xmlpull.v1.XmlPullParserException -> L33
            goto L11
        L86:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r0)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            android.util.Log.e(r1, r11, r10)
            goto Lab
        L99:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r0)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            android.util.Log.e(r1, r11, r10)
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.b.a(android.content.Context, int):void");
    }

    private void b(Context context, XmlPullParser xmlPullParser) {
        c cVar = new c();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                cVar.G(context, xmlPullParser);
                this.f1705f.put(identifier, cVar);
                return;
            }
        }
    }

    public void c(d dVar) {
    }

    public void d(int i10, float f10, float f11) {
        int iB;
        int i11 = this.f1702c;
        if (i11 == i10) {
            a aVar = i10 == -1 ? (a) this.f1704e.valueAt(0) : (a) this.f1704e.get(i11);
            int i12 = this.f1703d;
            if ((i12 == -1 || !((C0010b) aVar.f1707b.get(i12)).a(f10, f11)) && this.f1703d != (iB = aVar.b(f10, f11))) {
                c cVar = iB == -1 ? this.f1701b : ((C0010b) aVar.f1707b.get(iB)).f1715f;
                if (iB != -1) {
                    int i13 = ((C0010b) aVar.f1707b.get(iB)).f1714e;
                }
                if (cVar == null) {
                    return;
                }
                this.f1703d = iB;
                cVar.i(this.f1700a);
                return;
            }
            return;
        }
        this.f1702c = i10;
        a aVar2 = (a) this.f1704e.get(i10);
        int iB2 = aVar2.b(f10, f11);
        c cVar2 = iB2 == -1 ? aVar2.f1709d : ((C0010b) aVar2.f1707b.get(iB2)).f1715f;
        if (iB2 != -1) {
            int i14 = ((C0010b) aVar2.f1707b.get(iB2)).f1714e;
        }
        if (cVar2 != null) {
            this.f1703d = iB2;
            cVar2.i(this.f1700a);
            return;
        }
        Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i10 + ", dim =" + f10 + ", " + f11);
    }
}
