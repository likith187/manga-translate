package com.google.android.gms.internal.mlkit_common;

import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes.dex */
final class p extends h {
    static final h zza = new p(null, new Object[0], 0);
    final transient Object[] zzb;

    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private p(@CheckForNull Object obj, Object[] objArr, int i10) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    static p zzg(int i10, Object[] objArr, g gVar) {
        int iHighestOneBit;
        short[] sArr;
        char c10;
        ?? r62;
        ?? r22;
        int i11 = i10;
        if (i11 == 0) {
            return (p) zza;
        }
        f fVar = null;
        ?? r23 = 0;
        f fVar2 = null;
        f fVar3 = null;
        if (i11 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            v0.a(obj, obj2);
            return new p(null, objArr, 1);
        }
        s0.b(i11, objArr.length >> 1, "index");
        int iMax = Math.max(i11, 2);
        if (iMax < 751619276) {
            iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
        } else {
            iHighestOneBit = 1073741824;
            if (iMax >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i11 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            Object obj4 = objArr[1];
            Objects.requireNonNull(obj4);
            v0.a(obj3, obj4);
            i11 = 1;
            c10 = 2;
        } else {
            int i12 = iHighestOneBit - 1;
            byte b10 = -1;
            if (iHighestOneBit <= 128) {
                byte[] bArr = new byte[iHighestOneBit];
                Arrays.fill(bArr, (byte) -1);
                int i13 = 0;
                for (int i14 = 0; i14 < i11; i14++) {
                    int i15 = i13 + i13;
                    int i16 = i14 + i14;
                    Object obj5 = objArr[i16];
                    Objects.requireNonNull(obj5);
                    Object obj6 = objArr[i16 ^ 1];
                    Objects.requireNonNull(obj6);
                    v0.a(obj5, obj6);
                    int iA = x0.a(obj5.hashCode());
                    while (true) {
                        int i17 = iA & i12;
                        int i18 = bArr[i17] & 255;
                        if (i18 == 255) {
                            bArr[i17] = (byte) i15;
                            if (i13 < i14) {
                                objArr[i15] = obj5;
                                objArr[i15 ^ 1] = obj6;
                            }
                            i13++;
                        } else {
                            if (obj5.equals(objArr[i18 == true ? 1 : 0])) {
                                int i19 = ~i18;
                                Object obj7 = objArr[i19 == true ? 1 : 0];
                                Objects.requireNonNull(obj7);
                                f fVar4 = new f(obj5, obj6, obj7);
                                objArr[i19 == true ? 1 : 0] = obj6;
                                fVar2 = fVar4;
                                break;
                            }
                            iA = i17 + 1;
                        }
                    }
                }
                if (i13 == i11) {
                    r22 = bArr;
                    c10 = 2;
                    r23 = r22;
                } else {
                    c10 = 2;
                    r23 = new Object[]{bArr, Integer.valueOf(i13), fVar2};
                }
            } else if (iHighestOneBit <= 32768) {
                sArr = new short[iHighestOneBit];
                Arrays.fill(sArr, (short) -1);
                int i20 = 0;
                for (int i21 = 0; i21 < i11; i21++) {
                    int i22 = i20 + i20;
                    int i23 = i21 + i21;
                    Object obj8 = objArr[i23];
                    Objects.requireNonNull(obj8);
                    Object obj9 = objArr[i23 ^ 1];
                    Objects.requireNonNull(obj9);
                    v0.a(obj8, obj9);
                    int iA2 = x0.a(obj8.hashCode());
                    while (true) {
                        int i24 = iA2 & i12;
                        char c11 = (char) sArr[i24];
                        if (c11 == 65535) {
                            sArr[i24] = (short) i22;
                            if (i20 < i21) {
                                objArr[i22] = obj8;
                                objArr[i22 ^ 1] = obj9;
                            }
                            i20++;
                        } else {
                            if (obj8.equals(objArr[c11])) {
                                int i25 = c11 ^ 1;
                                Object obj10 = objArr[i25 == true ? 1 : 0];
                                Objects.requireNonNull(obj10);
                                f fVar5 = new f(obj8, obj9, obj10);
                                objArr[i25 == true ? 1 : 0] = obj9;
                                fVar3 = fVar5;
                                break;
                            }
                            iA2 = i24 + 1;
                        }
                    }
                }
                if (i20 != i11) {
                    c10 = 2;
                    r62 = new Object[]{sArr, Integer.valueOf(i20), fVar3};
                    r23 = r62;
                }
                r22 = sArr;
                c10 = 2;
                r23 = r22;
            } else {
                sArr = new int[iHighestOneBit];
                Arrays.fill((int[]) sArr, -1);
                int i26 = 0;
                int i27 = 0;
                while (i26 < i11) {
                    int i28 = i27 + i27;
                    int i29 = i26 + i26;
                    Object obj11 = objArr[i29];
                    Objects.requireNonNull(obj11);
                    Object obj12 = objArr[i29 ^ 1];
                    Objects.requireNonNull(obj12);
                    v0.a(obj11, obj12);
                    int iA3 = x0.a(obj11.hashCode());
                    while (true) {
                        int i30 = iA3 & i12;
                        ?? r15 = sArr[i30];
                        if (r15 == b10) {
                            sArr[i30] = i28;
                            if (i27 < i26) {
                                objArr[i28] = obj11;
                                objArr[i28 ^ 1] = obj12;
                            }
                            i27++;
                        } else {
                            if (obj11.equals(objArr[r15])) {
                                int i31 = r15 ^ 1;
                                Object obj13 = objArr[i31 == true ? 1 : 0];
                                Objects.requireNonNull(obj13);
                                f fVar6 = new f(obj11, obj12, obj13);
                                objArr[i31 == true ? 1 : 0] = obj12;
                                fVar = fVar6;
                                break;
                            }
                            iA3 = i30 + 1;
                            b10 = -1;
                        }
                    }
                    i26++;
                    b10 = -1;
                }
                if (i27 != i11) {
                    c10 = 2;
                    r62 = new Object[]{sArr, Integer.valueOf(i27), fVar};
                    r23 = r62;
                }
                r22 = sArr;
                c10 = 2;
                r23 = r22;
            }
        }
        if (r23 instanceof Object[]) {
            throw ((f) ((Object[]) r23)[c10]).a();
        }
        return new p(r23, objArr, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0003  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0003 A[EDGE_INSN: B:44:0x0003->B:4:0x0003 BREAK  A[LOOP:0: B:16:0x0038->B:22:0x004e], EDGE_INSN: B:46:0x0003->B:4:0x0003 BREAK  A[LOOP:1: B:26:0x0063->B:32:0x007a], EDGE_INSN: B:48:0x0003->B:4:0x0003 BREAK  A[LOOP:2: B:34:0x0089->B:43:0x00a0]] */
    @Override // com.google.android.gms.internal.mlkit_common.h, java.util.Map
    @javax.annotation.CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object get(@javax.annotation.CheckForNull java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L6
        L3:
            r8 = r0
            goto L9c
        L6:
            int r1 = r8.zzd
            java.lang.Object[] r2 = r8.zzb
            r3 = 1
            if (r1 != r3) goto L20
            r8 = 0
            r8 = r2[r8]
            java.util.Objects.requireNonNull(r8)
            boolean r8 = r8.equals(r9)
            if (r8 == 0) goto L3
            r8 = r2[r3]
            java.util.Objects.requireNonNull(r8)
            goto L9c
        L20:
            java.lang.Object r8 = r8.zzc
            if (r8 != 0) goto L25
            goto L3
        L25:
            boolean r1 = r8 instanceof byte[]
            r4 = -1
            if (r1 == 0) goto L51
            r1 = r8
            byte[] r1 = (byte[]) r1
            int r8 = r1.length
            int r5 = r8 + (-1)
            int r8 = r9.hashCode()
            int r8 = com.google.android.gms.internal.mlkit_common.x0.a(r8)
        L38:
            r8 = r8 & r5
            r4 = r1[r8]
            r6 = 255(0xff, float:3.57E-43)
            r4 = r4 & r6
            if (r4 != r6) goto L41
            goto L3
        L41:
            r6 = r2[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L4e
            r8 = r4 ^ 1
            r8 = r2[r8]
            goto L9c
        L4e:
            int r8 = r8 + 1
            goto L38
        L51:
            boolean r1 = r8 instanceof short[]
            if (r1 == 0) goto L7d
            r1 = r8
            short[] r1 = (short[]) r1
            int r8 = r1.length
            int r5 = r8 + (-1)
            int r8 = r9.hashCode()
            int r8 = com.google.android.gms.internal.mlkit_common.x0.a(r8)
        L63:
            r8 = r8 & r5
            short r4 = r1[r8]
            char r4 = (char) r4
            r6 = 65535(0xffff, float:9.1834E-41)
            if (r4 != r6) goto L6d
            goto L3
        L6d:
            r6 = r2[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L7a
            r8 = r4 ^ 1
            r8 = r2[r8]
            goto L9c
        L7a:
            int r8 = r8 + 1
            goto L63
        L7d:
            int[] r8 = (int[]) r8
            int r1 = r8.length
            int r1 = r1 + r4
            int r5 = r9.hashCode()
            int r5 = com.google.android.gms.internal.mlkit_common.x0.a(r5)
        L89:
            r5 = r5 & r1
            r6 = r8[r5]
            if (r6 != r4) goto L90
            goto L3
        L90:
            r7 = r2[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto La0
            r8 = r6 ^ 1
            r8 = r2[r8]
        L9c:
            if (r8 != 0) goto L9f
            return r0
        L9f:
            return r8
        La0:
            int r5 = r5 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.p.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_common.h
    final b zza() {
        return new o(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_common.h
    final i zzd() {
        return new m(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_common.h
    final i zze() {
        return new n(this, new o(this.zzb, 0, this.zzd));
    }
}
