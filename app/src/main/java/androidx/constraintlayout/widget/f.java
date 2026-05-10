package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1828a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1829b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1830c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SparseArray f1831d = new SparseArray();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList f1833b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1834c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1835d;

        a(Context context, XmlPullParser xmlPullParser) {
            this.f1834c = -1;
            this.f1835d = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.State_android_id) {
                    this.f1832a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1832a);
                } else if (index == R$styleable.State_constraints) {
                    this.f1834c = typedArrayObtainStyledAttributes.getResourceId(index, this.f1834c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1834c);
                    context.getResources().getResourceName(this.f1834c);
                    if ("layout".equals(resourceTypeName)) {
                        this.f1835d = true;
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f1833b.add(bVar);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f1833b.size(); i10++) {
                if (((b) this.f1833b.get(i10)).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f1836a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f1837b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f1838c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1839d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1840e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f1841f;

        b(Context context, XmlPullParser xmlPullParser) {
            this.f1836a = Float.NaN;
            this.f1837b = Float.NaN;
            this.f1838c = Float.NaN;
            this.f1839d = Float.NaN;
            this.f1840e = -1;
            this.f1841f = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Variant_constraints) {
                    this.f1840e = typedArrayObtainStyledAttributes.getResourceId(index, this.f1840e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1840e);
                    context.getResources().getResourceName(this.f1840e);
                    if ("layout".equals(resourceTypeName)) {
                        this.f1841f = true;
                    }
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.f1839d = typedArrayObtainStyledAttributes.getDimension(index, this.f1839d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.f1837b = typedArrayObtainStyledAttributes.getDimension(index, this.f1837b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.f1838c = typedArrayObtainStyledAttributes.getDimension(index, this.f1838c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.f1836a = typedArrayObtainStyledAttributes.getDimension(index, this.f1836a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f1836a) && f10 < this.f1836a) {
                return false;
            }
            if (!Float.isNaN(this.f1837b) && f11 < this.f1837b) {
                return false;
            }
            if (Float.isNaN(this.f1838c) || f10 <= this.f1838c) {
                return Float.isNaN(this.f1839d) || f11 <= this.f1839d;
            }
            return false;
        }
    }

    public f(Context context, XmlPullParser xmlPullParser) {
        b(context, xmlPullParser);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(android.content.Context r11, org.xmlpull.v1.XmlPullParser r12) {
        /*
            r10 = this;
            java.lang.String r0 = "Error parsing XML resource"
            java.lang.String r1 = "ConstraintLayoutStates"
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r12)
            int[] r3 = androidx.constraintlayout.widget.R$styleable.StateSet
            android.content.res.TypedArray r2 = r11.obtainStyledAttributes(r2, r3)
            int r3 = r2.getIndexCount()
            r4 = 0
            r5 = r4
        L14:
            if (r5 >= r3) goto L29
            int r6 = r2.getIndex(r5)
            int r7 = androidx.constraintlayout.widget.R$styleable.StateSet_defaultState
            if (r6 != r7) goto L26
            int r7 = r10.f1828a
            int r6 = r2.getResourceId(r6, r7)
            r10.f1828a = r6
        L26:
            int r5 = r5 + 1
            goto L14
        L29:
            r2.recycle()
            int r2 = r12.getEventType()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            r3 = 0
        L31:
            r5 = 1
            if (r2 == r5) goto La7
            java.lang.String r6 = "StateSet"
            r7 = 3
            r8 = 2
            if (r2 == r8) goto L4d
            if (r2 == r7) goto L3e
            goto L9b
        L3e:
            java.lang.String r2 = r12.getName()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            boolean r2 = r6.equals(r2)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            if (r2 == 0) goto L9b
            return
        L49:
            r10 = move-exception
            goto La0
        L4b:
            r10 = move-exception
            goto La4
        L4d:
            java.lang.String r2 = r12.getName()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            int r9 = r2.hashCode()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            switch(r9) {
                case 80204913: goto L74;
                case 1301459538: goto L6a;
                case 1382829617: goto L63;
                case 1901439077: goto L59;
                default: goto L58;
            }     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
        L58:
            goto L7e
        L59:
            java.lang.String r5 = "Variant"
            boolean r2 = r2.equals(r5)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            if (r2 == 0) goto L7e
            r5 = r7
            goto L7f
        L63:
            boolean r2 = r2.equals(r6)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            if (r2 == 0) goto L7e
            goto L7f
        L6a:
            java.lang.String r5 = "LayoutDescription"
            boolean r2 = r2.equals(r5)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            if (r2 == 0) goto L7e
            r5 = r4
            goto L7f
        L74:
            java.lang.String r5 = "State"
            boolean r2 = r2.equals(r5)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            if (r2 == 0) goto L7e
            r5 = r8
            goto L7f
        L7e:
            r5 = -1
        L7f:
            if (r5 == r8) goto L8f
            if (r5 == r7) goto L84
            goto L9b
        L84:
            androidx.constraintlayout.widget.f$b r2 = new androidx.constraintlayout.widget.f$b     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            r2.<init>(r11, r12)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            if (r3 == 0) goto L9b
            r3.a(r2)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            goto L9b
        L8f:
            androidx.constraintlayout.widget.f$a r3 = new androidx.constraintlayout.widget.f$a     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            r3.<init>(r11, r12)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            android.util.SparseArray r2 = r10.f1831d     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            int r5 = r3.f1832a     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            r2.put(r5, r3)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
        L9b:
            int r2 = r12.next()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4b
            goto L31
        La0:
            android.util.Log.e(r1, r0, r10)
            goto La7
        La4:
            android.util.Log.e(r1, r0, r10)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.f.b(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public int a(int i10, int i11, float f10, float f11) {
        a aVar = (a) this.f1831d.get(i11);
        if (aVar == null) {
            return i11;
        }
        if (f10 == -1.0f || f11 == -1.0f) {
            if (aVar.f1834c == i10) {
                return i10;
            }
            Iterator it = aVar.f1833b.iterator();
            while (it.hasNext()) {
                if (i10 == ((b) it.next()).f1840e) {
                    return i10;
                }
            }
            return aVar.f1834c;
        }
        b bVar = null;
        for (b bVar2 : aVar.f1833b) {
            if (bVar2.a(f10, f11)) {
                if (i10 == bVar2.f1840e) {
                    return i10;
                }
                bVar = bVar2;
            }
        }
        return bVar != null ? bVar.f1840e : aVar.f1834c;
    }

    public int c(int i10, int i11, int i12) {
        return d(-1, i10, i11, i12);
    }

    public int d(int i10, int i11, float f10, float f11) {
        int iB;
        if (i10 == i11) {
            a aVar = i11 == -1 ? (a) this.f1831d.valueAt(0) : (a) this.f1831d.get(this.f1829b);
            if (aVar == null) {
                return -1;
            }
            return ((this.f1830c == -1 || !((b) aVar.f1833b.get(i10)).a(f10, f11)) && i10 != (iB = aVar.b(f10, f11))) ? iB == -1 ? aVar.f1834c : ((b) aVar.f1833b.get(iB)).f1840e : i10;
        }
        a aVar2 = (a) this.f1831d.get(i11);
        if (aVar2 == null) {
            return -1;
        }
        int iB2 = aVar2.b(f10, f11);
        return iB2 == -1 ? aVar2.f1834c : ((b) aVar2.f1833b.get(iB2)).f1840e;
    }
}
