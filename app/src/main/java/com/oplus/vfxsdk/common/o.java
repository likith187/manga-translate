package com.oplus.vfxsdk.common;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.j0;
import kotlin.jvm.internal.i0;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f11287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e8.e f11289e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11285a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u f11286b = u.Float;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11290f = -1;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11291a;

        static {
            int[] iArr = new int[u.values().length];
            try {
                iArr[u.Float.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u.Range.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u.Int.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[u.Vec2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[u.Vec3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[u.Vec4.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[u.Color.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f11291a = iArr;
        }
    }

    private final Object c(Object obj) {
        if (i0.j(obj)) {
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(kotlin.collections.o.r(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                arrayList.add(next != null ? c(next) : null);
            }
            return arrayList;
        }
        if (i0.k(obj)) {
            kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            Set<Map.Entry> setEntrySet = ((Map) obj).entrySet();
            LinkedHashMap linkedHashMap = new LinkedHashMap(b9.d.c(j0.e(kotlin.collections.o.r(setEntrySet, 10)), 16));
            for (Map.Entry entry : setEntrySet) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                linkedHashMap.put(key, value != null ? c(value) : null);
            }
            return linkedHashMap;
        }
        if (!(obj instanceof Object[])) {
            return obj;
        }
        kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Array<*>");
        Object[] objArr = (Object[]) obj;
        ArrayList arrayList2 = new ArrayList(objArr.length);
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object obj2 = objArr[i10];
            arrayList2.add(obj2 != null ? c(obj2) : null);
        }
        return arrayList2.toArray(new Object[0]);
    }

    public final void a(Object value, int i10) {
        kotlin.jvm.internal.r.e(value, "value");
        switch (a.f11291a[this.f11286b.ordinal()]) {
            case 1:
            case 2:
                this.f11287c = (Float) value;
                break;
            case 3:
                this.f11287c = Integer.valueOf(Math.round(((Float) value).floatValue()));
                break;
            case 4:
                if (this.f11287c == null) {
                    this.f11287c = new float[2];
                }
                Object obj = this.f11287c;
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.FloatArray");
                ((float[]) obj)[i10] = ((Float) value).floatValue();
                break;
            case 5:
                if (this.f11287c == null) {
                    this.f11287c = new float[3];
                }
                Object obj2 = this.f11287c;
                kotlin.jvm.internal.r.c(obj2, "null cannot be cast to non-null type kotlin.FloatArray");
                ((float[]) obj2)[i10] = ((Float) value).floatValue();
                break;
            case 6:
            case 7:
                if (this.f11287c == null) {
                    this.f11287c = new float[4];
                }
                Object obj3 = this.f11287c;
                kotlin.jvm.internal.r.c(obj3, "null cannot be cast to non-null type kotlin.FloatArray");
                ((float[]) obj3)[i10] = ((Float) value).floatValue();
                break;
            default:
                this.f11287c = value;
                break;
        }
        e8.e eVar = this.f11289e;
        if (eVar != null) {
            String str = this.f11285a;
            Object obj4 = this.f11287c;
            kotlin.jvm.internal.r.c(obj4, "null cannot be cast to non-null type kotlin.Any");
            eVar.b(str, obj4);
        }
    }

    public final o b() {
        o oVar = new o();
        oVar.f11285a = this.f11285a;
        oVar.f11286b = this.f11286b;
        oVar.f11288d = this.f11288d;
        oVar.f11287c = oVar.c(this.f11287c);
        return oVar;
    }

    public final Object d(int i10) {
        float fFloatValue;
        switch (a.f11291a[this.f11286b.ordinal()]) {
            case 1:
            case 2:
                Object obj = this.f11287c;
                if (obj instanceof Float) {
                    kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Float");
                    fFloatValue = ((Float) obj).floatValue();
                } else if (obj instanceof Number) {
                    kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Number");
                    fFloatValue = ((Number) obj).floatValue();
                } else {
                    fFloatValue = 0.0f;
                }
                return Float.valueOf(fFloatValue);
            case 3:
                Object obj2 = this.f11287c;
                if (!(obj2 instanceof Integer)) {
                    return 0;
                }
                kotlin.jvm.internal.r.b(obj2);
                return obj2;
            case 4:
            case 5:
            case 6:
            case 7:
                Object obj3 = this.f11287c;
                kotlin.jvm.internal.r.c(obj3, "null cannot be cast to non-null type kotlin.FloatArray");
                return Float.valueOf(((float[]) obj3)[i10]);
            default:
                return new Object();
        }
    }

    public final String e() {
        return this.f11285a;
    }

    public final u f() {
        return this.f11286b;
    }

    public final boolean g() {
        return this.f11288d;
    }

    public final Object h() {
        return this.f11287c;
    }

    public final void i(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.f11285a = str;
    }

    public final void j(int i10) {
        this.f11290f = i10;
    }

    public final void k(u uVar) {
        kotlin.jvm.internal.r.e(uVar, "<set-?>");
        this.f11286b = uVar;
    }

    public final void l(e8.e eVar) {
        this.f11289e = eVar;
    }

    public final void m(boolean z10) {
        this.f11288d = z10;
    }

    public final void n(Object values) {
        kotlin.jvm.internal.r.e(values, "values");
        this.f11287c = values;
    }
}
