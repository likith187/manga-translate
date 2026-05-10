package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import n3.a;
import r3.h;
import r3.i;

/* JADX INFO: loaded from: classes.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f8007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Parcel f8008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f8009c = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zan f8010f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f8011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f8013j;

    SafeParcelResponse(int i10, Parcel parcel, zan zanVar) {
        this.f8007a = i10;
        this.f8008b = (Parcel) k.g(parcel);
        this.f8010f = zanVar;
        this.f8011h = zanVar == null ? null : zanVar.D0();
        this.f8012i = 2;
    }

    private final void j(StringBuilder sb, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) entry.getValue()).D0(), entry);
        }
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        int iF = n3.a.F(parcel);
        boolean z10 = false;
        while (parcel.dataPosition() < iF) {
            int iY = n3.a.y(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(n3.a.u(iY));
            if (entry2 != null) {
                if (z10) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (field.K0()) {
                    int i10 = field.f7999f;
                    switch (i10) {
                        case 0:
                            m(sb, field, FastJsonResponse.f(field, Integer.valueOf(n3.a.A(parcel, iY))));
                            break;
                        case 1:
                            m(sb, field, FastJsonResponse.f(field, n3.a.c(parcel, iY)));
                            break;
                        case 2:
                            m(sb, field, FastJsonResponse.f(field, Long.valueOf(n3.a.B(parcel, iY))));
                            break;
                        case 3:
                            m(sb, field, FastJsonResponse.f(field, Float.valueOf(n3.a.x(parcel, iY))));
                            break;
                        case 4:
                            m(sb, field, FastJsonResponse.f(field, Double.valueOf(n3.a.w(parcel, iY))));
                            break;
                        case 5:
                            m(sb, field, FastJsonResponse.f(field, n3.a.a(parcel, iY)));
                            break;
                        case 6:
                            m(sb, field, FastJsonResponse.f(field, Boolean.valueOf(n3.a.v(parcel, iY))));
                            break;
                        case 7:
                            m(sb, field, FastJsonResponse.f(field, n3.a.o(parcel, iY)));
                            break;
                        case 8:
                        case 9:
                            m(sb, field, FastJsonResponse.f(field, n3.a.g(parcel, iY)));
                            break;
                        case 10:
                            Bundle bundleF = n3.a.f(parcel, iY);
                            HashMap map2 = new HashMap();
                            for (String str2 : bundleF.keySet()) {
                                map2.put(str2, (String) k.g(bundleF.getString(str2)));
                            }
                            m(sb, field, FastJsonResponse.f(field, map2));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException("Unknown field out type = " + i10);
                    }
                } else if (field.f8000h) {
                    sb.append("[");
                    switch (field.f7999f) {
                        case 0:
                            r3.a.e(sb, n3.a.j(parcel, iY));
                            break;
                        case 1:
                            r3.a.g(sb, n3.a.d(parcel, iY));
                            break;
                        case 2:
                            r3.a.f(sb, n3.a.k(parcel, iY));
                            break;
                        case 3:
                            r3.a.d(sb, n3.a.i(parcel, iY));
                            break;
                        case 4:
                            r3.a.c(sb, n3.a.h(parcel, iY));
                            break;
                        case 5:
                            r3.a.g(sb, n3.a.b(parcel, iY));
                            break;
                        case 6:
                            r3.a.h(sb, n3.a.e(parcel, iY));
                            break;
                        case 7:
                            r3.a.i(sb, n3.a.p(parcel, iY));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] parcelArrM = n3.a.m(parcel, iY);
                            int length = parcelArrM.length;
                            for (int i11 = 0; i11 < length; i11++) {
                                if (i11 > 0) {
                                    sb.append(",");
                                }
                                parcelArrM[i11].setDataPosition(0);
                                j(sb, field.I0(), parcelArrM[i11]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f7999f) {
                        case 0:
                            sb.append(n3.a.A(parcel, iY));
                            break;
                        case 1:
                            sb.append(n3.a.c(parcel, iY));
                            break;
                        case 2:
                            sb.append(n3.a.B(parcel, iY));
                            break;
                        case 3:
                            sb.append(n3.a.x(parcel, iY));
                            break;
                        case 4:
                            sb.append(n3.a.w(parcel, iY));
                            break;
                        case 5:
                            sb.append(n3.a.a(parcel, iY));
                            break;
                        case 6:
                            sb.append(n3.a.v(parcel, iY));
                            break;
                        case 7:
                            String strO = n3.a.o(parcel, iY);
                            sb.append("\"");
                            sb.append(h.a(strO));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] bArrG = n3.a.g(parcel, iY);
                            sb.append("\"");
                            sb.append(r3.b.a(bArrG));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] bArrG2 = n3.a.g(parcel, iY);
                            sb.append("\"");
                            sb.append(r3.b.b(bArrG2));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle bundleF2 = n3.a.f(parcel, iY);
                            Set<String> setKeySet = bundleF2.keySet();
                            sb.append("{");
                            boolean z11 = true;
                            for (String str3 : setKeySet) {
                                if (!z11) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\":\"");
                                sb.append(h.a(bundleF2.getString(str3)));
                                sb.append("\"");
                                z11 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel parcelL = n3.a.l(parcel, iY);
                            parcelL.setDataPosition(0);
                            j(sb, field.I0(), parcelL);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z10 = true;
            }
        }
        if (parcel.dataPosition() == iF) {
            sb.append(AbstractJsonLexerKt.END_OBJ);
            return;
        }
        throw new a.C0182a("Overread allowed size end=" + iF, parcel);
    }

    private static final void l(StringBuilder sb, int i10, Object obj) {
        switch (i10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(h.a(k.g(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(r3.b.a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(r3.b.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                i.a(sb, (HashMap) k.g(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i10);
        }
    }

    private static final void m(StringBuilder sb, FastJsonResponse.Field field, Object obj) {
        if (!field.f7998c) {
            l(sb, field.f7997b, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != 0) {
                sb.append(",");
            }
            l(sb, field.f7997b, arrayList.get(i10));
        }
        sb.append("]");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map a() {
        zan zanVar = this.f8010f;
        if (zanVar == null) {
            return null;
        }
        return zanVar.E0((String) k.g(this.f8011h));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final Object c(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean e(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final Parcel h() {
        int i10 = this.f8012i;
        if (i10 == 0) {
            int iA = n3.b.a(this.f8008b);
            this.f8013j = iA;
            n3.b.b(this.f8008b, iA);
            this.f8012i = 2;
        } else if (i10 == 1) {
            n3.b.b(this.f8008b, this.f8013j);
            this.f8012i = 2;
        }
        return this.f8008b;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        k.h(this.f8010f, "Cannot convert to JSON on client side.");
        Parcel parcelH = h();
        parcelH.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        j(sb, (Map) k.g(this.f8010f.E0((String) k.g(this.f8011h))), parcelH);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f8007a;
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, i11);
        n3.b.k(parcel, 2, h(), false);
        int i12 = this.f8009c;
        n3.b.l(parcel, 3, i12 != 0 ? i12 != 1 ? this.f8010f : this.f8010f : null, i10, false);
        n3.b.b(parcel, iA);
    }
}
