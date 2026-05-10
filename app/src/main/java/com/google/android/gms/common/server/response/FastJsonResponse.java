package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import r3.h;
import r3.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.a CREATOR = new com.google.android.gms.common.server.response.a();

        /* JADX INFO: renamed from: a */
        private final int f7996a;

        /* JADX INFO: renamed from: b */
        protected final int f7997b;

        /* JADX INFO: renamed from: c */
        protected final boolean f7998c;

        /* JADX INFO: renamed from: f */
        protected final int f7999f;

        /* JADX INFO: renamed from: h */
        protected final boolean f8000h;

        /* JADX INFO: renamed from: i */
        protected final String f8001i;

        /* JADX INFO: renamed from: j */
        protected final int f8002j;

        /* JADX INFO: renamed from: k */
        protected final Class f8003k;

        /* JADX INFO: renamed from: l */
        protected final String f8004l;

        /* JADX INFO: renamed from: m */
        private zan f8005m;

        /* JADX INFO: renamed from: n */
        private final a f8006n;

        Field(int i10, int i11, boolean z10, int i12, boolean z11, String str, int i13, String str2, zaa zaaVar) {
            this.f7996a = i10;
            this.f7997b = i11;
            this.f7998c = z10;
            this.f7999f = i12;
            this.f8000h = z11;
            this.f8001i = str;
            this.f8002j = i13;
            if (str2 == null) {
                this.f8003k = null;
                this.f8004l = null;
            } else {
                this.f8003k = SafeParcelResponse.class;
                this.f8004l = str2;
            }
            if (zaaVar == null) {
                this.f8006n = null;
            } else {
                this.f8006n = zaaVar.E0();
            }
        }

        public int D0() {
            return this.f8002j;
        }

        final zaa E0() {
            a aVar = this.f8006n;
            if (aVar == null) {
                return null;
            }
            return zaa.D0(aVar);
        }

        public final Object G0(Object obj) {
            k.g(this.f8006n);
            return this.f8006n.c(obj);
        }

        final String H0() {
            String str = this.f8004l;
            if (str == null) {
                return null;
            }
            return str;
        }

        public final Map I0() {
            k.g(this.f8004l);
            k.g(this.f8005m);
            return (Map) k.g(this.f8005m.E0(this.f8004l));
        }

        public final void J0(zan zanVar) {
            this.f8005m = zanVar;
        }

        public final boolean K0() {
            return this.f8006n != null;
        }

        public final String toString() {
            j.a aVarA = j.c(this).a("versionCode", Integer.valueOf(this.f7996a)).a("typeIn", Integer.valueOf(this.f7997b)).a("typeInArray", Boolean.valueOf(this.f7998c)).a("typeOut", Integer.valueOf(this.f7999f)).a("typeOutArray", Boolean.valueOf(this.f8000h)).a("outputFieldName", this.f8001i).a("safeParcelFieldId", Integer.valueOf(this.f8002j)).a("concreteTypeName", H0());
            Class cls = this.f8003k;
            if (cls != null) {
                aVarA.a("concreteType.class", cls.getCanonicalName());
            }
            a aVar = this.f8006n;
            if (aVar != null) {
                aVarA.a("converterName", aVar.getClass().getCanonicalName());
            }
            return aVarA.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            int i11 = this.f7996a;
            int iA = n3.b.a(parcel);
            n3.b.g(parcel, 1, i11);
            n3.b.g(parcel, 2, this.f7997b);
            n3.b.c(parcel, 3, this.f7998c);
            n3.b.g(parcel, 4, this.f7999f);
            n3.b.c(parcel, 5, this.f8000h);
            n3.b.m(parcel, 6, this.f8001i, false);
            n3.b.g(parcel, 7, D0());
            n3.b.m(parcel, 8, H0(), false);
            n3.b.l(parcel, 9, E0(), i10, false);
            n3.b.b(parcel, iA);
        }
    }

    public interface a {
        Object c(Object obj);
    }

    protected static final Object f(Field field, Object obj) {
        return field.f8006n != null ? field.G0(obj) : obj;
    }

    private static final void g(StringBuilder sb, Field field, Object obj) {
        int i10 = field.f7997b;
        if (i10 == 11) {
            Class cls = field.f8003k;
            k.g(cls);
            sb.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else {
            if (i10 != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(h.a((String) obj));
            sb.append("\"");
        }
    }

    public abstract Map a();

    protected Object b(Field field) {
        String str = field.f8001i;
        if (field.f8003k == null) {
            return c(str);
        }
        k.l(c(str) == null, "Concrete field shouldn't be value object: %s", field.f8001i);
        try {
            return getClass().getMethod("get" + Character.toUpperCase(str.charAt(0)) + str.substring(1), null).invoke(this, null);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    protected abstract Object c(String str);

    protected boolean d(Field field) {
        if (field.f7999f != 11) {
            return e(field.f8001i);
        }
        if (field.f8000h) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected abstract boolean e(String str);

    public String toString() {
        Map mapA = a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mapA.keySet()) {
            Field field = (Field) mapA.get(str);
            if (d(field)) {
                Object objF = f(field, b(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (objF != null) {
                    switch (field.f7999f) {
                        case 8:
                            sb.append("\"");
                            sb.append(r3.b.a((byte[]) objF));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(r3.b.b((byte[]) objF));
                            sb.append("\"");
                            break;
                        case 10:
                            i.a(sb, (HashMap) objF);
                            break;
                        default:
                            if (field.f7998c) {
                                ArrayList arrayList = (ArrayList) objF;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i10 = 0; i10 < size; i10++) {
                                    if (i10 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i10);
                                    if (obj != null) {
                                        g(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                            } else {
                                g(sb, field, objF);
                            }
                            break;
                    }
                } else {
                    sb.append(AbstractJsonLexerKt.NULL);
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
