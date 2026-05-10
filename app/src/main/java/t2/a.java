package t2;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import androidx.lifecycle.a0;
import androidx.lifecycle.y;
import com.support.responsiveui.R$integer;
import java.util.HashMap;
import java.util.LinkedHashMap;
import t2.b;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static a f15678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static HashMap f15679k = new LinkedHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f15686g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f15687h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15680a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a0 f15681b = new a0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a0 f15682c = new a0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a0 f15683d = new a0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a0 f15684e = new a0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a0 f15685f = new a0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b.EnumC0223b f15688i = b.EnumC0223b.SMALL;

    private a(Context context) {
        m(context);
    }

    private int a(int i10) {
        int integer = this.f15687h.getResources().getInteger(R$integer.inner_responsive_ui_column_4);
        int integer2 = this.f15687h.getResources().getInteger(R$integer.inner_responsive_ui_column_8);
        int integer3 = this.f15687h.getResources().getInteger(R$integer.inner_responsive_ui_column_12);
        int i11 = integer / 2;
        return i10 < integer2 - i11 ? integer : (i10 >= integer2 && i10 >= integer3 - i11) ? integer3 : integer2;
    }

    private void b(Resources resources) {
        this.f15686g = resources.getInteger(R$integer.inner_responsive_ui_column_4);
    }

    private void c(Resources resources) {
        Integer num = (Integer) this.f15685f.e();
        int integer = resources.getInteger(R$integer.responsive_ui_column_count);
        float fC = ((c) this.f15684e.e()).c() / e();
        if (fC > 1.0f) {
            fC = 1.0f;
        }
        int iA = a((int) (integer * fC));
        if (num == null || num.intValue() != iA) {
            this.f15685f.n(Integer.valueOf(iA));
        }
    }

    private b.a d(int i10, c cVar) {
        b.a aVar = b.a.UNKNOWN;
        int iC = cVar.c();
        int iA = cVar.a();
        if (iC < 600) {
            this.f15688i = b.EnumC0223b.SMALL;
        } else if (iC < 840) {
            this.f15688i = b.EnumC0223b.MEDIUM;
        } else {
            this.f15688i = b.EnumC0223b.LARGE;
        }
        if (i10 == 1) {
            return iC >= 600 ? b.a.UNFOLD : b.a.FOLD;
        }
        if (i10 == 2) {
            return iA >= 500 ? b.a.UNFOLD : b.a.FOLD;
        }
        Log.d("ResponsiveUIConfig", "undefined orientation Status unknown !!! ");
        return aVar;
    }

    private int e() {
        return this.f15687h.getResources().getConfiguration().screenWidthDp;
    }

    public static a f(Context context) {
        if (f15678j == null) {
            f15678j = new a(context);
        }
        int iHashCode = context.hashCode();
        if (iHashCode != f15678j.f15680a) {
            Log.d("ResponsiveUIConfig", "getDefault context hash change from " + f15678j.f15680a + " to " + iHashCode);
            f15678j.m(context);
        }
        return f15678j;
    }

    private void m(Context context) {
        this.f15680a = context.hashCode();
        Context applicationContext = context.getApplicationContext();
        this.f15687h = applicationContext;
        b(applicationContext.getResources());
        o(context.getResources().getConfiguration());
        c(context.getResources());
        Log.d("ResponsiveUIConfig", "init uiConfig " + this.f15681b.e() + ", columns count " + this.f15685f.e());
        Log.d("ResponsiveUIConfig", "init addContent [" + j() + ":" + h() + "] - [" + i() + ":" + g() + "]");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean o(Configuration configuration) {
        int i10 = configuration.orientation;
        c cVar = new c(configuration.screenWidthDp, configuration.screenHeightDp, configuration.smallestScreenWidthDp);
        b bVar = new b(d(i10, cVar), cVar, i10, this.f15688i);
        b bVar2 = (b) this.f15681b.e();
        boolean z10 = false;
        if (bVar.equals(bVar2)) {
            return false;
        }
        if (bVar2 == null || bVar.c() != bVar2.c()) {
            this.f15682c.n(bVar.c());
        }
        if (bVar2 == null || bVar.a() != bVar2.a()) {
            this.f15683d.n(Integer.valueOf(bVar.a()));
            z10 = true;
        }
        if (bVar2 == null || !bVar.b().equals(bVar2.b())) {
            int iC = bVar.b().c();
            int iE = e();
            if (Math.abs(iC - iE) < 50) {
                this.f15684e.n(bVar.b());
            } else {
                Log.d("ResponsiveUIConfig", "update ScreenSize few case newWidth " + iC + " appWidth " + iE);
                c cVar2 = (c) this.f15684e.e();
                if (cVar2 != null) {
                    iC = z10 ? cVar2.a() : cVar2.c();
                }
                c cVar3 = new c(iC, bVar.b().a(), bVar.b().b());
                this.f15684e.n(cVar3);
                bVar.f(d(((Integer) this.f15683d.e()).intValue(), cVar3));
                bVar.g(this.f15688i);
            }
            bVar.e((c) this.f15684e.e());
        }
        this.f15681b.n(bVar);
        return true;
    }

    public int g() {
        return ((Integer) this.f15685f.e()).intValue() - i();
    }

    public int h() {
        return ((c) this.f15684e.e()).c() - j();
    }

    public int i() {
        return a((int) (((Integer) this.f15685f.e()).intValue() * (j() / ((c) this.f15684e.e()).c())));
    }

    public int j() {
        return ((c) this.f15684e.e()).c() >= 840 ? this.f15687h.getResources().getInteger(R$integer.inner_responsive_ui_extend_hierarchy_parent_width_360) : ((c) this.f15684e.e()).c() >= 600 ? this.f15687h.getResources().getInteger(R$integer.inner_responsive_ui_extend_hierarchy_parent_width_300) : ((c) this.f15684e.e()).c();
    }

    public b.EnumC0223b k() {
        return ((b) this.f15681b.e()).d();
    }

    public y l() {
        return this.f15682c;
    }

    public void n(Configuration configuration) {
        if (o(configuration)) {
            c(this.f15687h.getResources());
            Log.d("ResponsiveUIConfig", "onUIConfigChanged uiConfig " + this.f15681b.e() + ", columns count " + this.f15685f.e());
            Log.d("ResponsiveUIConfig", "onUIConfigChanged addContent [" + j() + ":" + h() + "] - [" + i() + ":" + g() + "]");
        }
    }
}
