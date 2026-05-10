package com.coloros.translate.screen.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.component.responsiveui.ResponsiveUIModel;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6096g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f6097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f6098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6099c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f6102f;

    public static final class a {

        /* JADX INFO: renamed from: com.coloros.translate.screen.widget.w$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0090a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f6103a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final /* synthetic */ int[] f6104b;

            static {
                int[] iArr = new int[b.values().length];
                try {
                    iArr[b.FULL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[b.LEFT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[b.TOP.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[b.RIGHT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[b.BOTTOM.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                f6103a = iArr;
                int[] iArr2 = new int[b.EnumC0223b.values().length];
                try {
                    iArr2[b.EnumC0223b.SMALL.ordinal()] = 1;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[b.EnumC0223b.MEDIUM.ordinal()] = 2;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr2[b.EnumC0223b.LARGE.ordinal()] = 3;
                } catch (NoSuchFieldError unused8) {
                }
                f6104b = iArr2;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Rect a(b bVar) {
            Rect rect = new Rect();
            if (bVar == null || bVar == b.FULL) {
                com.coloros.translate.screen.utils.w.b(rect);
            }
            return rect;
        }

        private final List b() {
            try {
                r.a aVar = n8.r.Companion;
                if (Build.VERSION.SDK_INT < 33) {
                    return null;
                }
                return com.coloros.translate.screen.utils.w.INSTANCE.c().getSplitAreaRegion();
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                n8.r.m59constructorimpl(n8.s.a(th));
                return null;
            }
        }

        private final int c(Context context) {
            if (com.coloros.translate.screen.utils.k.f(context) && context.getResources().getConfiguration().orientation == 2) {
                return 0;
            }
            return com.coloros.translate.screen.utils.k.a(context);
        }

        private final int d(Context context, b.EnumC0223b enumC0223b, Rect rect) {
            int iWidth = rect.width();
            int iHeight = rect.height();
            if (iWidth <= 0 || iHeight <= 0) {
                return 0;
            }
            try {
                int i10 = C0090a.f6104b[enumC0223b.ordinal()];
                if (i10 == 1) {
                    return rect.width();
                }
                if (i10 == 2) {
                    return y8.a.b(COUIResponsiveUtils.calculateWidth(new ResponsiveUIModel(context, iWidth, iHeight), 6, 0, false));
                }
                if (i10 == 3) {
                    return y8.a.b(COUIResponsiveUtils.calculateWidth(new ResponsiveUIModel(context, iWidth, iHeight), 8, 0, false));
                }
                throw new n8.o();
            } catch (Exception unused) {
                return rect.width();
            }
        }

        public static /* synthetic */ w f(a aVar, Context context, b bVar, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                bVar = null;
            }
            return aVar.e(context, bVar);
        }

        public static /* synthetic */ w h(a aVar, Context context, b bVar, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                bVar = null;
            }
            return aVar.g(context, bVar);
        }

        private final int i(Context context) {
            try {
                r.a aVar = n8.r.Companion;
                Resources resources = context.getApplicationContext().getResources();
                Object obj = Class.forName("com.android.internal.R$dimen").getField("docked_stack_divider_thickness").get(null);
                kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Int");
                return y8.a.b(resources.getDimension(((Integer) obj).intValue()));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
                if (thM62exceptionOrNullimpl == null) {
                    return 0;
                }
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationFullParams", "getSplitGap fail:" + thM62exceptionOrNullimpl);
                return 0;
            }
        }

        public final w e(Context context, b bVar) {
            b bVar2;
            b.EnumC0223b enumC0223bC;
            b bVar3;
            kotlin.jvm.internal.r.e(context, "context");
            int[] iArrD = com.coloros.translate.screen.utils.k.d(context);
            List<Rect> listB = b();
            Rect rectA = a(bVar);
            Rect rect = new Rect();
            int i10 = i(context);
            int iC = c(context);
            if (listB == null || listB.size() != 2) {
                b bVar4 = b.FULL;
                rectA.set(0, com.coloros.translate.screen.utils.k.e(context), iArrD[0], iArrD[1] - iC);
                rect.set(0, 0, iArrD[0], iArrD[1]);
                bVar2 = bVar4;
                enumC0223bC = com.coloros.translate.screen.utils.g.c();
            } else {
                if (bVar == null || bVar == (bVar3 = b.FULL)) {
                    rect.set(rectA);
                    if (rectA.width() == iArrD[0]) {
                        int i11 = rectA.top;
                        if (i11 == 0 || i11 <= com.coloros.translate.screen.utils.k.e(context)) {
                            bVar3 = b.TOP;
                            rect.bottom += i10;
                            rectA.bottom += i10;
                        } else {
                            bVar3 = b.BOTTOM;
                            rect.top -= i10;
                        }
                    } else if (rectA.left == 0) {
                        bVar3 = b.LEFT;
                        rect.right += i10;
                        rectA.top = com.coloros.translate.screen.utils.k.e(context);
                        rectA.bottom -= iC;
                    } else {
                        bVar3 = b.RIGHT;
                        rect.left -= i10;
                        rectA.top = com.coloros.translate.screen.utils.k.e(context);
                        rectA.bottom -= iC;
                    }
                } else {
                    int i12 = C0090a.f6103a[bVar.ordinal()];
                    if (i12 != 1) {
                        if (i12 == 2) {
                            for (Rect rect2 : listB) {
                                if (rect2.left == 0) {
                                    rectA.set(rect2);
                                    rect.set(rectA);
                                    bVar3 = b.LEFT;
                                    rect.right += i10;
                                    rectA.top = com.coloros.translate.screen.utils.k.e(context);
                                    rectA.bottom -= iC;
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        if (i12 == 3) {
                            for (Rect rect3 : listB) {
                                if (rect3.top == 0) {
                                    rectA.set(rect3);
                                    rect.set(rectA);
                                    bVar3 = b.TOP;
                                    rect.bottom += i10;
                                    rectA.top = com.coloros.translate.screen.utils.k.e(context);
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        if (i12 == 4) {
                            for (Rect rect4 : listB) {
                                if (rect4.left != 0) {
                                    rectA.set(rect4);
                                    rect.set(rectA);
                                    bVar3 = b.RIGHT;
                                    rect.left -= i10;
                                    rectA.top = com.coloros.translate.screen.utils.k.e(context);
                                    rectA.bottom -= iC;
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        if (i12 != 5) {
                            throw new n8.o();
                        }
                        for (Rect rect5 : listB) {
                            if (rect5.top != 0) {
                                rectA.set(rect5);
                                rect.set(rectA);
                                bVar3 = b.BOTTOM;
                                rect.top -= i10;
                                rectA.bottom -= com.coloros.translate.screen.utils.k.a(context);
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                }
                float fWidth = rectA.width() / context.getResources().getDisplayMetrics().density;
                enumC0223bC = fWidth < 600.0f ? b.EnumC0223b.SMALL : fWidth < 840.0f ? b.EnumC0223b.MEDIUM : b.EnumC0223b.LARGE;
                bVar2 = bVar3;
            }
            int iD = d(context, enumC0223bC, rectA);
            int i13 = rectA.left;
            return new w(rectA, rect, iD, bVar2 == b.RIGHT ? ((rectA.width() - iD) / 2) + i13 : (rectA.width() - iD) / 2, i13, bVar2, null);
        }

        public final w g(Context context, b bVar) {
            b bVar2;
            b.EnumC0223b enumC0223bC;
            int iWidth;
            int i10;
            kotlin.jvm.internal.r.e(context, "context");
            int[] iArrD = com.coloros.translate.screen.utils.k.d(context);
            List<Rect> listB = b();
            Rect rectA = a(bVar);
            Rect rect = new Rect();
            int i11 = i(context);
            if (listB == null || listB.size() != 2) {
                b bVar3 = b.FULL;
                rectA.set(0, 0, iArrD[0], iArrD[1]);
                rect.set(0, 0, iArrD[0], iArrD[1]);
                bVar2 = bVar3;
                enumC0223bC = com.coloros.translate.screen.utils.g.c();
            } else {
                if (bVar == null || bVar == (bVar2 = b.FULL)) {
                    rect.set(rectA);
                    if (rectA.width() == iArrD[0]) {
                        int i12 = rectA.top;
                        if (i12 == 0 || i12 <= com.coloros.translate.screen.utils.k.e(context)) {
                            bVar2 = b.TOP;
                            rect.bottom += i11;
                            rectA.bottom += i11;
                        } else {
                            bVar2 = b.BOTTOM;
                            rect.top -= i11;
                        }
                    } else if (rectA.left == 0) {
                        bVar2 = b.LEFT;
                        rect.right += i11;
                    } else {
                        bVar2 = b.RIGHT;
                        rect.left -= i11;
                    }
                } else {
                    int i13 = C0090a.f6103a[bVar.ordinal()];
                    if (i13 != 1) {
                        if (i13 == 2) {
                            for (Rect rect2 : listB) {
                                if (rect2.left == 0) {
                                    rectA.set(rect2);
                                    rect.set(rectA);
                                    bVar2 = b.LEFT;
                                    rect.right += i11;
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        if (i13 == 3) {
                            for (Rect rect3 : listB) {
                                if (rect3.top == 0) {
                                    rectA.set(rect3);
                                    rect.set(rectA);
                                    bVar2 = b.TOP;
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        if (i13 == 4) {
                            for (Rect rect4 : listB) {
                                if (rect4.left != 0) {
                                    rectA.set(rect4);
                                    rect.set(rectA);
                                    bVar2 = b.RIGHT;
                                    rect.left -= i11;
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        if (i13 != 5) {
                            throw new n8.o();
                        }
                        for (Rect rect5 : listB) {
                            if (rect5.top != 0) {
                                rectA.set(rect5);
                                rect.set(rectA);
                                bVar2 = b.BOTTOM;
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                }
                float fWidth = rectA.width() / context.getResources().getDisplayMetrics().density;
                enumC0223bC = fWidth < 600.0f ? b.EnumC0223b.SMALL : fWidth < 840.0f ? b.EnumC0223b.MEDIUM : b.EnumC0223b.LARGE;
            }
            int iD = d(context, enumC0223bC, rectA);
            if (C0090a.f6103a[bVar2.ordinal()] == 4) {
                iWidth = rectA.left + ((rectA.width() - iD) / 2);
                i10 = rectA.left;
            } else {
                iWidth = (rectA.width() - iD) / 2;
                i10 = 0;
            }
            return new w(rectA, rect, iD, iWidth, i10, bVar2, null);
        }

        public final boolean j() {
            List listB = b();
            return (listB != null ? listB.size() : 0) > 1;
        }

        private a() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ r8.a $ENTRIES;
        private static final /* synthetic */ b[] $VALUES;
        public static final b FULL = new b("FULL", 0);
        public static final b LEFT = new b("LEFT", 1);
        public static final b TOP = new b("TOP", 2);
        public static final b RIGHT = new b("RIGHT", 3);
        public static final b BOTTOM = new b("BOTTOM", 4);

        private static final /* synthetic */ b[] $values() {
            return new b[]{FULL, LEFT, TOP, RIGHT, BOTTOM};
        }

        static {
            b[] bVarArr$values = $values();
            $VALUES = bVarArr$values;
            $ENTRIES = r8.b.a(bVarArr$values);
        }

        private b(String str, int i10) {
        }

        public static r8.a getEntries() {
            return $ENTRIES;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public /* synthetic */ w(Rect rect, Rect rect2, int i10, int i11, int i12, b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(rect, rect2, i10, i11, i12, bVar);
    }

    public final b a() {
        return this.f6102f;
    }

    public final Rect b() {
        return this.f6097a;
    }

    public final int c() {
        return this.f6101e;
    }

    private w(Rect rect, Rect rect2, int i10, int i11, int i12, b bVar) {
        this.f6097a = rect;
        this.f6098b = rect2;
        this.f6099c = i10;
        this.f6100d = i11;
        this.f6101e = i12;
        this.f6102f = bVar;
    }
}
