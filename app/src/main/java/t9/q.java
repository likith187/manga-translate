package t9;

import java.util.List;
import java.util.RandomAccess;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends kotlin.collections.c implements RandomAccess {

    /* JADX INFO: renamed from: c */
    public static final a f15773c = new a(null);

    /* JADX INFO: renamed from: a */
    private final g[] f15774a;

    /* JADX INFO: renamed from: b */
    private final int[] f15775b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(long j10, d dVar, int i10, List list, int i11, int i12, List list2) {
            int i13;
            int i14;
            int i15;
            int i16;
            d dVar2;
            int i17 = i10;
            if (i11 >= i12) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            for (int i18 = i11; i18 < i12; i18++) {
                if (((g) list.get(i18)).size() < i17) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            g gVar = (g) list.get(i11);
            g gVar2 = (g) list.get(i12 - 1);
            int i19 = -1;
            if (i17 == gVar.size()) {
                int iIntValue = ((Number) list2.get(i11)).intValue();
                int i20 = i11 + 1;
                g gVar3 = (g) list.get(i20);
                i13 = i20;
                i14 = iIntValue;
                gVar = gVar3;
            } else {
                i13 = i11;
                i14 = -1;
            }
            if (gVar.getByte(i17) == gVar2.getByte(i17)) {
                int iMin = Math.min(gVar.size(), gVar2.size());
                int i21 = 0;
                for (int i22 = i17; i22 < iMin && gVar.getByte(i22) == gVar2.getByte(i22); i22++) {
                    i21++;
                }
                long jC = j10 + c(dVar) + ((long) 2) + ((long) i21) + 1;
                dVar.L(-i21);
                dVar.L(i14);
                int i23 = i21 + i17;
                while (i17 < i23) {
                    dVar.L(gVar.getByte(i17) & 255);
                    i17++;
                }
                if (i13 + 1 == i12) {
                    if (i23 != ((g) list.get(i13)).size()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    dVar.L(((Number) list2.get(i13)).intValue());
                    return;
                } else {
                    d dVar3 = new d();
                    dVar.L(((int) (c(dVar3) + jC)) * (-1));
                    a(jC, dVar3, i23, list, i13, i12, list2);
                    dVar.N0(dVar3);
                    return;
                }
            }
            int i24 = 1;
            for (int i25 = i13 + 1; i25 < i12; i25++) {
                if (((g) list.get(i25 - 1)).getByte(i17) != ((g) list.get(i25)).getByte(i17)) {
                    i24++;
                }
            }
            long jC2 = j10 + c(dVar) + ((long) 2) + ((long) (i24 * 2));
            dVar.L(i24);
            dVar.L(i14);
            for (int i26 = i13; i26 < i12; i26++) {
                byte b10 = ((g) list.get(i26)).getByte(i17);
                if (i26 == i13 || b10 != ((g) list.get(i26 - 1)).getByte(i17)) {
                    dVar.L(b10 & 255);
                }
            }
            d dVar4 = new d();
            while (i13 < i12) {
                byte b11 = ((g) list.get(i13)).getByte(i17);
                int i27 = i13 + 1;
                int i28 = i27;
                while (true) {
                    if (i28 >= i12) {
                        i15 = i12;
                        break;
                    } else {
                        if (b11 != ((g) list.get(i28)).getByte(i17)) {
                            i15 = i28;
                            break;
                        }
                        i28++;
                    }
                }
                if (i27 == i15 && i17 + 1 == ((g) list.get(i13)).size()) {
                    dVar.L(((Number) list2.get(i13)).intValue());
                    i16 = i15;
                    dVar2 = dVar4;
                } else {
                    dVar.L(((int) (jC2 + c(dVar4))) * i19);
                    i16 = i15;
                    dVar2 = dVar4;
                    a(jC2, dVar4, i17 + 1, list, i13, i15, list2);
                }
                dVar4 = dVar2;
                i13 = i16;
                i19 = -1;
            }
            dVar.N0(dVar4);
        }

        static /* synthetic */ void b(a aVar, long j10, d dVar, int i10, List list, int i11, int i12, List list2, int i13, Object obj) {
            aVar.a((i13 & 1) != 0 ? 0L : j10, dVar, (i13 & 4) != 0 ? 0 : i10, list, (i13 & 16) != 0 ? 0 : i11, (i13 & 32) != 0 ? list.size() : i12, list2);
        }

        private final long c(d dVar) {
            return dVar.G0() / ((long) 4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:95:0x00d7, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final t9.q d(t9.g... r17) {
            /*
                Method dump skipped, instruction units count: 288
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: t9.q.a.d(t9.g[]):t9.q");
        }

        private a() {
        }
    }

    public /* synthetic */ q(g[] gVarArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVarArr, iArr);
    }

    public static final q h(g... gVarArr) {
        return f15773c.d(gVarArr);
    }

    public /* bridge */ boolean a(g gVar) {
        return super.contains(gVar);
    }

    @Override // kotlin.collections.c, java.util.List
    /* JADX INFO: renamed from: c */
    public g get(int i10) {
        return this.f15774a[i10];
    }

    @Override // kotlin.collections.a, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof g) {
            return a((g) obj);
        }
        return false;
    }

    public final g[] d() {
        return this.f15774a;
    }

    public final int[] e() {
        return this.f15775b;
    }

    public /* bridge */ int f(g gVar) {
        return super.indexOf(gVar);
    }

    public /* bridge */ int g(g gVar) {
        return super.lastIndexOf(gVar);
    }

    @Override // kotlin.collections.a
    public int getSize() {
        return this.f15774a.length;
    }

    @Override // kotlin.collections.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof g) {
            return f((g) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof g) {
            return g((g) obj);
        }
        return -1;
    }

    private q(g[] gVarArr, int[] iArr) {
        this.f15774a = gVarArr;
        this.f15775b = iArr;
    }
}
