package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f1693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EnumC0009a f1694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1697f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f1698g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1699h;

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.a$a, reason: collision with other inner class name */
    public enum EnumC0009a {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public a(String str, EnumC0009a enumC0009a, Object obj, boolean z10) {
        this.f1693b = str;
        this.f1694c = enumC0009a;
        this.f1692a = z10;
        k(obj);
    }

    public static HashMap b(HashMap map, View view) {
        HashMap map2 = new HashMap();
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            a aVar = (a) map.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    map2.put(str, new a(aVar, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    map2.put(str, new a(aVar, cls.getMethod("getMap" + str, null).invoke(view, null)));
                }
            } catch (IllegalAccessException e10) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e10);
            } catch (NoSuchMethodException e11) {
                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e11);
            } catch (InvocationTargetException e12) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e12);
            }
        }
        return map2;
    }

    public static void i(Context context, XmlPullParser xmlPullParser, HashMap map) {
        EnumC0009a enumC0009a;
        Object objValueOf;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        Object objValueOf2 = null;
        EnumC0009a enumC0009a2 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.CustomAttribute_attributeName) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == R$styleable.CustomAttribute_methodName) {
                string = typedArrayObtainStyledAttributes.getString(index);
                z10 = true;
            } else if (index == R$styleable.CustomAttribute_customBoolean) {
                objValueOf2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                enumC0009a2 = EnumC0009a.BOOLEAN_TYPE;
            } else {
                if (index == R$styleable.CustomAttribute_customColorValue) {
                    enumC0009a = EnumC0009a.COLOR_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R$styleable.CustomAttribute_customColorDrawableValue) {
                    enumC0009a = EnumC0009a.COLOR_DRAWABLE_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R$styleable.CustomAttribute_customPixelDimension) {
                    enumC0009a = EnumC0009a.DIMENSION_TYPE;
                    objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == R$styleable.CustomAttribute_customDimension) {
                    enumC0009a = EnumC0009a.DIMENSION_TYPE;
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.CustomAttribute_customFloatValue) {
                    enumC0009a = EnumC0009a.FLOAT_TYPE;
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == R$styleable.CustomAttribute_customIntegerValue) {
                    enumC0009a = EnumC0009a.INT_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                } else if (index == R$styleable.CustomAttribute_customStringValue) {
                    enumC0009a = EnumC0009a.STRING_TYPE;
                    objValueOf = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.CustomAttribute_customReference) {
                    enumC0009a = EnumC0009a.REFERENCE_TYPE;
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    objValueOf = Integer.valueOf(resourceId);
                }
                Object obj = objValueOf;
                enumC0009a2 = enumC0009a;
                objValueOf2 = obj;
            }
        }
        if (string != null && objValueOf2 != null) {
            map.put(string, new a(string, enumC0009a2, objValueOf2, z10));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void j(View view, HashMap map) {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            a aVar = (a) map.get(str);
            String str2 = aVar.f1692a ? str : "set" + str;
            try {
                switch (aVar.f1694c) {
                    case INT_TYPE:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1695d));
                        break;
                    case FLOAT_TYPE:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(aVar.f1696e));
                        break;
                    case COLOR_TYPE:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1699h));
                        break;
                    case COLOR_DRAWABLE_TYPE:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(aVar.f1699h);
                        method.invoke(view, colorDrawable);
                        break;
                    case STRING_TYPE:
                        cls.getMethod(str2, CharSequence.class).invoke(view, aVar.f1697f);
                        break;
                    case BOOLEAN_TYPE:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(aVar.f1698g));
                        break;
                    case DIMENSION_TYPE:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(aVar.f1696e));
                        break;
                    case REFERENCE_TYPE:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(aVar.f1695d));
                        break;
                }
            } catch (IllegalAccessException e10) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e10);
            } catch (NoSuchMethodException e11) {
                Log.e("TransitionLayout", cls.getName() + " must have a method " + str2, e11);
            } catch (InvocationTargetException e12) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName(), e12);
            }
        }
    }

    public void a(View view) {
        String str;
        Class<?> cls = view.getClass();
        String str2 = this.f1693b;
        if (this.f1692a) {
            str = str2;
        } else {
            str = "set" + str2;
        }
        try {
            switch (this.f1694c) {
                case INT_TYPE:
                case REFERENCE_TYPE:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f1695d));
                    break;
                case FLOAT_TYPE:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f1696e));
                    break;
                case COLOR_TYPE:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f1699h));
                    break;
                case COLOR_DRAWABLE_TYPE:
                    Method method = cls.getMethod(str, Drawable.class);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(this.f1699h);
                    method.invoke(view, colorDrawable);
                    break;
                case STRING_TYPE:
                    cls.getMethod(str, CharSequence.class).invoke(view, this.f1697f);
                    break;
                case BOOLEAN_TYPE:
                    cls.getMethod(str, Boolean.TYPE).invoke(view, Boolean.valueOf(this.f1698g));
                    break;
                case DIMENSION_TYPE:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f1696e));
                    break;
            }
        } catch (IllegalAccessException e10) {
            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName(), e10);
        } catch (NoSuchMethodException e11) {
            Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e11);
        } catch (InvocationTargetException e12) {
            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName(), e12);
        }
    }

    public String c() {
        return this.f1693b;
    }

    public EnumC0009a d() {
        return this.f1694c;
    }

    public float e() {
        switch (this.f1694c) {
            case INT_TYPE:
                return this.f1695d;
            case FLOAT_TYPE:
            case DIMENSION_TYPE:
                return this.f1696e;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case STRING_TYPE:
                throw new RuntimeException("Cannot interpolate String");
            case BOOLEAN_TYPE:
                return this.f1698g ? 1.0f : 0.0f;
            default:
                return Float.NaN;
        }
    }

    public void f(float[] fArr) {
        switch (this.f1694c) {
            case INT_TYPE:
                fArr[0] = this.f1695d;
                return;
            case FLOAT_TYPE:
                fArr[0] = this.f1696e;
                return;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                int i10 = (this.f1699h >> 24) & 255;
                float fPow = (float) Math.pow(((r9 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((r9 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((r9 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i10 / 255.0f;
                return;
            case STRING_TYPE:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case BOOLEAN_TYPE:
                fArr[0] = this.f1698g ? 1.0f : 0.0f;
                return;
            case DIMENSION_TYPE:
                fArr[0] = this.f1696e;
                return;
            default:
                return;
        }
    }

    public boolean g() {
        int iOrdinal = this.f1694c.ordinal();
        return (iOrdinal == 4 || iOrdinal == 5 || iOrdinal == 7) ? false : true;
    }

    public int h() {
        int iOrdinal = this.f1694c.ordinal();
        return (iOrdinal == 2 || iOrdinal == 3) ? 4 : 1;
    }

    public void k(Object obj) {
        switch (this.f1694c) {
            case INT_TYPE:
            case REFERENCE_TYPE:
                this.f1695d = ((Integer) obj).intValue();
                break;
            case FLOAT_TYPE:
                this.f1696e = ((Float) obj).floatValue();
                break;
            case COLOR_TYPE:
            case COLOR_DRAWABLE_TYPE:
                this.f1699h = ((Integer) obj).intValue();
                break;
            case STRING_TYPE:
                this.f1697f = (String) obj;
                break;
            case BOOLEAN_TYPE:
                this.f1698g = ((Boolean) obj).booleanValue();
                break;
            case DIMENSION_TYPE:
                this.f1696e = ((Float) obj).floatValue();
                break;
        }
    }

    public a(a aVar, Object obj) {
        this.f1692a = false;
        this.f1693b = aVar.f1693b;
        this.f1694c = aVar.f1694c;
        k(obj);
    }
}
