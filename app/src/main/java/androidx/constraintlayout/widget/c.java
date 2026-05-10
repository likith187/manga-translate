package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.coui.appcompat.preference.COUIPreferenceUtils;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.appcompat.version.COUIVersionUtil;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import o.j;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: i */
    private static final int[] f1716i = {0, 4, 8};

    /* JADX INFO: renamed from: j */
    private static SparseIntArray f1717j = new SparseIntArray();

    /* JADX INFO: renamed from: k */
    private static SparseIntArray f1718k = new SparseIntArray();

    /* JADX INFO: renamed from: a */
    private boolean f1719a;

    /* JADX INFO: renamed from: b */
    public String f1720b;

    /* JADX INFO: renamed from: c */
    public String f1721c = "";

    /* JADX INFO: renamed from: d */
    private String[] f1722d = new String[0];

    /* JADX INFO: renamed from: e */
    public int f1723e = 0;

    /* JADX INFO: renamed from: f */
    private HashMap f1724f = new HashMap();

    /* JADX INFO: renamed from: g */
    private boolean f1725g = true;

    /* JADX INFO: renamed from: h */
    private HashMap f1726h = new HashMap();

    public static class a {

        /* JADX INFO: renamed from: a */
        int f1727a;

        /* JADX INFO: renamed from: b */
        String f1728b;

        /* JADX INFO: renamed from: c */
        public final d f1729c = new d();

        /* JADX INFO: renamed from: d */
        public final C0012c f1730d = new C0012c();

        /* JADX INFO: renamed from: e */
        public final b f1731e = new b();

        /* JADX INFO: renamed from: f */
        public final e f1732f = new e();

        /* JADX INFO: renamed from: g */
        public HashMap f1733g = new HashMap();

        /* JADX INFO: renamed from: h */
        C0011a f1734h;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.c$a$a */
        static class C0011a {

            /* JADX INFO: renamed from: a */
            int[] f1735a = new int[10];

            /* JADX INFO: renamed from: b */
            int[] f1736b = new int[10];

            /* JADX INFO: renamed from: c */
            int f1737c = 0;

            /* JADX INFO: renamed from: d */
            int[] f1738d = new int[10];

            /* JADX INFO: renamed from: e */
            float[] f1739e = new float[10];

            /* JADX INFO: renamed from: f */
            int f1740f = 0;

            /* JADX INFO: renamed from: g */
            int[] f1741g = new int[5];

            /* JADX INFO: renamed from: h */
            String[] f1742h = new String[5];

            /* JADX INFO: renamed from: i */
            int f1743i = 0;

            /* JADX INFO: renamed from: j */
            int[] f1744j = new int[4];

            /* JADX INFO: renamed from: k */
            boolean[] f1745k = new boolean[4];

            /* JADX INFO: renamed from: l */
            int f1746l = 0;

            C0011a() {
            }

            void a(int i10, float f10) {
                int i11 = this.f1740f;
                int[] iArr = this.f1738d;
                if (i11 >= iArr.length) {
                    this.f1738d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f1739e;
                    this.f1739e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f1738d;
                int i12 = this.f1740f;
                iArr2[i12] = i10;
                float[] fArr2 = this.f1739e;
                this.f1740f = i12 + 1;
                fArr2[i12] = f10;
            }

            void b(int i10, int i11) {
                int i12 = this.f1737c;
                int[] iArr = this.f1735a;
                if (i12 >= iArr.length) {
                    this.f1735a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f1736b;
                    this.f1736b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f1735a;
                int i13 = this.f1737c;
                iArr3[i13] = i10;
                int[] iArr4 = this.f1736b;
                this.f1737c = i13 + 1;
                iArr4[i13] = i11;
            }

            void c(int i10, String str) {
                int i11 = this.f1743i;
                int[] iArr = this.f1741g;
                if (i11 >= iArr.length) {
                    this.f1741g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f1742h;
                    this.f1742h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f1741g;
                int i12 = this.f1743i;
                iArr2[i12] = i10;
                String[] strArr2 = this.f1742h;
                this.f1743i = i12 + 1;
                strArr2[i12] = str;
            }

            void d(int i10, boolean z10) {
                int i11 = this.f1746l;
                int[] iArr = this.f1744j;
                if (i11 >= iArr.length) {
                    this.f1744j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f1745k;
                    this.f1745k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f1744j;
                int i12 = this.f1746l;
                iArr2[i12] = i10;
                boolean[] zArr2 = this.f1745k;
                this.f1746l = i12 + 1;
                zArr2[i12] = z10;
            }

            void e(a aVar) {
                for (int i10 = 0; i10 < this.f1737c; i10++) {
                    c.Q(aVar, this.f1735a[i10], this.f1736b[i10]);
                }
                for (int i11 = 0; i11 < this.f1740f; i11++) {
                    c.P(aVar, this.f1738d[i11], this.f1739e[i11]);
                }
                for (int i12 = 0; i12 < this.f1743i; i12++) {
                    c.R(aVar, this.f1741g[i12], this.f1742h[i12]);
                }
                for (int i13 = 0; i13 < this.f1746l; i13++) {
                    c.S(aVar, this.f1744j[i13], this.f1745k[i13]);
                }
            }
        }

        public void g(int i10, ConstraintLayout.b bVar) {
            this.f1727a = i10;
            b bVar2 = this.f1731e;
            bVar2.f1766j = bVar.leftToLeft;
            bVar2.f1768k = bVar.leftToRight;
            bVar2.f1770l = bVar.rightToLeft;
            bVar2.f1772m = bVar.rightToRight;
            bVar2.f1774n = bVar.topToTop;
            bVar2.f1776o = bVar.topToBottom;
            bVar2.f1778p = bVar.bottomToTop;
            bVar2.f1780q = bVar.bottomToBottom;
            bVar2.f1782r = bVar.baselineToBaseline;
            bVar2.f1783s = bVar.baselineToTop;
            bVar2.f1784t = bVar.baselineToBottom;
            bVar2.f1785u = bVar.startToEnd;
            bVar2.f1786v = bVar.startToStart;
            bVar2.f1787w = bVar.endToStart;
            bVar2.f1788x = bVar.endToEnd;
            bVar2.f1789y = bVar.horizontalBias;
            bVar2.f1790z = bVar.verticalBias;
            bVar2.A = bVar.dimensionRatio;
            bVar2.B = bVar.circleConstraint;
            bVar2.C = bVar.circleRadius;
            bVar2.D = bVar.circleAngle;
            bVar2.E = bVar.editorAbsoluteX;
            bVar2.F = bVar.editorAbsoluteY;
            bVar2.G = bVar.orientation;
            bVar2.f1762h = bVar.guidePercent;
            bVar2.f1758f = bVar.guideBegin;
            bVar2.f1760g = bVar.guideEnd;
            bVar2.f1754d = ((ViewGroup.MarginLayoutParams) bVar).width;
            bVar2.f1756e = ((ViewGroup.MarginLayoutParams) bVar).height;
            bVar2.H = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            bVar2.I = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            bVar2.J = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            bVar2.K = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            bVar2.N = bVar.baselineMargin;
            bVar2.V = bVar.verticalWeight;
            bVar2.W = bVar.horizontalWeight;
            bVar2.Y = bVar.verticalChainStyle;
            bVar2.X = bVar.horizontalChainStyle;
            bVar2.f1775n0 = bVar.constrainedWidth;
            bVar2.f1777o0 = bVar.constrainedHeight;
            bVar2.Z = bVar.matchConstraintDefaultWidth;
            bVar2.f1749a0 = bVar.matchConstraintDefaultHeight;
            bVar2.f1751b0 = bVar.matchConstraintMaxWidth;
            bVar2.f1753c0 = bVar.matchConstraintMaxHeight;
            bVar2.f1755d0 = bVar.matchConstraintMinWidth;
            bVar2.f1757e0 = bVar.matchConstraintMinHeight;
            bVar2.f1759f0 = bVar.matchConstraintPercentWidth;
            bVar2.f1761g0 = bVar.matchConstraintPercentHeight;
            bVar2.f1773m0 = bVar.constraintTag;
            bVar2.P = bVar.goneTopMargin;
            bVar2.R = bVar.goneBottomMargin;
            bVar2.O = bVar.goneLeftMargin;
            bVar2.Q = bVar.goneRightMargin;
            bVar2.T = bVar.goneStartMargin;
            bVar2.S = bVar.goneEndMargin;
            bVar2.U = bVar.goneBaselineMargin;
            bVar2.f1781q0 = bVar.wrapBehaviorInParent;
            bVar2.L = bVar.getMarginEnd();
            this.f1731e.M = bVar.getMarginStart();
        }

        public void h(int i10, Constraints.a aVar) {
            g(i10, aVar);
            this.f1729c.f1809d = aVar.f1669a;
            e eVar = this.f1732f;
            eVar.f1813b = aVar.f1672d;
            eVar.f1814c = aVar.f1673e;
            eVar.f1815d = aVar.f1674f;
            eVar.f1816e = aVar.f1675g;
            eVar.f1817f = aVar.f1676h;
            eVar.f1818g = aVar.f1677i;
            eVar.f1819h = aVar.f1678j;
            eVar.f1821j = aVar.f1679k;
            eVar.f1822k = aVar.f1680l;
            eVar.f1823l = aVar.f1681m;
            eVar.f1825n = aVar.f1671c;
            eVar.f1824m = aVar.f1670b;
        }

        public void i(ConstraintHelper constraintHelper, int i10, Constraints.a aVar) {
            h(i10, aVar);
            if (constraintHelper instanceof Barrier) {
                b bVar = this.f1731e;
                bVar.f1767j0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                bVar.f1763h0 = barrier.getType();
                this.f1731e.f1769k0 = barrier.getReferencedIds();
                this.f1731e.f1765i0 = barrier.getMargin();
            }
        }

        public void d(a aVar) {
            C0011a c0011a = this.f1734h;
            if (c0011a != null) {
                c0011a.e(aVar);
            }
        }

        public void e(ConstraintLayout.b bVar) {
            b bVar2 = this.f1731e;
            bVar.leftToLeft = bVar2.f1766j;
            bVar.leftToRight = bVar2.f1768k;
            bVar.rightToLeft = bVar2.f1770l;
            bVar.rightToRight = bVar2.f1772m;
            bVar.topToTop = bVar2.f1774n;
            bVar.topToBottom = bVar2.f1776o;
            bVar.bottomToTop = bVar2.f1778p;
            bVar.bottomToBottom = bVar2.f1780q;
            bVar.baselineToBaseline = bVar2.f1782r;
            bVar.baselineToTop = bVar2.f1783s;
            bVar.baselineToBottom = bVar2.f1784t;
            bVar.startToEnd = bVar2.f1785u;
            bVar.startToStart = bVar2.f1786v;
            bVar.endToStart = bVar2.f1787w;
            bVar.endToEnd = bVar2.f1788x;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = bVar2.H;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = bVar2.I;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = bVar2.J;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = bVar2.K;
            bVar.goneStartMargin = bVar2.T;
            bVar.goneEndMargin = bVar2.S;
            bVar.goneTopMargin = bVar2.P;
            bVar.goneBottomMargin = bVar2.R;
            bVar.horizontalBias = bVar2.f1789y;
            bVar.verticalBias = bVar2.f1790z;
            bVar.circleConstraint = bVar2.B;
            bVar.circleRadius = bVar2.C;
            bVar.circleAngle = bVar2.D;
            bVar.dimensionRatio = bVar2.A;
            bVar.editorAbsoluteX = bVar2.E;
            bVar.editorAbsoluteY = bVar2.F;
            bVar.verticalWeight = bVar2.V;
            bVar.horizontalWeight = bVar2.W;
            bVar.verticalChainStyle = bVar2.Y;
            bVar.horizontalChainStyle = bVar2.X;
            bVar.constrainedWidth = bVar2.f1775n0;
            bVar.constrainedHeight = bVar2.f1777o0;
            bVar.matchConstraintDefaultWidth = bVar2.Z;
            bVar.matchConstraintDefaultHeight = bVar2.f1749a0;
            bVar.matchConstraintMaxWidth = bVar2.f1751b0;
            bVar.matchConstraintMaxHeight = bVar2.f1753c0;
            bVar.matchConstraintMinWidth = bVar2.f1755d0;
            bVar.matchConstraintMinHeight = bVar2.f1757e0;
            bVar.matchConstraintPercentWidth = bVar2.f1759f0;
            bVar.matchConstraintPercentHeight = bVar2.f1761g0;
            bVar.orientation = bVar2.G;
            bVar.guidePercent = bVar2.f1762h;
            bVar.guideBegin = bVar2.f1758f;
            bVar.guideEnd = bVar2.f1760g;
            ((ViewGroup.MarginLayoutParams) bVar).width = bVar2.f1754d;
            ((ViewGroup.MarginLayoutParams) bVar).height = bVar2.f1756e;
            String str = bVar2.f1773m0;
            if (str != null) {
                bVar.constraintTag = str;
            }
            bVar.wrapBehaviorInParent = bVar2.f1781q0;
            bVar.setMarginStart(bVar2.M);
            bVar.setMarginEnd(this.f1731e.L);
            bVar.validate();
        }

        /* JADX INFO: renamed from: f */
        public a clone() {
            a aVar = new a();
            aVar.f1731e.a(this.f1731e);
            aVar.f1730d.a(this.f1730d);
            aVar.f1729c.a(this.f1729c);
            aVar.f1732f.a(this.f1732f);
            aVar.f1727a = this.f1727a;
            aVar.f1734h = this.f1734h;
            return aVar;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: r0 */
        private static SparseIntArray f1747r0;

        /* JADX INFO: renamed from: d */
        public int f1754d;

        /* JADX INFO: renamed from: e */
        public int f1756e;

        /* JADX INFO: renamed from: k0 */
        public int[] f1769k0;

        /* JADX INFO: renamed from: l0 */
        public String f1771l0;

        /* JADX INFO: renamed from: m0 */
        public String f1773m0;

        /* JADX INFO: renamed from: a */
        public boolean f1748a = false;

        /* JADX INFO: renamed from: b */
        public boolean f1750b = false;

        /* JADX INFO: renamed from: c */
        public boolean f1752c = false;

        /* JADX INFO: renamed from: f */
        public int f1758f = -1;

        /* JADX INFO: renamed from: g */
        public int f1760g = -1;

        /* JADX INFO: renamed from: h */
        public float f1762h = -1.0f;

        /* JADX INFO: renamed from: i */
        public boolean f1764i = true;

        /* JADX INFO: renamed from: j */
        public int f1766j = -1;

        /* JADX INFO: renamed from: k */
        public int f1768k = -1;

        /* JADX INFO: renamed from: l */
        public int f1770l = -1;

        /* JADX INFO: renamed from: m */
        public int f1772m = -1;

        /* JADX INFO: renamed from: n */
        public int f1774n = -1;

        /* JADX INFO: renamed from: o */
        public int f1776o = -1;

        /* JADX INFO: renamed from: p */
        public int f1778p = -1;

        /* JADX INFO: renamed from: q */
        public int f1780q = -1;

        /* JADX INFO: renamed from: r */
        public int f1782r = -1;

        /* JADX INFO: renamed from: s */
        public int f1783s = -1;

        /* JADX INFO: renamed from: t */
        public int f1784t = -1;

        /* JADX INFO: renamed from: u */
        public int f1785u = -1;

        /* JADX INFO: renamed from: v */
        public int f1786v = -1;

        /* JADX INFO: renamed from: w */
        public int f1787w = -1;

        /* JADX INFO: renamed from: x */
        public int f1788x = -1;

        /* JADX INFO: renamed from: y */
        public float f1789y = 0.5f;

        /* JADX INFO: renamed from: z */
        public float f1790z = 0.5f;
        public String A = null;
        public int B = -1;
        public int C = 0;
        public float D = 0.0f;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = 0;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public int T = Integer.MIN_VALUE;
        public int U = Integer.MIN_VALUE;
        public float V = -1.0f;
        public float W = -1.0f;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;

        /* JADX INFO: renamed from: a0 */
        public int f1749a0 = 0;

        /* JADX INFO: renamed from: b0 */
        public int f1751b0 = 0;

        /* JADX INFO: renamed from: c0 */
        public int f1753c0 = 0;

        /* JADX INFO: renamed from: d0 */
        public int f1755d0 = 0;

        /* JADX INFO: renamed from: e0 */
        public int f1757e0 = 0;

        /* JADX INFO: renamed from: f0 */
        public float f1759f0 = 1.0f;

        /* JADX INFO: renamed from: g0 */
        public float f1761g0 = 1.0f;

        /* JADX INFO: renamed from: h0 */
        public int f1763h0 = -1;

        /* JADX INFO: renamed from: i0 */
        public int f1765i0 = 0;

        /* JADX INFO: renamed from: j0 */
        public int f1767j0 = -1;

        /* JADX INFO: renamed from: n0 */
        public boolean f1775n0 = false;

        /* JADX INFO: renamed from: o0 */
        public boolean f1777o0 = false;

        /* JADX INFO: renamed from: p0 */
        public boolean f1779p0 = true;

        /* JADX INFO: renamed from: q0 */
        public int f1781q0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1747r0 = sparseIntArray;
            sparseIntArray.append(R$styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f1747r0.append(R$styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f1747r0.append(R$styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f1747r0.append(R$styleable.Layout_layout_constraintRight_toRightOf, 29);
            f1747r0.append(R$styleable.Layout_layout_constraintTop_toTopOf, 35);
            f1747r0.append(R$styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f1747r0.append(R$styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f1747r0.append(R$styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f1747r0.append(R$styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f1747r0.append(R$styleable.Layout_layout_editor_absoluteX, 6);
            f1747r0.append(R$styleable.Layout_layout_editor_absoluteY, 7);
            f1747r0.append(R$styleable.Layout_layout_constraintGuide_begin, 17);
            f1747r0.append(R$styleable.Layout_layout_constraintGuide_end, 18);
            f1747r0.append(R$styleable.Layout_layout_constraintGuide_percent, 19);
            f1747r0.append(R$styleable.Layout_guidelineUseRtl, 90);
            f1747r0.append(R$styleable.Layout_android_orientation, 26);
            f1747r0.append(R$styleable.Layout_layout_constraintStart_toEndOf, 31);
            f1747r0.append(R$styleable.Layout_layout_constraintStart_toStartOf, 32);
            f1747r0.append(R$styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f1747r0.append(R$styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f1747r0.append(R$styleable.Layout_layout_goneMarginLeft, 13);
            f1747r0.append(R$styleable.Layout_layout_goneMarginTop, 16);
            f1747r0.append(R$styleable.Layout_layout_goneMarginRight, 14);
            f1747r0.append(R$styleable.Layout_layout_goneMarginBottom, 11);
            f1747r0.append(R$styleable.Layout_layout_goneMarginStart, 15);
            f1747r0.append(R$styleable.Layout_layout_goneMarginEnd, 12);
            f1747r0.append(R$styleable.Layout_layout_constraintVertical_weight, 38);
            f1747r0.append(R$styleable.Layout_layout_constraintHorizontal_weight, 37);
            f1747r0.append(R$styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f1747r0.append(R$styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f1747r0.append(R$styleable.Layout_layout_constraintHorizontal_bias, 20);
            f1747r0.append(R$styleable.Layout_layout_constraintVertical_bias, 36);
            f1747r0.append(R$styleable.Layout_layout_constraintDimensionRatio, 5);
            f1747r0.append(R$styleable.Layout_layout_constraintLeft_creator, 91);
            f1747r0.append(R$styleable.Layout_layout_constraintTop_creator, 91);
            f1747r0.append(R$styleable.Layout_layout_constraintRight_creator, 91);
            f1747r0.append(R$styleable.Layout_layout_constraintBottom_creator, 91);
            f1747r0.append(R$styleable.Layout_layout_constraintBaseline_creator, 91);
            f1747r0.append(R$styleable.Layout_android_layout_marginLeft, 23);
            f1747r0.append(R$styleable.Layout_android_layout_marginRight, 27);
            f1747r0.append(R$styleable.Layout_android_layout_marginStart, 30);
            f1747r0.append(R$styleable.Layout_android_layout_marginEnd, 8);
            f1747r0.append(R$styleable.Layout_android_layout_marginTop, 33);
            f1747r0.append(R$styleable.Layout_android_layout_marginBottom, 2);
            f1747r0.append(R$styleable.Layout_android_layout_width, 22);
            f1747r0.append(R$styleable.Layout_android_layout_height, 21);
            f1747r0.append(R$styleable.Layout_layout_constraintWidth, 41);
            f1747r0.append(R$styleable.Layout_layout_constraintHeight, 42);
            f1747r0.append(R$styleable.Layout_layout_constrainedWidth, 87);
            f1747r0.append(R$styleable.Layout_layout_constrainedHeight, 88);
            f1747r0.append(R$styleable.Layout_layout_wrapBehaviorInParent, 76);
            f1747r0.append(R$styleable.Layout_layout_constraintCircle, 61);
            f1747r0.append(R$styleable.Layout_layout_constraintCircleRadius, 62);
            f1747r0.append(R$styleable.Layout_layout_constraintCircleAngle, 63);
            f1747r0.append(R$styleable.Layout_layout_constraintWidth_percent, 69);
            f1747r0.append(R$styleable.Layout_layout_constraintHeight_percent, 70);
            f1747r0.append(R$styleable.Layout_chainUseRtl, 71);
            f1747r0.append(R$styleable.Layout_barrierDirection, 72);
            f1747r0.append(R$styleable.Layout_barrierMargin, 73);
            f1747r0.append(R$styleable.Layout_constraint_referenced_ids, 74);
            f1747r0.append(R$styleable.Layout_barrierAllowsGoneWidgets, 75);
            f1747r0.append(R$styleable.Layout_layout_constraintWidth_max, 84);
            f1747r0.append(R$styleable.Layout_layout_constraintWidth_min, 86);
            f1747r0.append(R$styleable.Layout_layout_constraintWidth_max, 83);
            f1747r0.append(R$styleable.Layout_layout_constraintHeight_min, 85);
            f1747r0.append(R$styleable.Layout_layout_constraintWidth, 87);
            f1747r0.append(R$styleable.Layout_layout_constraintHeight, 88);
            f1747r0.append(R$styleable.ConstraintLayout_Layout_layout_constraintTag, 89);
            f1747r0.append(R$styleable.Layout_guidelineUseRtl, 90);
        }

        public void a(b bVar) {
            this.f1748a = bVar.f1748a;
            this.f1754d = bVar.f1754d;
            this.f1750b = bVar.f1750b;
            this.f1756e = bVar.f1756e;
            this.f1758f = bVar.f1758f;
            this.f1760g = bVar.f1760g;
            this.f1762h = bVar.f1762h;
            this.f1764i = bVar.f1764i;
            this.f1766j = bVar.f1766j;
            this.f1768k = bVar.f1768k;
            this.f1770l = bVar.f1770l;
            this.f1772m = bVar.f1772m;
            this.f1774n = bVar.f1774n;
            this.f1776o = bVar.f1776o;
            this.f1778p = bVar.f1778p;
            this.f1780q = bVar.f1780q;
            this.f1782r = bVar.f1782r;
            this.f1783s = bVar.f1783s;
            this.f1784t = bVar.f1784t;
            this.f1785u = bVar.f1785u;
            this.f1786v = bVar.f1786v;
            this.f1787w = bVar.f1787w;
            this.f1788x = bVar.f1788x;
            this.f1789y = bVar.f1789y;
            this.f1790z = bVar.f1790z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.f1749a0 = bVar.f1749a0;
            this.f1751b0 = bVar.f1751b0;
            this.f1753c0 = bVar.f1753c0;
            this.f1755d0 = bVar.f1755d0;
            this.f1757e0 = bVar.f1757e0;
            this.f1759f0 = bVar.f1759f0;
            this.f1761g0 = bVar.f1761g0;
            this.f1763h0 = bVar.f1763h0;
            this.f1765i0 = bVar.f1765i0;
            this.f1767j0 = bVar.f1767j0;
            this.f1773m0 = bVar.f1773m0;
            int[] iArr = bVar.f1769k0;
            if (iArr == null || bVar.f1771l0 != null) {
                this.f1769k0 = null;
            } else {
                this.f1769k0 = Arrays.copyOf(iArr, iArr.length);
            }
            this.f1771l0 = bVar.f1771l0;
            this.f1775n0 = bVar.f1775n0;
            this.f1777o0 = bVar.f1777o0;
            this.f1779p0 = bVar.f1779p0;
            this.f1781q0 = bVar.f1781q0;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Layout);
            this.f1750b = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = f1747r0.get(index);
                switch (i11) {
                    case 1:
                        this.f1782r = c.H(typedArrayObtainStyledAttributes, index, this.f1782r);
                        break;
                    case 2:
                        this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        break;
                    case 3:
                        this.f1780q = c.H(typedArrayObtainStyledAttributes, index, this.f1780q);
                        break;
                    case 4:
                        this.f1778p = c.H(typedArrayObtainStyledAttributes, index, this.f1778p);
                        break;
                    case 5:
                        this.A = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.E = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                        break;
                    case 7:
                        this.F = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.F);
                        break;
                    case 8:
                        this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        break;
                    case 9:
                        this.f1788x = c.H(typedArrayObtainStyledAttributes, index, this.f1788x);
                        break;
                    case 10:
                        this.f1787w = c.H(typedArrayObtainStyledAttributes, index, this.f1787w);
                        break;
                    case 11:
                        this.R = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.R);
                        break;
                    case 12:
                        this.S = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.S);
                        break;
                    case 13:
                        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        break;
                    case 14:
                        this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        break;
                    case 15:
                        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.T);
                        break;
                    case 16:
                        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        break;
                    case 17:
                        this.f1758f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1758f);
                        break;
                    case 18:
                        this.f1760g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1760g);
                        break;
                    case 19:
                        this.f1762h = typedArrayObtainStyledAttributes.getFloat(index, this.f1762h);
                        break;
                    case 20:
                        this.f1789y = typedArrayObtainStyledAttributes.getFloat(index, this.f1789y);
                        break;
                    case COUIVersionUtil.COUI_8_2 /* 21 */:
                        this.f1756e = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1756e);
                        break;
                    case 22:
                        this.f1754d = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.f1754d);
                        break;
                    case 23:
                        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.H);
                        break;
                    case 24:
                        this.f1766j = c.H(typedArrayObtainStyledAttributes, index, this.f1766j);
                        break;
                    case VibrateUtils.MIN_VIBRATOR_TIME /* 25 */:
                        this.f1768k = c.H(typedArrayObtainStyledAttributes, index, this.f1768k);
                        break;
                    case 26:
                        this.G = typedArrayObtainStyledAttributes.getInt(index, this.G);
                        break;
                    case 27:
                        this.I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.I);
                        break;
                    case 28:
                        this.f1770l = c.H(typedArrayObtainStyledAttributes, index, this.f1770l);
                        break;
                    case 29:
                        this.f1772m = c.H(typedArrayObtainStyledAttributes, index, this.f1772m);
                        break;
                    case UIUtil.CONSTANT_INT_THIRTY /* 30 */:
                        this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        break;
                    case 31:
                        this.f1785u = c.H(typedArrayObtainStyledAttributes, index, this.f1785u);
                        break;
                    case 32:
                        this.f1786v = c.H(typedArrayObtainStyledAttributes, index, this.f1786v);
                        break;
                    case 33:
                        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                        break;
                    case 34:
                        this.f1776o = c.H(typedArrayObtainStyledAttributes, index, this.f1776o);
                        break;
                    case 35:
                        this.f1774n = c.H(typedArrayObtainStyledAttributes, index, this.f1774n);
                        break;
                    case COUIPreferenceUtils.ICON_SIZE_DP_MEDIUM_LARGE /* 36 */:
                        this.f1790z = typedArrayObtainStyledAttributes.getFloat(index, this.f1790z);
                        break;
                    case 37:
                        this.W = typedArrayObtainStyledAttributes.getFloat(index, this.W);
                        break;
                    case 38:
                        this.V = typedArrayObtainStyledAttributes.getFloat(index, this.V);
                        break;
                    case 39:
                        this.X = typedArrayObtainStyledAttributes.getInt(index, this.X);
                        break;
                    case 40:
                        this.Y = typedArrayObtainStyledAttributes.getInt(index, this.Y);
                        break;
                    case 41:
                        c.I(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        c.I(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i11) {
                            case 61:
                                this.B = c.H(typedArrayObtainStyledAttributes, index, this.B);
                                break;
                            case 62:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 63:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            default:
                                switch (i11) {
                                    case 69:
                                        this.f1759f0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.f1761g0 = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case 72:
                                        this.f1763h0 = typedArrayObtainStyledAttributes.getInt(index, this.f1763h0);
                                        break;
                                    case 73:
                                        this.f1765i0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1765i0);
                                        break;
                                    case 74:
                                        this.f1771l0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case VibrateUtils.VIBRATE_CRISP_MIN_FREQUENCY /* 75 */:
                                        this.f1779p0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1779p0);
                                        break;
                                    case 76:
                                        this.f1781q0 = typedArrayObtainStyledAttributes.getInt(index, this.f1781q0);
                                        break;
                                    case 77:
                                        this.f1783s = c.H(typedArrayObtainStyledAttributes, index, this.f1783s);
                                        break;
                                    case 78:
                                        this.f1784t = c.H(typedArrayObtainStyledAttributes, index, this.f1784t);
                                        break;
                                    case 79:
                                        this.U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.U);
                                        break;
                                    case 80:
                                        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                                        break;
                                    case 81:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case 82:
                                        this.f1749a0 = typedArrayObtainStyledAttributes.getInt(index, this.f1749a0);
                                        break;
                                    case 83:
                                        this.f1753c0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1753c0);
                                        break;
                                    case 84:
                                        this.f1751b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1751b0);
                                        break;
                                    case 85:
                                        this.f1757e0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1757e0);
                                        break;
                                    case 86:
                                        this.f1755d0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1755d0);
                                        break;
                                    case 87:
                                        this.f1775n0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1775n0);
                                        break;
                                    case 88:
                                        this.f1777o0 = typedArrayObtainStyledAttributes.getBoolean(index, this.f1777o0);
                                        break;
                                    case 89:
                                        this.f1773m0 = typedArrayObtainStyledAttributes.getString(index);
                                        break;
                                    case 90:
                                        this.f1764i = typedArrayObtainStyledAttributes.getBoolean(index, this.f1764i);
                                        break;
                                    case 91:
                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1747r0.get(index));
                                        break;
                                    default:
                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1747r0.get(index));
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.c$c */
    public static class C0012c {

        /* JADX INFO: renamed from: o */
        private static SparseIntArray f1791o;

        /* JADX INFO: renamed from: a */
        public boolean f1792a = false;

        /* JADX INFO: renamed from: b */
        public int f1793b = -1;

        /* JADX INFO: renamed from: c */
        public int f1794c = 0;

        /* JADX INFO: renamed from: d */
        public String f1795d = null;

        /* JADX INFO: renamed from: e */
        public int f1796e = -1;

        /* JADX INFO: renamed from: f */
        public int f1797f = 0;

        /* JADX INFO: renamed from: g */
        public float f1798g = Float.NaN;

        /* JADX INFO: renamed from: h */
        public int f1799h = -1;

        /* JADX INFO: renamed from: i */
        public float f1800i = Float.NaN;

        /* JADX INFO: renamed from: j */
        public float f1801j = Float.NaN;

        /* JADX INFO: renamed from: k */
        public int f1802k = -1;

        /* JADX INFO: renamed from: l */
        public String f1803l = null;

        /* JADX INFO: renamed from: m */
        public int f1804m = -3;

        /* JADX INFO: renamed from: n */
        public int f1805n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1791o = sparseIntArray;
            sparseIntArray.append(R$styleable.Motion_motionPathRotate, 1);
            f1791o.append(R$styleable.Motion_pathMotionArc, 2);
            f1791o.append(R$styleable.Motion_transitionEasing, 3);
            f1791o.append(R$styleable.Motion_drawPath, 4);
            f1791o.append(R$styleable.Motion_animateRelativeTo, 5);
            f1791o.append(R$styleable.Motion_animateCircleAngleTo, 6);
            f1791o.append(R$styleable.Motion_motionStagger, 7);
            f1791o.append(R$styleable.Motion_quantizeMotionSteps, 8);
            f1791o.append(R$styleable.Motion_quantizeMotionPhase, 9);
            f1791o.append(R$styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public void a(C0012c c0012c) {
            this.f1792a = c0012c.f1792a;
            this.f1793b = c0012c.f1793b;
            this.f1795d = c0012c.f1795d;
            this.f1796e = c0012c.f1796e;
            this.f1797f = c0012c.f1797f;
            this.f1800i = c0012c.f1800i;
            this.f1798g = c0012c.f1798g;
            this.f1799h = c0012c.f1799h;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Motion);
            this.f1792a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f1791o.get(index)) {
                    case 1:
                        this.f1800i = typedArrayObtainStyledAttributes.getFloat(index, this.f1800i);
                        break;
                    case 2:
                        this.f1796e = typedArrayObtainStyledAttributes.getInt(index, this.f1796e);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.f1795d = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.f1795d = m.c.f13699c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.f1797f = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1793b = c.H(typedArrayObtainStyledAttributes, index, this.f1793b);
                        break;
                    case 6:
                        this.f1794c = typedArrayObtainStyledAttributes.getInteger(index, this.f1794c);
                        break;
                    case 7:
                        this.f1798g = typedArrayObtainStyledAttributes.getFloat(index, this.f1798g);
                        break;
                    case 8:
                        this.f1802k = typedArrayObtainStyledAttributes.getInteger(index, this.f1802k);
                        break;
                    case 9:
                        this.f1801j = typedArrayObtainStyledAttributes.getFloat(index, this.f1801j);
                        break;
                    case 10:
                        int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (i11 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.f1805n = resourceId;
                            if (resourceId != -1) {
                                this.f1804m = -2;
                            }
                        } else if (i11 == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.f1803l = string;
                            if (string.indexOf("/") > 0) {
                                this.f1805n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.f1804m = -2;
                            } else {
                                this.f1804m = -1;
                            }
                        } else {
                            this.f1804m = typedArrayObtainStyledAttributes.getInteger(index, this.f1805n);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a */
        public boolean f1806a = false;

        /* JADX INFO: renamed from: b */
        public int f1807b = 0;

        /* JADX INFO: renamed from: c */
        public int f1808c = 0;

        /* JADX INFO: renamed from: d */
        public float f1809d = 1.0f;

        /* JADX INFO: renamed from: e */
        public float f1810e = Float.NaN;

        public void a(d dVar) {
            this.f1806a = dVar.f1806a;
            this.f1807b = dVar.f1807b;
            this.f1809d = dVar.f1809d;
            this.f1810e = dVar.f1810e;
            this.f1808c = dVar.f1808c;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PropertySet);
            this.f1806a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.PropertySet_android_alpha) {
                    this.f1809d = typedArrayObtainStyledAttributes.getFloat(index, this.f1809d);
                } else if (index == R$styleable.PropertySet_android_visibility) {
                    this.f1807b = typedArrayObtainStyledAttributes.getInt(index, this.f1807b);
                    this.f1807b = c.f1716i[this.f1807b];
                } else if (index == R$styleable.PropertySet_visibilityMode) {
                    this.f1808c = typedArrayObtainStyledAttributes.getInt(index, this.f1808c);
                } else if (index == R$styleable.PropertySet_motionProgress) {
                    this.f1810e = typedArrayObtainStyledAttributes.getFloat(index, this.f1810e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class e {

        /* JADX INFO: renamed from: o */
        private static SparseIntArray f1811o;

        /* JADX INFO: renamed from: a */
        public boolean f1812a = false;

        /* JADX INFO: renamed from: b */
        public float f1813b = 0.0f;

        /* JADX INFO: renamed from: c */
        public float f1814c = 0.0f;

        /* JADX INFO: renamed from: d */
        public float f1815d = 0.0f;

        /* JADX INFO: renamed from: e */
        public float f1816e = 1.0f;

        /* JADX INFO: renamed from: f */
        public float f1817f = 1.0f;

        /* JADX INFO: renamed from: g */
        public float f1818g = Float.NaN;

        /* JADX INFO: renamed from: h */
        public float f1819h = Float.NaN;

        /* JADX INFO: renamed from: i */
        public int f1820i = -1;

        /* JADX INFO: renamed from: j */
        public float f1821j = 0.0f;

        /* JADX INFO: renamed from: k */
        public float f1822k = 0.0f;

        /* JADX INFO: renamed from: l */
        public float f1823l = 0.0f;

        /* JADX INFO: renamed from: m */
        public boolean f1824m = false;

        /* JADX INFO: renamed from: n */
        public float f1825n = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1811o = sparseIntArray;
            sparseIntArray.append(R$styleable.Transform_android_rotation, 1);
            f1811o.append(R$styleable.Transform_android_rotationX, 2);
            f1811o.append(R$styleable.Transform_android_rotationY, 3);
            f1811o.append(R$styleable.Transform_android_scaleX, 4);
            f1811o.append(R$styleable.Transform_android_scaleY, 5);
            f1811o.append(R$styleable.Transform_android_transformPivotX, 6);
            f1811o.append(R$styleable.Transform_android_transformPivotY, 7);
            f1811o.append(R$styleable.Transform_android_translationX, 8);
            f1811o.append(R$styleable.Transform_android_translationY, 9);
            f1811o.append(R$styleable.Transform_android_translationZ, 10);
            f1811o.append(R$styleable.Transform_android_elevation, 11);
            f1811o.append(R$styleable.Transform_transformPivotTarget, 12);
        }

        public void a(e eVar) {
            this.f1812a = eVar.f1812a;
            this.f1813b = eVar.f1813b;
            this.f1814c = eVar.f1814c;
            this.f1815d = eVar.f1815d;
            this.f1816e = eVar.f1816e;
            this.f1817f = eVar.f1817f;
            this.f1818g = eVar.f1818g;
            this.f1819h = eVar.f1819h;
            this.f1820i = eVar.f1820i;
            this.f1821j = eVar.f1821j;
            this.f1822k = eVar.f1822k;
            this.f1823l = eVar.f1823l;
            this.f1824m = eVar.f1824m;
            this.f1825n = eVar.f1825n;
        }

        void b(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transform);
            this.f1812a = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                switch (f1811o.get(index)) {
                    case 1:
                        this.f1813b = typedArrayObtainStyledAttributes.getFloat(index, this.f1813b);
                        break;
                    case 2:
                        this.f1814c = typedArrayObtainStyledAttributes.getFloat(index, this.f1814c);
                        break;
                    case 3:
                        this.f1815d = typedArrayObtainStyledAttributes.getFloat(index, this.f1815d);
                        break;
                    case 4:
                        this.f1816e = typedArrayObtainStyledAttributes.getFloat(index, this.f1816e);
                        break;
                    case 5:
                        this.f1817f = typedArrayObtainStyledAttributes.getFloat(index, this.f1817f);
                        break;
                    case 6:
                        this.f1818g = typedArrayObtainStyledAttributes.getDimension(index, this.f1818g);
                        break;
                    case 7:
                        this.f1819h = typedArrayObtainStyledAttributes.getDimension(index, this.f1819h);
                        break;
                    case 8:
                        this.f1821j = typedArrayObtainStyledAttributes.getDimension(index, this.f1821j);
                        break;
                    case 9:
                        this.f1822k = typedArrayObtainStyledAttributes.getDimension(index, this.f1822k);
                        break;
                    case 10:
                        this.f1823l = typedArrayObtainStyledAttributes.getDimension(index, this.f1823l);
                        break;
                    case 11:
                        this.f1824m = true;
                        this.f1825n = typedArrayObtainStyledAttributes.getDimension(index, this.f1825n);
                        break;
                    case 12:
                        this.f1820i = c.H(typedArrayObtainStyledAttributes, index, this.f1820i);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static {
        f1717j.append(R$styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f1717j.append(R$styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f1717j.append(R$styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f1717j.append(R$styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f1717j.append(R$styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f1717j.append(R$styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f1717j.append(R$styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f1717j.append(R$styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f1717j.append(R$styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f1717j.append(R$styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f1717j.append(R$styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f1717j.append(R$styleable.Constraint_layout_editor_absoluteX, 6);
        f1717j.append(R$styleable.Constraint_layout_editor_absoluteY, 7);
        f1717j.append(R$styleable.Constraint_layout_constraintGuide_begin, 17);
        f1717j.append(R$styleable.Constraint_layout_constraintGuide_end, 18);
        f1717j.append(R$styleable.Constraint_layout_constraintGuide_percent, 19);
        f1717j.append(R$styleable.Constraint_guidelineUseRtl, 99);
        f1717j.append(R$styleable.Constraint_android_orientation, 27);
        f1717j.append(R$styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f1717j.append(R$styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f1717j.append(R$styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f1717j.append(R$styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f1717j.append(R$styleable.Constraint_layout_goneMarginLeft, 13);
        f1717j.append(R$styleable.Constraint_layout_goneMarginTop, 16);
        f1717j.append(R$styleable.Constraint_layout_goneMarginRight, 14);
        f1717j.append(R$styleable.Constraint_layout_goneMarginBottom, 11);
        f1717j.append(R$styleable.Constraint_layout_goneMarginStart, 15);
        f1717j.append(R$styleable.Constraint_layout_goneMarginEnd, 12);
        f1717j.append(R$styleable.Constraint_layout_constraintVertical_weight, 40);
        f1717j.append(R$styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f1717j.append(R$styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f1717j.append(R$styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f1717j.append(R$styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f1717j.append(R$styleable.Constraint_layout_constraintVertical_bias, 37);
        f1717j.append(R$styleable.Constraint_layout_constraintDimensionRatio, 5);
        f1717j.append(R$styleable.Constraint_layout_constraintLeft_creator, 87);
        f1717j.append(R$styleable.Constraint_layout_constraintTop_creator, 87);
        f1717j.append(R$styleable.Constraint_layout_constraintRight_creator, 87);
        f1717j.append(R$styleable.Constraint_layout_constraintBottom_creator, 87);
        f1717j.append(R$styleable.Constraint_layout_constraintBaseline_creator, 87);
        f1717j.append(R$styleable.Constraint_android_layout_marginLeft, 24);
        f1717j.append(R$styleable.Constraint_android_layout_marginRight, 28);
        f1717j.append(R$styleable.Constraint_android_layout_marginStart, 31);
        f1717j.append(R$styleable.Constraint_android_layout_marginEnd, 8);
        f1717j.append(R$styleable.Constraint_android_layout_marginTop, 34);
        f1717j.append(R$styleable.Constraint_android_layout_marginBottom, 2);
        f1717j.append(R$styleable.Constraint_android_layout_width, 23);
        f1717j.append(R$styleable.Constraint_android_layout_height, 21);
        f1717j.append(R$styleable.Constraint_layout_constraintWidth, 95);
        f1717j.append(R$styleable.Constraint_layout_constraintHeight, 96);
        f1717j.append(R$styleable.Constraint_android_visibility, 22);
        f1717j.append(R$styleable.Constraint_android_alpha, 43);
        f1717j.append(R$styleable.Constraint_android_elevation, 44);
        f1717j.append(R$styleable.Constraint_android_rotationX, 45);
        f1717j.append(R$styleable.Constraint_android_rotationY, 46);
        f1717j.append(R$styleable.Constraint_android_rotation, 60);
        f1717j.append(R$styleable.Constraint_android_scaleX, 47);
        f1717j.append(R$styleable.Constraint_android_scaleY, 48);
        f1717j.append(R$styleable.Constraint_android_transformPivotX, 49);
        f1717j.append(R$styleable.Constraint_android_transformPivotY, 50);
        f1717j.append(R$styleable.Constraint_android_translationX, 51);
        f1717j.append(R$styleable.Constraint_android_translationY, 52);
        f1717j.append(R$styleable.Constraint_android_translationZ, 53);
        f1717j.append(R$styleable.Constraint_layout_constraintWidth_default, 54);
        f1717j.append(R$styleable.Constraint_layout_constraintHeight_default, 55);
        f1717j.append(R$styleable.Constraint_layout_constraintWidth_max, 56);
        f1717j.append(R$styleable.Constraint_layout_constraintHeight_max, 57);
        f1717j.append(R$styleable.Constraint_layout_constraintWidth_min, 58);
        f1717j.append(R$styleable.Constraint_layout_constraintHeight_min, 59);
        f1717j.append(R$styleable.Constraint_layout_constraintCircle, 61);
        f1717j.append(R$styleable.Constraint_layout_constraintCircleRadius, 62);
        f1717j.append(R$styleable.Constraint_layout_constraintCircleAngle, 63);
        f1717j.append(R$styleable.Constraint_animateRelativeTo, 64);
        f1717j.append(R$styleable.Constraint_transitionEasing, 65);
        f1717j.append(R$styleable.Constraint_drawPath, 66);
        f1717j.append(R$styleable.Constraint_transitionPathRotate, 67);
        f1717j.append(R$styleable.Constraint_motionStagger, 79);
        f1717j.append(R$styleable.Constraint_android_id, 38);
        f1717j.append(R$styleable.Constraint_motionProgress, 68);
        f1717j.append(R$styleable.Constraint_layout_constraintWidth_percent, 69);
        f1717j.append(R$styleable.Constraint_layout_constraintHeight_percent, 70);
        f1717j.append(R$styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f1717j.append(R$styleable.Constraint_chainUseRtl, 71);
        f1717j.append(R$styleable.Constraint_barrierDirection, 72);
        f1717j.append(R$styleable.Constraint_barrierMargin, 73);
        f1717j.append(R$styleable.Constraint_constraint_referenced_ids, 74);
        f1717j.append(R$styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f1717j.append(R$styleable.Constraint_pathMotionArc, 76);
        f1717j.append(R$styleable.Constraint_layout_constraintTag, 77);
        f1717j.append(R$styleable.Constraint_visibilityMode, 78);
        f1717j.append(R$styleable.Constraint_layout_constrainedWidth, 80);
        f1717j.append(R$styleable.Constraint_layout_constrainedHeight, 81);
        f1717j.append(R$styleable.Constraint_polarRelativeTo, 82);
        f1717j.append(R$styleable.Constraint_transformPivotTarget, 83);
        f1717j.append(R$styleable.Constraint_quantizeMotionSteps, 84);
        f1717j.append(R$styleable.Constraint_quantizeMotionPhase, 85);
        f1717j.append(R$styleable.Constraint_quantizeMotionInterpolator, 86);
        f1718k.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        f1718k.append(R$styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        f1718k.append(R$styleable.ConstraintOverride_android_orientation, 27);
        f1718k.append(R$styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f1718k.append(R$styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f1718k.append(R$styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f1718k.append(R$styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f1718k.append(R$styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f1718k.append(R$styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_marginRight, 28);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_marginStart, 31);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_marginTop, 34);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_width, 23);
        f1718k.append(R$styleable.ConstraintOverride_android_layout_height, 21);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintWidth, 95);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHeight, 96);
        f1718k.append(R$styleable.ConstraintOverride_android_visibility, 22);
        f1718k.append(R$styleable.ConstraintOverride_android_alpha, 43);
        f1718k.append(R$styleable.ConstraintOverride_android_elevation, 44);
        f1718k.append(R$styleable.ConstraintOverride_android_rotationX, 45);
        f1718k.append(R$styleable.ConstraintOverride_android_rotationY, 46);
        f1718k.append(R$styleable.ConstraintOverride_android_rotation, 60);
        f1718k.append(R$styleable.ConstraintOverride_android_scaleX, 47);
        f1718k.append(R$styleable.ConstraintOverride_android_scaleY, 48);
        f1718k.append(R$styleable.ConstraintOverride_android_transformPivotX, 49);
        f1718k.append(R$styleable.ConstraintOverride_android_transformPivotY, 50);
        f1718k.append(R$styleable.ConstraintOverride_android_translationX, 51);
        f1718k.append(R$styleable.ConstraintOverride_android_translationY, 52);
        f1718k.append(R$styleable.ConstraintOverride_android_translationZ, 53);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f1718k.append(R$styleable.ConstraintOverride_animateRelativeTo, 64);
        f1718k.append(R$styleable.ConstraintOverride_transitionEasing, 65);
        f1718k.append(R$styleable.ConstraintOverride_drawPath, 66);
        f1718k.append(R$styleable.ConstraintOverride_transitionPathRotate, 67);
        f1718k.append(R$styleable.ConstraintOverride_motionStagger, 79);
        f1718k.append(R$styleable.ConstraintOverride_android_id, 38);
        f1718k.append(R$styleable.ConstraintOverride_motionTarget, 98);
        f1718k.append(R$styleable.ConstraintOverride_motionProgress, 68);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f1718k.append(R$styleable.ConstraintOverride_chainUseRtl, 71);
        f1718k.append(R$styleable.ConstraintOverride_barrierDirection, 72);
        f1718k.append(R$styleable.ConstraintOverride_barrierMargin, 73);
        f1718k.append(R$styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f1718k.append(R$styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f1718k.append(R$styleable.ConstraintOverride_pathMotionArc, 76);
        f1718k.append(R$styleable.ConstraintOverride_layout_constraintTag, 77);
        f1718k.append(R$styleable.ConstraintOverride_visibilityMode, 78);
        f1718k.append(R$styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f1718k.append(R$styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f1718k.append(R$styleable.ConstraintOverride_polarRelativeTo, 82);
        f1718k.append(R$styleable.ConstraintOverride_transformPivotTarget, 83);
        f1718k.append(R$styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f1718k.append(R$styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f1718k.append(R$styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f1718k.append(R$styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    public static int H(TypedArray typedArray, int i10, int i11) {
        int resourceId = typedArray.getResourceId(i10, i11);
        return resourceId == -1 ? typedArray.getInt(i10, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void I(java.lang.Object r4, android.content.res.TypedArray r5, int r6, int r7) {
        /*
            if (r4 != 0) goto L3
            return
        L3:
            android.util.TypedValue r0 = r5.peekValue(r6)
            int r0 = r0.type
            r1 = 3
            if (r0 == r1) goto L71
            r1 = 5
            r2 = 0
            if (r0 == r1) goto L2a
            int r5 = r5.getInt(r6, r2)
            r6 = -4
            r0 = -2
            if (r5 == r6) goto L26
            r6 = -3
            if (r5 == r6) goto L20
            if (r5 == r0) goto L22
            r6 = -1
            if (r5 == r6) goto L22
        L20:
            r5 = r2
            goto L2f
        L22:
            r3 = r2
            r2 = r5
            r5 = r3
            goto L2f
        L26:
            r2 = 1
            r5 = r2
            r2 = r0
            goto L2f
        L2a:
            int r5 = r5.getDimensionPixelSize(r6, r2)
            goto L22
        L2f:
            boolean r6 = r4 instanceof androidx.constraintlayout.widget.ConstraintLayout.b
            if (r6 == 0) goto L41
            androidx.constraintlayout.widget.ConstraintLayout$b r4 = (androidx.constraintlayout.widget.ConstraintLayout.b) r4
            if (r7 != 0) goto L3c
            r4.width = r2
            r4.constrainedWidth = r5
            goto L70
        L3c:
            r4.height = r2
            r4.constrainedHeight = r5
            goto L70
        L41:
            boolean r6 = r4 instanceof androidx.constraintlayout.widget.c.b
            if (r6 == 0) goto L53
            androidx.constraintlayout.widget.c$b r4 = (androidx.constraintlayout.widget.c.b) r4
            if (r7 != 0) goto L4e
            r4.f1754d = r2
            r4.f1775n0 = r5
            goto L70
        L4e:
            r4.f1756e = r2
            r4.f1777o0 = r5
            goto L70
        L53:
            boolean r6 = r4 instanceof androidx.constraintlayout.widget.c.a.C0011a
            if (r6 == 0) goto L70
            androidx.constraintlayout.widget.c$a$a r4 = (androidx.constraintlayout.widget.c.a.C0011a) r4
            if (r7 != 0) goto L66
            r6 = 23
            r4.b(r6, r2)
            r6 = 80
            r4.d(r6, r5)
            goto L70
        L66:
            r6 = 21
            r4.b(r6, r2)
            r6 = 81
            r4.d(r6, r5)
        L70:
            return
        L71:
            java.lang.String r5 = r5.getString(r6)
            J(r4, r5, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.c.I(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    static void J(Object obj, String str, int i10) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(61);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if ("ratio".equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                    if (i10 == 0) {
                        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                    }
                    K(bVar, strTrim2);
                    return;
                }
                if (obj instanceof b) {
                    ((b) obj).A = strTrim2;
                    return;
                } else {
                    if (obj instanceof a.C0011a) {
                        ((a.C0011a) obj).c(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(strTrim)) {
                    float f10 = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar2).width = 0;
                            bVar2.horizontalWeight = f10;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
                            bVar2.verticalWeight = f10;
                        }
                    } else if (obj instanceof b) {
                        b bVar3 = (b) obj;
                        if (i10 == 0) {
                            bVar3.f1754d = 0;
                            bVar3.W = f10;
                        } else {
                            bVar3.f1756e = 0;
                            bVar3.V = f10;
                        }
                    } else if (obj instanceof a.C0011a) {
                        a.C0011a c0011a = (a.C0011a) obj;
                        if (i10 == 0) {
                            c0011a.b(23, 0);
                            c0011a.a(39, f10);
                        } else {
                            c0011a.b(21, 0);
                            c0011a.a(40, f10);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(strTrim)) {
                        return;
                    }
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar4 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar4).width = 0;
                            bVar4.matchConstraintPercentWidth = fMax;
                            bVar4.matchConstraintDefaultWidth = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar4).height = 0;
                            bVar4.matchConstraintPercentHeight = fMax;
                            bVar4.matchConstraintDefaultHeight = 2;
                        }
                    } else if (obj instanceof b) {
                        b bVar5 = (b) obj;
                        if (i10 == 0) {
                            bVar5.f1754d = 0;
                            bVar5.f1759f0 = fMax;
                            bVar5.Z = 2;
                        } else {
                            bVar5.f1756e = 0;
                            bVar5.f1761g0 = fMax;
                            bVar5.f1749a0 = 2;
                        }
                    } else if (obj instanceof a.C0011a) {
                        a.C0011a c0011a2 = (a.C0011a) obj;
                        if (i10 == 0) {
                            c0011a2.b(23, 0);
                            c0011a2.b(54, 2);
                        } else {
                            c0011a2.b(21, 0);
                            c0011a2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    static void K(ConstraintLayout.b bVar, String str) {
        float fAbs = Float.NaN;
        int i10 = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            int i11 = 0;
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase("W")) {
                    i10 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i10 = 1;
                }
                i11 = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            try {
                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                    String strSubstring2 = str.substring(i11);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(i11, iIndexOf2);
                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f10 = Float.parseFloat(strSubstring3);
                        float f11 = Float.parseFloat(strSubstring4);
                        if (f10 > 0.0f && f11 > 0.0f) {
                            fAbs = i10 == 1 ? Math.abs(f11 / f10) : Math.abs(f10 / f11);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        bVar.dimensionRatio = str;
        bVar.mDimensionRatioValue = fAbs;
        bVar.mDimensionRatioSide = i10;
    }

    private void L(a aVar, TypedArray typedArray, boolean z10) {
        if (z10) {
            M(aVar, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index != R$styleable.Constraint_android_id && R$styleable.Constraint_android_layout_marginStart != index && R$styleable.Constraint_android_layout_marginEnd != index) {
                aVar.f1730d.f1792a = true;
                aVar.f1731e.f1750b = true;
                aVar.f1729c.f1806a = true;
                aVar.f1732f.f1812a = true;
            }
            switch (f1717j.get(index)) {
                case 1:
                    b bVar = aVar.f1731e;
                    bVar.f1782r = H(typedArray, index, bVar.f1782r);
                    break;
                case 2:
                    b bVar2 = aVar.f1731e;
                    bVar2.K = typedArray.getDimensionPixelSize(index, bVar2.K);
                    break;
                case 3:
                    b bVar3 = aVar.f1731e;
                    bVar3.f1780q = H(typedArray, index, bVar3.f1780q);
                    break;
                case 4:
                    b bVar4 = aVar.f1731e;
                    bVar4.f1778p = H(typedArray, index, bVar4.f1778p);
                    break;
                case 5:
                    aVar.f1731e.A = typedArray.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.f1731e;
                    bVar5.E = typedArray.getDimensionPixelOffset(index, bVar5.E);
                    break;
                case 7:
                    b bVar6 = aVar.f1731e;
                    bVar6.F = typedArray.getDimensionPixelOffset(index, bVar6.F);
                    break;
                case 8:
                    b bVar7 = aVar.f1731e;
                    bVar7.L = typedArray.getDimensionPixelSize(index, bVar7.L);
                    break;
                case 9:
                    b bVar8 = aVar.f1731e;
                    bVar8.f1788x = H(typedArray, index, bVar8.f1788x);
                    break;
                case 10:
                    b bVar9 = aVar.f1731e;
                    bVar9.f1787w = H(typedArray, index, bVar9.f1787w);
                    break;
                case 11:
                    b bVar10 = aVar.f1731e;
                    bVar10.R = typedArray.getDimensionPixelSize(index, bVar10.R);
                    break;
                case 12:
                    b bVar11 = aVar.f1731e;
                    bVar11.S = typedArray.getDimensionPixelSize(index, bVar11.S);
                    break;
                case 13:
                    b bVar12 = aVar.f1731e;
                    bVar12.O = typedArray.getDimensionPixelSize(index, bVar12.O);
                    break;
                case 14:
                    b bVar13 = aVar.f1731e;
                    bVar13.Q = typedArray.getDimensionPixelSize(index, bVar13.Q);
                    break;
                case 15:
                    b bVar14 = aVar.f1731e;
                    bVar14.T = typedArray.getDimensionPixelSize(index, bVar14.T);
                    break;
                case 16:
                    b bVar15 = aVar.f1731e;
                    bVar15.P = typedArray.getDimensionPixelSize(index, bVar15.P);
                    break;
                case 17:
                    b bVar16 = aVar.f1731e;
                    bVar16.f1758f = typedArray.getDimensionPixelOffset(index, bVar16.f1758f);
                    break;
                case 18:
                    b bVar17 = aVar.f1731e;
                    bVar17.f1760g = typedArray.getDimensionPixelOffset(index, bVar17.f1760g);
                    break;
                case 19:
                    b bVar18 = aVar.f1731e;
                    bVar18.f1762h = typedArray.getFloat(index, bVar18.f1762h);
                    break;
                case 20:
                    b bVar19 = aVar.f1731e;
                    bVar19.f1789y = typedArray.getFloat(index, bVar19.f1789y);
                    break;
                case COUIVersionUtil.COUI_8_2 /* 21 */:
                    b bVar20 = aVar.f1731e;
                    bVar20.f1756e = typedArray.getLayoutDimension(index, bVar20.f1756e);
                    break;
                case 22:
                    d dVar = aVar.f1729c;
                    dVar.f1807b = typedArray.getInt(index, dVar.f1807b);
                    d dVar2 = aVar.f1729c;
                    dVar2.f1807b = f1716i[dVar2.f1807b];
                    break;
                case 23:
                    b bVar21 = aVar.f1731e;
                    bVar21.f1754d = typedArray.getLayoutDimension(index, bVar21.f1754d);
                    break;
                case 24:
                    b bVar22 = aVar.f1731e;
                    bVar22.H = typedArray.getDimensionPixelSize(index, bVar22.H);
                    break;
                case VibrateUtils.MIN_VIBRATOR_TIME /* 25 */:
                    b bVar23 = aVar.f1731e;
                    bVar23.f1766j = H(typedArray, index, bVar23.f1766j);
                    break;
                case 26:
                    b bVar24 = aVar.f1731e;
                    bVar24.f1768k = H(typedArray, index, bVar24.f1768k);
                    break;
                case 27:
                    b bVar25 = aVar.f1731e;
                    bVar25.G = typedArray.getInt(index, bVar25.G);
                    break;
                case 28:
                    b bVar26 = aVar.f1731e;
                    bVar26.I = typedArray.getDimensionPixelSize(index, bVar26.I);
                    break;
                case 29:
                    b bVar27 = aVar.f1731e;
                    bVar27.f1770l = H(typedArray, index, bVar27.f1770l);
                    break;
                case UIUtil.CONSTANT_INT_THIRTY /* 30 */:
                    b bVar28 = aVar.f1731e;
                    bVar28.f1772m = H(typedArray, index, bVar28.f1772m);
                    break;
                case 31:
                    b bVar29 = aVar.f1731e;
                    bVar29.M = typedArray.getDimensionPixelSize(index, bVar29.M);
                    break;
                case 32:
                    b bVar30 = aVar.f1731e;
                    bVar30.f1785u = H(typedArray, index, bVar30.f1785u);
                    break;
                case 33:
                    b bVar31 = aVar.f1731e;
                    bVar31.f1786v = H(typedArray, index, bVar31.f1786v);
                    break;
                case 34:
                    b bVar32 = aVar.f1731e;
                    bVar32.J = typedArray.getDimensionPixelSize(index, bVar32.J);
                    break;
                case 35:
                    b bVar33 = aVar.f1731e;
                    bVar33.f1776o = H(typedArray, index, bVar33.f1776o);
                    break;
                case COUIPreferenceUtils.ICON_SIZE_DP_MEDIUM_LARGE /* 36 */:
                    b bVar34 = aVar.f1731e;
                    bVar34.f1774n = H(typedArray, index, bVar34.f1774n);
                    break;
                case 37:
                    b bVar35 = aVar.f1731e;
                    bVar35.f1790z = typedArray.getFloat(index, bVar35.f1790z);
                    break;
                case 38:
                    aVar.f1727a = typedArray.getResourceId(index, aVar.f1727a);
                    break;
                case 39:
                    b bVar36 = aVar.f1731e;
                    bVar36.W = typedArray.getFloat(index, bVar36.W);
                    break;
                case 40:
                    b bVar37 = aVar.f1731e;
                    bVar37.V = typedArray.getFloat(index, bVar37.V);
                    break;
                case 41:
                    b bVar38 = aVar.f1731e;
                    bVar38.X = typedArray.getInt(index, bVar38.X);
                    break;
                case 42:
                    b bVar39 = aVar.f1731e;
                    bVar39.Y = typedArray.getInt(index, bVar39.Y);
                    break;
                case 43:
                    d dVar3 = aVar.f1729c;
                    dVar3.f1809d = typedArray.getFloat(index, dVar3.f1809d);
                    break;
                case 44:
                    e eVar = aVar.f1732f;
                    eVar.f1824m = true;
                    eVar.f1825n = typedArray.getDimension(index, eVar.f1825n);
                    break;
                case 45:
                    e eVar2 = aVar.f1732f;
                    eVar2.f1814c = typedArray.getFloat(index, eVar2.f1814c);
                    break;
                case 46:
                    e eVar3 = aVar.f1732f;
                    eVar3.f1815d = typedArray.getFloat(index, eVar3.f1815d);
                    break;
                case 47:
                    e eVar4 = aVar.f1732f;
                    eVar4.f1816e = typedArray.getFloat(index, eVar4.f1816e);
                    break;
                case VibrateUtils.VIBRATE_SOFT_MIN_FREQUENCY /* 48 */:
                    e eVar5 = aVar.f1732f;
                    eVar5.f1817f = typedArray.getFloat(index, eVar5.f1817f);
                    break;
                case 49:
                    e eVar6 = aVar.f1732f;
                    eVar6.f1818g = typedArray.getDimension(index, eVar6.f1818g);
                    break;
                case 50:
                    e eVar7 = aVar.f1732f;
                    eVar7.f1819h = typedArray.getDimension(index, eVar7.f1819h);
                    break;
                case 51:
                    e eVar8 = aVar.f1732f;
                    eVar8.f1821j = typedArray.getDimension(index, eVar8.f1821j);
                    break;
                case VibrateUtils.VIBRATE_SOFT_MIN_INTENSITY /* 52 */:
                    e eVar9 = aVar.f1732f;
                    eVar9.f1822k = typedArray.getDimension(index, eVar9.f1822k);
                    break;
                case 53:
                    e eVar10 = aVar.f1732f;
                    eVar10.f1823l = typedArray.getDimension(index, eVar10.f1823l);
                    break;
                case 54:
                    b bVar40 = aVar.f1731e;
                    bVar40.Z = typedArray.getInt(index, bVar40.Z);
                    break;
                case VibrateUtils.VIBRATE_SOFT_MAX_FREQUENCY /* 55 */:
                    b bVar41 = aVar.f1731e;
                    bVar41.f1749a0 = typedArray.getInt(index, bVar41.f1749a0);
                    break;
                case 56:
                    b bVar42 = aVar.f1731e;
                    bVar42.f1751b0 = typedArray.getDimensionPixelSize(index, bVar42.f1751b0);
                    break;
                case 57:
                    b bVar43 = aVar.f1731e;
                    bVar43.f1753c0 = typedArray.getDimensionPixelSize(index, bVar43.f1753c0);
                    break;
                case 58:
                    b bVar44 = aVar.f1731e;
                    bVar44.f1755d0 = typedArray.getDimensionPixelSize(index, bVar44.f1755d0);
                    break;
                case 59:
                    b bVar45 = aVar.f1731e;
                    bVar45.f1757e0 = typedArray.getDimensionPixelSize(index, bVar45.f1757e0);
                    break;
                case 60:
                    e eVar11 = aVar.f1732f;
                    eVar11.f1813b = typedArray.getFloat(index, eVar11.f1813b);
                    break;
                case 61:
                    b bVar46 = aVar.f1731e;
                    bVar46.B = H(typedArray, index, bVar46.B);
                    break;
                case 62:
                    b bVar47 = aVar.f1731e;
                    bVar47.C = typedArray.getDimensionPixelSize(index, bVar47.C);
                    break;
                case 63:
                    b bVar48 = aVar.f1731e;
                    bVar48.D = typedArray.getFloat(index, bVar48.D);
                    break;
                case COUIToolTips.ALIGN_END /* 64 */:
                    C0012c c0012c = aVar.f1730d;
                    c0012c.f1793b = H(typedArray, index, c0012c.f1793b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f1730d.f1795d = typedArray.getString(index);
                    } else {
                        aVar.f1730d.f1795d = m.c.f13699c[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    aVar.f1730d.f1797f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    C0012c c0012c2 = aVar.f1730d;
                    c0012c2.f1800i = typedArray.getFloat(index, c0012c2.f1800i);
                    break;
                case VibrateUtils.VIBRATE_SOFT_MAX_INTENSITY /* 68 */:
                    d dVar4 = aVar.f1729c;
                    dVar4.f1810e = typedArray.getFloat(index, dVar4.f1810e);
                    break;
                case 69:
                    aVar.f1731e.f1759f0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f1731e.f1761g0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    b bVar49 = aVar.f1731e;
                    bVar49.f1763h0 = typedArray.getInt(index, bVar49.f1763h0);
                    break;
                case 73:
                    b bVar50 = aVar.f1731e;
                    bVar50.f1765i0 = typedArray.getDimensionPixelSize(index, bVar50.f1765i0);
                    break;
                case 74:
                    aVar.f1731e.f1771l0 = typedArray.getString(index);
                    break;
                case VibrateUtils.VIBRATE_CRISP_MIN_FREQUENCY /* 75 */:
                    b bVar51 = aVar.f1731e;
                    bVar51.f1779p0 = typedArray.getBoolean(index, bVar51.f1779p0);
                    break;
                case 76:
                    C0012c c0012c3 = aVar.f1730d;
                    c0012c3.f1796e = typedArray.getInt(index, c0012c3.f1796e);
                    break;
                case 77:
                    aVar.f1731e.f1773m0 = typedArray.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.f1729c;
                    dVar5.f1808c = typedArray.getInt(index, dVar5.f1808c);
                    break;
                case 79:
                    C0012c c0012c4 = aVar.f1730d;
                    c0012c4.f1798g = typedArray.getFloat(index, c0012c4.f1798g);
                    break;
                case 80:
                    b bVar52 = aVar.f1731e;
                    bVar52.f1775n0 = typedArray.getBoolean(index, bVar52.f1775n0);
                    break;
                case 81:
                    b bVar53 = aVar.f1731e;
                    bVar53.f1777o0 = typedArray.getBoolean(index, bVar53.f1777o0);
                    break;
                case 82:
                    C0012c c0012c5 = aVar.f1730d;
                    c0012c5.f1794c = typedArray.getInteger(index, c0012c5.f1794c);
                    break;
                case 83:
                    e eVar12 = aVar.f1732f;
                    eVar12.f1820i = H(typedArray, index, eVar12.f1820i);
                    break;
                case 84:
                    C0012c c0012c6 = aVar.f1730d;
                    c0012c6.f1802k = typedArray.getInteger(index, c0012c6.f1802k);
                    break;
                case 85:
                    C0012c c0012c7 = aVar.f1730d;
                    c0012c7.f1801j = typedArray.getFloat(index, c0012c7.f1801j);
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f1730d.f1805n = typedArray.getResourceId(index, -1);
                        C0012c c0012c8 = aVar.f1730d;
                        if (c0012c8.f1805n != -1) {
                            c0012c8.f1804m = -2;
                        }
                    } else if (i11 == 3) {
                        aVar.f1730d.f1803l = typedArray.getString(index);
                        if (aVar.f1730d.f1803l.indexOf("/") > 0) {
                            aVar.f1730d.f1805n = typedArray.getResourceId(index, -1);
                            aVar.f1730d.f1804m = -2;
                        } else {
                            aVar.f1730d.f1804m = -1;
                        }
                    } else {
                        C0012c c0012c9 = aVar.f1730d;
                        c0012c9.f1804m = typedArray.getInteger(index, c0012c9.f1805n);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1717j.get(index));
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1717j.get(index));
                    break;
                case 91:
                    b bVar54 = aVar.f1731e;
                    bVar54.f1783s = H(typedArray, index, bVar54.f1783s);
                    break;
                case 92:
                    b bVar55 = aVar.f1731e;
                    bVar55.f1784t = H(typedArray, index, bVar55.f1784t);
                    break;
                case 93:
                    b bVar56 = aVar.f1731e;
                    bVar56.N = typedArray.getDimensionPixelSize(index, bVar56.N);
                    break;
                case 94:
                    b bVar57 = aVar.f1731e;
                    bVar57.U = typedArray.getDimensionPixelSize(index, bVar57.U);
                    break;
                case 95:
                    I(aVar.f1731e, typedArray, index, 0);
                    break;
                case 96:
                    I(aVar.f1731e, typedArray, index, 1);
                    break;
                case 97:
                    b bVar58 = aVar.f1731e;
                    bVar58.f1781q0 = typedArray.getInt(index, bVar58.f1781q0);
                    break;
            }
        }
        b bVar59 = aVar.f1731e;
        if (bVar59.f1771l0 != null) {
            bVar59.f1769k0 = null;
        }
    }

    private static void M(a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        a.C0011a c0011a = new a.C0011a();
        aVar.f1734h = c0011a;
        aVar.f1730d.f1792a = false;
        aVar.f1731e.f1750b = false;
        aVar.f1729c.f1806a = false;
        aVar.f1732f.f1812a = false;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            switch (f1718k.get(index)) {
                case 2:
                    c0011a.b(2, typedArray.getDimensionPixelSize(index, aVar.f1731e.K));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case VibrateUtils.MIN_VIBRATOR_TIME /* 25 */:
                case 26:
                case 29:
                case UIUtil.CONSTANT_INT_THIRTY /* 30 */:
                case 32:
                case 33:
                case 35:
                case COUIPreferenceUtils.ICON_SIZE_DP_MEDIUM_LARGE /* 36 */:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f1717j.get(index));
                    break;
                case 5:
                    c0011a.c(5, typedArray.getString(index));
                    break;
                case 6:
                    c0011a.b(6, typedArray.getDimensionPixelOffset(index, aVar.f1731e.E));
                    break;
                case 7:
                    c0011a.b(7, typedArray.getDimensionPixelOffset(index, aVar.f1731e.F));
                    break;
                case 8:
                    c0011a.b(8, typedArray.getDimensionPixelSize(index, aVar.f1731e.L));
                    break;
                case 11:
                    c0011a.b(11, typedArray.getDimensionPixelSize(index, aVar.f1731e.R));
                    break;
                case 12:
                    c0011a.b(12, typedArray.getDimensionPixelSize(index, aVar.f1731e.S));
                    break;
                case 13:
                    c0011a.b(13, typedArray.getDimensionPixelSize(index, aVar.f1731e.O));
                    break;
                case 14:
                    c0011a.b(14, typedArray.getDimensionPixelSize(index, aVar.f1731e.Q));
                    break;
                case 15:
                    c0011a.b(15, typedArray.getDimensionPixelSize(index, aVar.f1731e.T));
                    break;
                case 16:
                    c0011a.b(16, typedArray.getDimensionPixelSize(index, aVar.f1731e.P));
                    break;
                case 17:
                    c0011a.b(17, typedArray.getDimensionPixelOffset(index, aVar.f1731e.f1758f));
                    break;
                case 18:
                    c0011a.b(18, typedArray.getDimensionPixelOffset(index, aVar.f1731e.f1760g));
                    break;
                case 19:
                    c0011a.a(19, typedArray.getFloat(index, aVar.f1731e.f1762h));
                    break;
                case 20:
                    c0011a.a(20, typedArray.getFloat(index, aVar.f1731e.f1789y));
                    break;
                case COUIVersionUtil.COUI_8_2 /* 21 */:
                    c0011a.b(21, typedArray.getLayoutDimension(index, aVar.f1731e.f1756e));
                    break;
                case 22:
                    c0011a.b(22, f1716i[typedArray.getInt(index, aVar.f1729c.f1807b)]);
                    break;
                case 23:
                    c0011a.b(23, typedArray.getLayoutDimension(index, aVar.f1731e.f1754d));
                    break;
                case 24:
                    c0011a.b(24, typedArray.getDimensionPixelSize(index, aVar.f1731e.H));
                    break;
                case 27:
                    c0011a.b(27, typedArray.getInt(index, aVar.f1731e.G));
                    break;
                case 28:
                    c0011a.b(28, typedArray.getDimensionPixelSize(index, aVar.f1731e.I));
                    break;
                case 31:
                    c0011a.b(31, typedArray.getDimensionPixelSize(index, aVar.f1731e.M));
                    break;
                case 34:
                    c0011a.b(34, typedArray.getDimensionPixelSize(index, aVar.f1731e.J));
                    break;
                case 37:
                    c0011a.a(37, typedArray.getFloat(index, aVar.f1731e.f1790z));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, aVar.f1727a);
                    aVar.f1727a = resourceId;
                    c0011a.b(38, resourceId);
                    break;
                case 39:
                    c0011a.a(39, typedArray.getFloat(index, aVar.f1731e.W));
                    break;
                case 40:
                    c0011a.a(40, typedArray.getFloat(index, aVar.f1731e.V));
                    break;
                case 41:
                    c0011a.b(41, typedArray.getInt(index, aVar.f1731e.X));
                    break;
                case 42:
                    c0011a.b(42, typedArray.getInt(index, aVar.f1731e.Y));
                    break;
                case 43:
                    c0011a.a(43, typedArray.getFloat(index, aVar.f1729c.f1809d));
                    break;
                case 44:
                    c0011a.d(44, true);
                    c0011a.a(44, typedArray.getDimension(index, aVar.f1732f.f1825n));
                    break;
                case 45:
                    c0011a.a(45, typedArray.getFloat(index, aVar.f1732f.f1814c));
                    break;
                case 46:
                    c0011a.a(46, typedArray.getFloat(index, aVar.f1732f.f1815d));
                    break;
                case 47:
                    c0011a.a(47, typedArray.getFloat(index, aVar.f1732f.f1816e));
                    break;
                case VibrateUtils.VIBRATE_SOFT_MIN_FREQUENCY /* 48 */:
                    c0011a.a(48, typedArray.getFloat(index, aVar.f1732f.f1817f));
                    break;
                case 49:
                    c0011a.a(49, typedArray.getDimension(index, aVar.f1732f.f1818g));
                    break;
                case 50:
                    c0011a.a(50, typedArray.getDimension(index, aVar.f1732f.f1819h));
                    break;
                case 51:
                    c0011a.a(51, typedArray.getDimension(index, aVar.f1732f.f1821j));
                    break;
                case VibrateUtils.VIBRATE_SOFT_MIN_INTENSITY /* 52 */:
                    c0011a.a(52, typedArray.getDimension(index, aVar.f1732f.f1822k));
                    break;
                case 53:
                    c0011a.a(53, typedArray.getDimension(index, aVar.f1732f.f1823l));
                    break;
                case 54:
                    c0011a.b(54, typedArray.getInt(index, aVar.f1731e.Z));
                    break;
                case VibrateUtils.VIBRATE_SOFT_MAX_FREQUENCY /* 55 */:
                    c0011a.b(55, typedArray.getInt(index, aVar.f1731e.f1749a0));
                    break;
                case 56:
                    c0011a.b(56, typedArray.getDimensionPixelSize(index, aVar.f1731e.f1751b0));
                    break;
                case 57:
                    c0011a.b(57, typedArray.getDimensionPixelSize(index, aVar.f1731e.f1753c0));
                    break;
                case 58:
                    c0011a.b(58, typedArray.getDimensionPixelSize(index, aVar.f1731e.f1755d0));
                    break;
                case 59:
                    c0011a.b(59, typedArray.getDimensionPixelSize(index, aVar.f1731e.f1757e0));
                    break;
                case 60:
                    c0011a.a(60, typedArray.getFloat(index, aVar.f1732f.f1813b));
                    break;
                case 62:
                    c0011a.b(62, typedArray.getDimensionPixelSize(index, aVar.f1731e.C));
                    break;
                case 63:
                    c0011a.a(63, typedArray.getFloat(index, aVar.f1731e.D));
                    break;
                case COUIToolTips.ALIGN_END /* 64 */:
                    c0011a.b(64, H(typedArray, index, aVar.f1730d.f1793b));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0011a.c(65, typedArray.getString(index));
                    } else {
                        c0011a.c(65, m.c.f13699c[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    c0011a.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    c0011a.a(67, typedArray.getFloat(index, aVar.f1730d.f1800i));
                    break;
                case VibrateUtils.VIBRATE_SOFT_MAX_INTENSITY /* 68 */:
                    c0011a.a(68, typedArray.getFloat(index, aVar.f1729c.f1810e));
                    break;
                case 69:
                    c0011a.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0011a.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0011a.b(72, typedArray.getInt(index, aVar.f1731e.f1763h0));
                    break;
                case 73:
                    c0011a.b(73, typedArray.getDimensionPixelSize(index, aVar.f1731e.f1765i0));
                    break;
                case 74:
                    c0011a.c(74, typedArray.getString(index));
                    break;
                case VibrateUtils.VIBRATE_CRISP_MIN_FREQUENCY /* 75 */:
                    c0011a.d(75, typedArray.getBoolean(index, aVar.f1731e.f1779p0));
                    break;
                case 76:
                    c0011a.b(76, typedArray.getInt(index, aVar.f1730d.f1796e));
                    break;
                case 77:
                    c0011a.c(77, typedArray.getString(index));
                    break;
                case 78:
                    c0011a.b(78, typedArray.getInt(index, aVar.f1729c.f1808c));
                    break;
                case 79:
                    c0011a.a(79, typedArray.getFloat(index, aVar.f1730d.f1798g));
                    break;
                case 80:
                    c0011a.d(80, typedArray.getBoolean(index, aVar.f1731e.f1775n0));
                    break;
                case 81:
                    c0011a.d(81, typedArray.getBoolean(index, aVar.f1731e.f1777o0));
                    break;
                case 82:
                    c0011a.b(82, typedArray.getInteger(index, aVar.f1730d.f1794c));
                    break;
                case 83:
                    c0011a.b(83, H(typedArray, index, aVar.f1732f.f1820i));
                    break;
                case 84:
                    c0011a.b(84, typedArray.getInteger(index, aVar.f1730d.f1802k));
                    break;
                case 85:
                    c0011a.a(85, typedArray.getFloat(index, aVar.f1730d.f1801j));
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f1730d.f1805n = typedArray.getResourceId(index, -1);
                        c0011a.b(89, aVar.f1730d.f1805n);
                        C0012c c0012c = aVar.f1730d;
                        if (c0012c.f1805n != -1) {
                            c0012c.f1804m = -2;
                            c0011a.b(88, -2);
                        }
                    } else if (i11 == 3) {
                        aVar.f1730d.f1803l = typedArray.getString(index);
                        c0011a.c(90, aVar.f1730d.f1803l);
                        if (aVar.f1730d.f1803l.indexOf("/") > 0) {
                            aVar.f1730d.f1805n = typedArray.getResourceId(index, -1);
                            c0011a.b(89, aVar.f1730d.f1805n);
                            aVar.f1730d.f1804m = -2;
                            c0011a.b(88, -2);
                        } else {
                            aVar.f1730d.f1804m = -1;
                            c0011a.b(88, -1);
                        }
                    } else {
                        C0012c c0012c2 = aVar.f1730d;
                        c0012c2.f1804m = typedArray.getInteger(index, c0012c2.f1805n);
                        c0011a.b(88, aVar.f1730d.f1804m);
                    }
                    break;
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1717j.get(index));
                    break;
                case 93:
                    c0011a.b(93, typedArray.getDimensionPixelSize(index, aVar.f1731e.N));
                    break;
                case 94:
                    c0011a.b(94, typedArray.getDimensionPixelSize(index, aVar.f1731e.U));
                    break;
                case 95:
                    I(c0011a, typedArray, index, 0);
                    break;
                case 96:
                    I(c0011a, typedArray, index, 1);
                    break;
                case 97:
                    c0011a.b(97, typedArray.getInt(index, aVar.f1731e.f1781q0));
                    break;
                case 98:
                    if (MotionLayout.H0) {
                        int resourceId2 = typedArray.getResourceId(index, aVar.f1727a);
                        aVar.f1727a = resourceId2;
                        if (resourceId2 == -1) {
                            aVar.f1728b = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        aVar.f1728b = typedArray.getString(index);
                    } else {
                        aVar.f1727a = typedArray.getResourceId(index, aVar.f1727a);
                    }
                    break;
                case 99:
                    c0011a.d(99, typedArray.getBoolean(index, aVar.f1731e.f1764i));
                    break;
            }
        }
    }

    public static void P(a aVar, int i10, float f10) {
        if (i10 == 19) {
            aVar.f1731e.f1762h = f10;
        }
        if (i10 == 20) {
            aVar.f1731e.f1789y = f10;
            return;
        }
        if (i10 == 37) {
            aVar.f1731e.f1790z = f10;
            return;
        }
        if (i10 == 60) {
            aVar.f1732f.f1813b = f10;
            return;
        }
        if (i10 == 63) {
            aVar.f1731e.D = f10;
            return;
        }
        if (i10 == 79) {
            aVar.f1730d.f1798g = f10;
            return;
        }
        if (i10 == 85) {
            aVar.f1730d.f1801j = f10;
            return;
        }
        if (i10 != 87) {
            if (i10 == 39) {
                aVar.f1731e.W = f10;
                return;
            }
            if (i10 == 40) {
                aVar.f1731e.V = f10;
                return;
            }
            switch (i10) {
                case 43:
                    aVar.f1729c.f1809d = f10;
                    break;
                case 44:
                    e eVar = aVar.f1732f;
                    eVar.f1825n = f10;
                    eVar.f1824m = true;
                    break;
                case 45:
                    aVar.f1732f.f1814c = f10;
                    break;
                case 46:
                    aVar.f1732f.f1815d = f10;
                    break;
                case 47:
                    aVar.f1732f.f1816e = f10;
                    break;
                case VibrateUtils.VIBRATE_SOFT_MIN_FREQUENCY /* 48 */:
                    aVar.f1732f.f1817f = f10;
                    break;
                case 49:
                    aVar.f1732f.f1818g = f10;
                    break;
                case 50:
                    aVar.f1732f.f1819h = f10;
                    break;
                case 51:
                    aVar.f1732f.f1821j = f10;
                    break;
                case VibrateUtils.VIBRATE_SOFT_MIN_INTENSITY /* 52 */:
                    aVar.f1732f.f1822k = f10;
                    break;
                case 53:
                    aVar.f1732f.f1823l = f10;
                    break;
                default:
                    switch (i10) {
                        case 67:
                            aVar.f1730d.f1800i = f10;
                            break;
                        case VibrateUtils.VIBRATE_SOFT_MAX_INTENSITY /* 68 */:
                            aVar.f1729c.f1810e = f10;
                            break;
                        case 69:
                            aVar.f1731e.f1759f0 = f10;
                            break;
                        case 70:
                            aVar.f1731e.f1761g0 = f10;
                            break;
                        default:
                            Log.w("ConstraintSet", "Unknown attribute 0x");
                            break;
                    }
                    break;
            }
        }
    }

    public static void Q(a aVar, int i10, int i11) {
        if (i10 == 6) {
            aVar.f1731e.E = i11;
        }
        if (i10 == 7) {
            aVar.f1731e.F = i11;
            return;
        }
        if (i10 == 8) {
            aVar.f1731e.L = i11;
            return;
        }
        if (i10 == 27) {
            aVar.f1731e.G = i11;
            return;
        }
        if (i10 == 28) {
            aVar.f1731e.I = i11;
            return;
        }
        if (i10 == 41) {
            aVar.f1731e.X = i11;
            return;
        }
        if (i10 == 42) {
            aVar.f1731e.Y = i11;
            return;
        }
        if (i10 == 61) {
            aVar.f1731e.B = i11;
            return;
        }
        if (i10 == 62) {
            aVar.f1731e.C = i11;
            return;
        }
        if (i10 == 72) {
            aVar.f1731e.f1763h0 = i11;
            return;
        }
        if (i10 == 73) {
            aVar.f1731e.f1765i0 = i11;
            return;
        }
        switch (i10) {
            case 2:
                aVar.f1731e.K = i11;
                break;
            case 11:
                aVar.f1731e.R = i11;
                break;
            case 12:
                aVar.f1731e.S = i11;
                break;
            case 13:
                aVar.f1731e.O = i11;
                break;
            case 14:
                aVar.f1731e.Q = i11;
                break;
            case 15:
                aVar.f1731e.T = i11;
                break;
            case 16:
                aVar.f1731e.P = i11;
                break;
            case 17:
                aVar.f1731e.f1758f = i11;
                break;
            case 18:
                aVar.f1731e.f1760g = i11;
                break;
            case 31:
                aVar.f1731e.M = i11;
                break;
            case 34:
                aVar.f1731e.J = i11;
                break;
            case 38:
                aVar.f1727a = i11;
                break;
            case COUIToolTips.ALIGN_END /* 64 */:
                aVar.f1730d.f1793b = i11;
                break;
            case 66:
                aVar.f1730d.f1797f = i11;
                break;
            case 76:
                aVar.f1730d.f1796e = i11;
                break;
            case 78:
                aVar.f1729c.f1808c = i11;
                break;
            case 93:
                aVar.f1731e.N = i11;
                break;
            case 94:
                aVar.f1731e.U = i11;
                break;
            case 97:
                aVar.f1731e.f1781q0 = i11;
                break;
            default:
                switch (i10) {
                    case COUIVersionUtil.COUI_8_2 /* 21 */:
                        aVar.f1731e.f1756e = i11;
                        break;
                    case 22:
                        aVar.f1729c.f1807b = i11;
                        break;
                    case 23:
                        aVar.f1731e.f1754d = i11;
                        break;
                    case 24:
                        aVar.f1731e.H = i11;
                        break;
                    default:
                        switch (i10) {
                            case 54:
                                aVar.f1731e.Z = i11;
                                break;
                            case VibrateUtils.VIBRATE_SOFT_MAX_FREQUENCY /* 55 */:
                                aVar.f1731e.f1749a0 = i11;
                                break;
                            case 56:
                                aVar.f1731e.f1751b0 = i11;
                                break;
                            case 57:
                                aVar.f1731e.f1753c0 = i11;
                                break;
                            case 58:
                                aVar.f1731e.f1755d0 = i11;
                                break;
                            case 59:
                                aVar.f1731e.f1757e0 = i11;
                                break;
                            default:
                                switch (i10) {
                                    case 82:
                                        aVar.f1730d.f1794c = i11;
                                        break;
                                    case 83:
                                        aVar.f1732f.f1820i = i11;
                                        break;
                                    case 84:
                                        aVar.f1730d.f1802k = i11;
                                        break;
                                    default:
                                        switch (i10) {
                                            case 87:
                                                break;
                                            case 88:
                                                aVar.f1730d.f1804m = i11;
                                                break;
                                            case 89:
                                                aVar.f1730d.f1805n = i11;
                                                break;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x");
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public static void R(a aVar, int i10, String str) {
        if (i10 == 5) {
            aVar.f1731e.A = str;
            return;
        }
        if (i10 == 65) {
            aVar.f1730d.f1795d = str;
            return;
        }
        if (i10 == 74) {
            b bVar = aVar.f1731e;
            bVar.f1771l0 = str;
            bVar.f1769k0 = null;
        } else if (i10 == 77) {
            aVar.f1731e.f1773m0 = str;
        } else if (i10 != 87) {
            if (i10 != 90) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f1730d.f1803l = str;
            }
        }
    }

    public static void S(a aVar, int i10, boolean z10) {
        if (i10 == 44) {
            aVar.f1732f.f1824m = z10;
            return;
        }
        if (i10 == 75) {
            aVar.f1731e.f1779p0 = z10;
            return;
        }
        if (i10 != 87) {
            if (i10 == 80) {
                aVar.f1731e.f1775n0 = z10;
            } else if (i10 != 81) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                aVar.f1731e.f1777o0 = z10;
            }
        }
    }

    private String Y(int i10) {
        switch (i10) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public static a m(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R$styleable.ConstraintOverride);
        M(aVar, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private int[] v(View view, String str) {
        int iIntValue;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArrSplit.length) {
            String strTrim = strArrSplit[i10].trim();
            try {
                iIntValue = R$id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                iIntValue = ((Integer) designInformation).intValue();
            }
            iArr[i11] = iIntValue;
            i10++;
            i11++;
        }
        return i11 != strArrSplit.length ? Arrays.copyOf(iArr, i11) : iArr;
    }

    private a w(Context context, AttributeSet attributeSet, boolean z10) {
        a aVar = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? R$styleable.ConstraintOverride : R$styleable.Constraint);
        L(aVar, typedArrayObtainStyledAttributes, z10);
        typedArrayObtainStyledAttributes.recycle();
        return aVar;
    }

    private a x(int i10) {
        if (!this.f1726h.containsKey(Integer.valueOf(i10))) {
            this.f1726h.put(Integer.valueOf(i10), new a());
        }
        return (a) this.f1726h.get(Integer.valueOf(i10));
    }

    public int[] A() {
        Integer[] numArr = (Integer[]) this.f1726h.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = numArr[i10].intValue();
        }
        return iArr;
    }

    public a B(int i10) {
        return x(i10);
    }

    public int C(int i10) {
        return x(i10).f1729c.f1807b;
    }

    public int D(int i10) {
        return x(i10).f1729c.f1808c;
    }

    public int E(int i10) {
        return x(i10).f1731e.f1754d;
    }

    public void F(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    a aVarW = w(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        aVarW.f1731e.f1748a = true;
                    }
                    this.f1726h.put(Integer.valueOf(aVarW.f1727a), aVarW);
                }
            }
        } catch (IOException e10) {
            Log.e("ConstraintSet", "Error parsing resource: " + i10, e10);
        } catch (XmlPullParserException e11) {
            Log.e("ConstraintSet", "Error parsing resource: " + i10, e11);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:251:0x01d3, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void G(android.content.Context r12, org.xmlpull.v1.XmlPullParser r13) {
        /*
            Method dump skipped, instruction units count: 566
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.c.G(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public void N(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1725g && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1726h.containsKey(Integer.valueOf(id))) {
                this.f1726h.put(Integer.valueOf(id), new a());
            }
            a aVar = (a) this.f1726h.get(Integer.valueOf(id));
            if (aVar != null) {
                if (!aVar.f1731e.f1750b) {
                    aVar.g(id, bVar);
                    if (childAt instanceof ConstraintHelper) {
                        aVar.f1731e.f1769k0 = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            aVar.f1731e.f1779p0 = barrier.getAllowsGoneWidget();
                            aVar.f1731e.f1763h0 = barrier.getType();
                            aVar.f1731e.f1765i0 = barrier.getMargin();
                        }
                    }
                    aVar.f1731e.f1750b = true;
                }
                d dVar = aVar.f1729c;
                if (!dVar.f1806a) {
                    dVar.f1807b = childAt.getVisibility();
                    aVar.f1729c.f1809d = childAt.getAlpha();
                    aVar.f1729c.f1806a = true;
                }
                e eVar = aVar.f1732f;
                if (!eVar.f1812a) {
                    eVar.f1812a = true;
                    eVar.f1813b = childAt.getRotation();
                    aVar.f1732f.f1814c = childAt.getRotationX();
                    aVar.f1732f.f1815d = childAt.getRotationY();
                    aVar.f1732f.f1816e = childAt.getScaleX();
                    aVar.f1732f.f1817f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        e eVar2 = aVar.f1732f;
                        eVar2.f1818g = pivotX;
                        eVar2.f1819h = pivotY;
                    }
                    aVar.f1732f.f1821j = childAt.getTranslationX();
                    aVar.f1732f.f1822k = childAt.getTranslationY();
                    aVar.f1732f.f1823l = childAt.getTranslationZ();
                    e eVar3 = aVar.f1732f;
                    if (eVar3.f1824m) {
                        eVar3.f1825n = childAt.getElevation();
                    }
                }
            }
        }
    }

    public void O(c cVar) {
        for (Integer num : cVar.f1726h.keySet()) {
            num.intValue();
            a aVar = (a) cVar.f1726h.get(num);
            if (!this.f1726h.containsKey(num)) {
                this.f1726h.put(num, new a());
            }
            a aVar2 = (a) this.f1726h.get(num);
            if (aVar2 != null) {
                b bVar = aVar2.f1731e;
                if (!bVar.f1750b) {
                    bVar.a(aVar.f1731e);
                }
                d dVar = aVar2.f1729c;
                if (!dVar.f1806a) {
                    dVar.a(aVar.f1729c);
                }
                e eVar = aVar2.f1732f;
                if (!eVar.f1812a) {
                    eVar.a(aVar.f1732f);
                }
                C0012c c0012c = aVar2.f1730d;
                if (!c0012c.f1792a) {
                    c0012c.a(aVar.f1730d);
                }
                for (String str : aVar.f1733g.keySet()) {
                    if (!aVar2.f1733g.containsKey(str)) {
                        aVar2.f1733g.put(str, (androidx.constraintlayout.widget.a) aVar.f1733g.get(str));
                    }
                }
            }
        }
    }

    public void T(boolean z10) {
        this.f1725g = z10;
    }

    public void U(int i10, int i11, int i12) {
        a aVarX = x(i10);
        switch (i11) {
            case 1:
                aVarX.f1731e.H = i12;
                return;
            case 2:
                aVarX.f1731e.I = i12;
                return;
            case 3:
                aVarX.f1731e.J = i12;
                return;
            case 4:
                aVarX.f1731e.K = i12;
                return;
            case 5:
                aVarX.f1731e.N = i12;
                return;
            case 6:
                aVarX.f1731e.M = i12;
                return;
            case 7:
                aVarX.f1731e.L = i12;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void V(String str) {
        this.f1722d = str.split(",");
        int i10 = 0;
        while (true) {
            String[] strArr = this.f1722d;
            if (i10 >= strArr.length) {
                return;
            }
            strArr[i10] = strArr[i10].trim();
            i10++;
        }
    }

    public void W(boolean z10) {
        this.f1719a = z10;
    }

    public void X(int i10, int i11) {
        x(i10).f1729c.f1807b = i11;
    }

    public void g(ConstraintLayout constraintLayout) {
        a aVar;
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id = childAt.getId();
            if (!this.f1726h.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.d(childAt));
            } else {
                if (this.f1725g && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.f1726h.containsKey(Integer.valueOf(id)) && (aVar = (a) this.f1726h.get(Integer.valueOf(id))) != null) {
                    androidx.constraintlayout.widget.a.j(childAt, aVar.f1733g);
                }
            }
        }
    }

    public void h(c cVar) {
        for (a aVar : cVar.f1726h.values()) {
            if (aVar.f1734h != null) {
                if (aVar.f1728b == null) {
                    aVar.f1734h.e(y(aVar.f1727a));
                } else {
                    Iterator it = this.f1726h.keySet().iterator();
                    while (it.hasNext()) {
                        a aVarY = y(((Integer) it.next()).intValue());
                        String str = aVarY.f1731e.f1773m0;
                        if (str != null && aVar.f1728b.matches(str)) {
                            aVar.f1734h.e(aVarY);
                            aVarY.f1733g.putAll((HashMap) aVar.f1733g.clone());
                        }
                    }
                }
            }
        }
    }

    public void i(ConstraintLayout constraintLayout) {
        k(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void j(ConstraintHelper constraintHelper, o.e eVar, ConstraintLayout.b bVar, SparseArray sparseArray) {
        a aVar;
        int id = constraintHelper.getId();
        if (this.f1726h.containsKey(Integer.valueOf(id)) && (aVar = (a) this.f1726h.get(Integer.valueOf(id))) != null && (eVar instanceof j)) {
            constraintHelper.p(aVar, (j) eVar, bVar, sparseArray);
        }
    }

    void k(ConstraintLayout constraintLayout, boolean z10) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.f1726h.keySet());
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id = childAt.getId();
            if (!this.f1726h.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.d(childAt));
            } else {
                if (this.f1725g && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.f1726h.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        a aVar = (a) this.f1726h.get(Integer.valueOf(id));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f1731e.f1767j0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(aVar.f1731e.f1763h0);
                                barrier.setMargin(aVar.f1731e.f1765i0);
                                barrier.setAllowsGoneWidget(aVar.f1731e.f1779p0);
                                b bVar = aVar.f1731e;
                                int[] iArr = bVar.f1769k0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = bVar.f1771l0;
                                    if (str != null) {
                                        bVar.f1769k0 = v(barrier, str);
                                        barrier.setReferencedIds(aVar.f1731e.f1769k0);
                                    }
                                }
                            }
                            ConstraintLayout.b bVar2 = (ConstraintLayout.b) childAt.getLayoutParams();
                            bVar2.validate();
                            aVar.e(bVar2);
                            if (z10) {
                                androidx.constraintlayout.widget.a.j(childAt, aVar.f1733g);
                            }
                            childAt.setLayoutParams(bVar2);
                            d dVar = aVar.f1729c;
                            if (dVar.f1808c == 0) {
                                childAt.setVisibility(dVar.f1807b);
                            }
                            childAt.setAlpha(aVar.f1729c.f1809d);
                            childAt.setRotation(aVar.f1732f.f1813b);
                            childAt.setRotationX(aVar.f1732f.f1814c);
                            childAt.setRotationY(aVar.f1732f.f1815d);
                            childAt.setScaleX(aVar.f1732f.f1816e);
                            childAt.setScaleY(aVar.f1732f.f1817f);
                            e eVar = aVar.f1732f;
                            if (eVar.f1820i != -1) {
                                if (((View) childAt.getParent()).findViewById(aVar.f1732f.f1820i) != null) {
                                    float top = (r4.getTop() + r4.getBottom()) / 2.0f;
                                    float left = (r4.getLeft() + r4.getRight()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(left - childAt.getLeft());
                                        childAt.setPivotY(top - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(eVar.f1818g)) {
                                    childAt.setPivotX(aVar.f1732f.f1818g);
                                }
                                if (!Float.isNaN(aVar.f1732f.f1819h)) {
                                    childAt.setPivotY(aVar.f1732f.f1819h);
                                }
                            }
                            childAt.setTranslationX(aVar.f1732f.f1821j);
                            childAt.setTranslationY(aVar.f1732f.f1822k);
                            childAt.setTranslationZ(aVar.f1732f.f1823l);
                            e eVar2 = aVar.f1732f;
                            if (eVar2.f1824m) {
                                childAt.setElevation(eVar2.f1825n);
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            a aVar2 = (a) this.f1726h.get(num);
            if (aVar2 != null) {
                if (aVar2.f1731e.f1767j0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    b bVar3 = aVar2.f1731e;
                    int[] iArr2 = bVar3.f1769k0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = bVar3.f1771l0;
                        if (str2 != null) {
                            bVar3.f1769k0 = v(barrier2, str2);
                            barrier2.setReferencedIds(aVar2.f1731e.f1769k0);
                        }
                    }
                    barrier2.setType(aVar2.f1731e.f1763h0);
                    barrier2.setMargin(aVar2.f1731e.f1765i0);
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.w();
                    aVar2.e(bVarGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, bVarGenerateDefaultLayoutParams);
                }
                if (aVar2.f1731e.f1748a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.b bVarGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    aVar2.e(bVarGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, bVarGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = constraintLayout.getChildAt(i11);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).j(constraintLayout);
            }
        }
    }

    public void l(int i10, ConstraintLayout.b bVar) {
        a aVar;
        if (!this.f1726h.containsKey(Integer.valueOf(i10)) || (aVar = (a) this.f1726h.get(Integer.valueOf(i10))) == null) {
            return;
        }
        aVar.e(bVar);
    }

    public void n(Context context, int i10) {
        o((ConstraintLayout) LayoutInflater.from(context).inflate(i10, (ViewGroup) null));
    }

    public void o(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f1726h.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1725g && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1726h.containsKey(Integer.valueOf(id))) {
                this.f1726h.put(Integer.valueOf(id), new a());
            }
            a aVar = (a) this.f1726h.get(Integer.valueOf(id));
            if (aVar != null) {
                aVar.f1733g = androidx.constraintlayout.widget.a.b(this.f1724f, childAt);
                aVar.g(id, bVar);
                aVar.f1729c.f1807b = childAt.getVisibility();
                aVar.f1729c.f1809d = childAt.getAlpha();
                aVar.f1732f.f1813b = childAt.getRotation();
                aVar.f1732f.f1814c = childAt.getRotationX();
                aVar.f1732f.f1815d = childAt.getRotationY();
                aVar.f1732f.f1816e = childAt.getScaleX();
                aVar.f1732f.f1817f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    e eVar = aVar.f1732f;
                    eVar.f1818g = pivotX;
                    eVar.f1819h = pivotY;
                }
                aVar.f1732f.f1821j = childAt.getTranslationX();
                aVar.f1732f.f1822k = childAt.getTranslationY();
                aVar.f1732f.f1823l = childAt.getTranslationZ();
                e eVar2 = aVar.f1732f;
                if (eVar2.f1824m) {
                    eVar2.f1825n = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f1731e.f1779p0 = barrier.getAllowsGoneWidget();
                    aVar.f1731e.f1769k0 = barrier.getReferencedIds();
                    aVar.f1731e.f1763h0 = barrier.getType();
                    aVar.f1731e.f1765i0 = barrier.getMargin();
                }
            }
        }
    }

    public void p(c cVar) {
        this.f1726h.clear();
        for (Integer num : cVar.f1726h.keySet()) {
            a aVar = (a) cVar.f1726h.get(num);
            if (aVar != null) {
                this.f1726h.put(num, aVar.clone());
            }
        }
    }

    public void q(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f1726h.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraints.getChildAt(i10);
            Constraints.a aVar = (Constraints.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1725g && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1726h.containsKey(Integer.valueOf(id))) {
                this.f1726h.put(Integer.valueOf(id), new a());
            }
            a aVar2 = (a) this.f1726h.get(Integer.valueOf(id));
            if (aVar2 != null) {
                if (childAt instanceof ConstraintHelper) {
                    aVar2.i((ConstraintHelper) childAt, id, aVar);
                }
                aVar2.h(id, aVar);
            }
        }
    }

    public void r(int i10, int i11, int i12, int i13) {
        if (!this.f1726h.containsKey(Integer.valueOf(i10))) {
            this.f1726h.put(Integer.valueOf(i10), new a());
        }
        a aVar = (a) this.f1726h.get(Integer.valueOf(i10));
        if (aVar == null) {
            return;
        }
        switch (i11) {
            case 1:
                if (i13 == 1) {
                    b bVar = aVar.f1731e;
                    bVar.f1766j = i12;
                    bVar.f1768k = -1;
                    return;
                } else if (i13 == 2) {
                    b bVar2 = aVar.f1731e;
                    bVar2.f1768k = i12;
                    bVar2.f1766j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + Y(i13) + " undefined");
                }
            case 2:
                if (i13 == 1) {
                    b bVar3 = aVar.f1731e;
                    bVar3.f1770l = i12;
                    bVar3.f1772m = -1;
                    return;
                } else if (i13 == 2) {
                    b bVar4 = aVar.f1731e;
                    bVar4.f1772m = i12;
                    bVar4.f1770l = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + Y(i13) + " undefined");
                }
            case 3:
                if (i13 == 3) {
                    b bVar5 = aVar.f1731e;
                    bVar5.f1774n = i12;
                    bVar5.f1776o = -1;
                    bVar5.f1782r = -1;
                    bVar5.f1783s = -1;
                    bVar5.f1784t = -1;
                    return;
                }
                if (i13 != 4) {
                    throw new IllegalArgumentException("right to " + Y(i13) + " undefined");
                }
                b bVar6 = aVar.f1731e;
                bVar6.f1776o = i12;
                bVar6.f1774n = -1;
                bVar6.f1782r = -1;
                bVar6.f1783s = -1;
                bVar6.f1784t = -1;
                return;
            case 4:
                if (i13 == 4) {
                    b bVar7 = aVar.f1731e;
                    bVar7.f1780q = i12;
                    bVar7.f1778p = -1;
                    bVar7.f1782r = -1;
                    bVar7.f1783s = -1;
                    bVar7.f1784t = -1;
                    return;
                }
                if (i13 != 3) {
                    throw new IllegalArgumentException("right to " + Y(i13) + " undefined");
                }
                b bVar8 = aVar.f1731e;
                bVar8.f1778p = i12;
                bVar8.f1780q = -1;
                bVar8.f1782r = -1;
                bVar8.f1783s = -1;
                bVar8.f1784t = -1;
                return;
            case 5:
                if (i13 == 5) {
                    b bVar9 = aVar.f1731e;
                    bVar9.f1782r = i12;
                    bVar9.f1780q = -1;
                    bVar9.f1778p = -1;
                    bVar9.f1774n = -1;
                    bVar9.f1776o = -1;
                    return;
                }
                if (i13 == 3) {
                    b bVar10 = aVar.f1731e;
                    bVar10.f1783s = i12;
                    bVar10.f1780q = -1;
                    bVar10.f1778p = -1;
                    bVar10.f1774n = -1;
                    bVar10.f1776o = -1;
                    return;
                }
                if (i13 != 4) {
                    throw new IllegalArgumentException("right to " + Y(i13) + " undefined");
                }
                b bVar11 = aVar.f1731e;
                bVar11.f1784t = i12;
                bVar11.f1780q = -1;
                bVar11.f1778p = -1;
                bVar11.f1774n = -1;
                bVar11.f1776o = -1;
                return;
            case 6:
                if (i13 == 6) {
                    b bVar12 = aVar.f1731e;
                    bVar12.f1786v = i12;
                    bVar12.f1785u = -1;
                    return;
                } else if (i13 == 7) {
                    b bVar13 = aVar.f1731e;
                    bVar13.f1785u = i12;
                    bVar13.f1786v = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + Y(i13) + " undefined");
                }
            case 7:
                if (i13 == 7) {
                    b bVar14 = aVar.f1731e;
                    bVar14.f1788x = i12;
                    bVar14.f1787w = -1;
                    return;
                } else if (i13 == 6) {
                    b bVar15 = aVar.f1731e;
                    bVar15.f1787w = i12;
                    bVar15.f1788x = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + Y(i13) + " undefined");
                }
            default:
                throw new IllegalArgumentException(Y(i11) + " to " + Y(i13) + " unknown");
        }
    }

    public void s(int i10, int i11, int i12, float f10) {
        b bVar = x(i10).f1731e;
        bVar.B = i11;
        bVar.C = i12;
        bVar.D = f10;
    }

    public void t(int i10, int i11) {
        x(i10).f1731e.f1756e = i11;
    }

    public void u(int i10, int i11) {
        x(i10).f1731e.f1754d = i11;
    }

    public a y(int i10) {
        if (this.f1726h.containsKey(Integer.valueOf(i10))) {
            return (a) this.f1726h.get(Integer.valueOf(i10));
        }
        return null;
    }

    public int z(int i10) {
        return x(i10).f1731e.f1756e;
    }
}
