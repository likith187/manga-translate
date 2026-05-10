package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.h0;
import androidx.appcompat.widget.u;
import androidx.core.view.r;
import com.oplus.aiunit.core.ConfigPackage;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Class[] f499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Class[] f500f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object[] f501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object[] f502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f504d;

    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Class[] f505c = {MenuItem.class};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f506a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f507b;

        public a(Object obj, String str) {
            this.f506a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f507b = cls.getMethod(str, f505c);
            } catch (Exception e10) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e10);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f507b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f507b.invoke(this.f506a, menuItem)).booleanValue();
                }
                this.f507b.invoke(this.f506a, menuItem);
                return true;
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    private class b {
        androidx.core.view.b A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Menu f508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f510c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f511d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f512e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f513f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f514g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f515h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f516i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f517j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private CharSequence f518k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private CharSequence f519l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f520m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private char f521n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f522o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private char f523p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f524q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f525r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f526s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f527t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f528u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f529v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f530w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private String f531x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private String f532y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private String f533z;

        public b(Menu menu) {
            this.f508a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private Object e(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.f503c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e10) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e10);
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z10 = false;
            menuItem.setChecked(this.f526s).setVisible(this.f527t).setEnabled(this.f528u).setCheckable(this.f525r >= 1).setTitleCondensed(this.f519l).setIcon(this.f520m);
            int i10 = this.f529v;
            if (i10 >= 0) {
                menuItem.setShowAsAction(i10);
            }
            if (this.f533z != null) {
                if (g.this.f503c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.f533z));
            }
            if (this.f525r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            String str = this.f531x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f499e, g.this.f501a));
                z10 = true;
            }
            int i11 = this.f530w;
            if (i11 > 0) {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i11);
                }
            }
            androidx.core.view.b bVar = this.A;
            if (bVar != null) {
                r.a(menuItem, bVar);
            }
            r.c(menuItem, this.B);
            r.g(menuItem, this.C);
            r.b(menuItem, this.f521n, this.f522o);
            r.f(menuItem, this.f523p, this.f524q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                r.e(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                r.d(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f515h = true;
            i(this.f508a.add(this.f509b, this.f516i, this.f517j, this.f518k));
        }

        public SubMenu b() {
            this.f515h = true;
            SubMenu subMenuAddSubMenu = this.f508a.addSubMenu(this.f509b, this.f516i, this.f517j, this.f518k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.f515h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f503c.obtainStyledAttributes(attributeSet, R$styleable.MenuGroup);
            this.f509b = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MenuGroup_android_id, 0);
            this.f510c = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_menuCategory, 0);
            this.f511d = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_orderInCategory, 0);
            this.f512e = typedArrayObtainStyledAttributes.getInt(R$styleable.MenuGroup_android_checkableBehavior, 0);
            this.f513f = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_visible, true);
            this.f514g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            h0 h0VarV = h0.v(g.this.f503c, attributeSet, R$styleable.MenuItem);
            this.f516i = h0VarV.n(R$styleable.MenuItem_android_id, 0);
            this.f517j = (h0VarV.k(R$styleable.MenuItem_android_menuCategory, this.f510c) & (-65536)) | (h0VarV.k(R$styleable.MenuItem_android_orderInCategory, this.f511d) & 65535);
            this.f518k = h0VarV.p(R$styleable.MenuItem_android_title);
            this.f519l = h0VarV.p(R$styleable.MenuItem_android_titleCondensed);
            this.f520m = h0VarV.n(R$styleable.MenuItem_android_icon, 0);
            this.f521n = c(h0VarV.o(R$styleable.MenuItem_android_alphabeticShortcut));
            this.f522o = h0VarV.k(R$styleable.MenuItem_alphabeticModifiers, ConfigPackage.FRAME_SIZE_5);
            this.f523p = c(h0VarV.o(R$styleable.MenuItem_android_numericShortcut));
            this.f524q = h0VarV.k(R$styleable.MenuItem_numericModifiers, ConfigPackage.FRAME_SIZE_5);
            if (h0VarV.s(R$styleable.MenuItem_android_checkable)) {
                this.f525r = h0VarV.a(R$styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.f525r = this.f512e;
            }
            this.f526s = h0VarV.a(R$styleable.MenuItem_android_checked, false);
            this.f527t = h0VarV.a(R$styleable.MenuItem_android_visible, this.f513f);
            this.f528u = h0VarV.a(R$styleable.MenuItem_android_enabled, this.f514g);
            this.f529v = h0VarV.k(R$styleable.MenuItem_showAsAction, -1);
            this.f533z = h0VarV.o(R$styleable.MenuItem_android_onClick);
            this.f530w = h0VarV.n(R$styleable.MenuItem_actionLayout, 0);
            this.f531x = h0VarV.o(R$styleable.MenuItem_actionViewClass);
            String strO = h0VarV.o(R$styleable.MenuItem_actionProviderClass);
            this.f532y = strO;
            boolean z10 = strO != null;
            if (z10 && this.f530w == 0 && this.f531x == null) {
                this.A = (androidx.core.view.b) e(strO, g.f500f, g.this.f502b);
            } else {
                if (z10) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = h0VarV.p(R$styleable.MenuItem_contentDescription);
            this.C = h0VarV.p(R$styleable.MenuItem_tooltipText);
            if (h0VarV.s(R$styleable.MenuItem_iconTintMode)) {
                this.E = u.d(h0VarV.k(R$styleable.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (h0VarV.s(R$styleable.MenuItem_iconTint)) {
                this.D = h0VarV.c(R$styleable.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            h0VarV.y();
            this.f515h = false;
        }

        public void h() {
            this.f509b = 0;
            this.f510c = 0;
            this.f511d = 0;
            this.f512e = 0;
            this.f513f = true;
            this.f514g = true;
        }
    }

    static {
        Class[] clsArr = {Context.class};
        f499e = clsArr;
        f500f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.f503c = context;
        Object[] objArr = {context};
        this.f501a = objArr;
        this.f502b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z10 = false;
        boolean z11 = false;
        String str = null;
        while (!z10) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z11 && name2.equals(str)) {
                        z11 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        bVar.h();
                    } else if (name2.equals("item")) {
                        if (!bVar.d()) {
                            androidx.core.view.b bVar2 = bVar.A;
                            if (bVar2 == null || !bVar2.hasSubMenu()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z10 = true;
                    }
                }
            } else if (!z11) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z11 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object b() {
        if (this.f504d == null) {
            this.f504d = a(this.f503c);
        }
        return this.f504d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i10, Menu menu) {
        if (!(menu instanceof w.a)) {
            super.inflate(i10, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z10 = false;
        try {
            try {
                layout = this.f503c.getResources().getLayout(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof MenuBuilder) {
                    MenuBuilder menuBuilder = (MenuBuilder) menu;
                    if (menuBuilder.isDispatchingItemsChanged()) {
                        menuBuilder.stopDispatchingItemsChanged();
                        z10 = true;
                    }
                }
                c(layout, attributeSetAsAttributeSet, menu);
                if (z10) {
                    ((MenuBuilder) menu).startDispatchingItemsChanged();
                }
                if (layout != null) {
                    layout.close();
                }
            } catch (IOException e10) {
                throw new InflateException("Error inflating menu XML", e10);
            } catch (XmlPullParserException e11) {
                throw new InflateException("Error inflating menu XML", e11);
            }
        } catch (Throwable th) {
            if (z10) {
                ((MenuBuilder) menu).startDispatchingItemsChanged();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
