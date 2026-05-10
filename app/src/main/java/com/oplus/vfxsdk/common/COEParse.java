package com.oplus.vfxsdk.common;

import android.os.Trace;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Keep;
import com.coui.appcompat.tooltips.COUIToolTips;
import f8.e;
import java.io.ByteArrayInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.collections.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.w;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class COEParse {
    public static final a Companion = new a(null);
    private static final Map<String, String> builtinAnimLineMap = j0.k(w.a("_translate_", "builtin_translate"), w.a("_scale_", "builtin_scale"), w.a("_layout_", "builtin_layout"), w.a("_rotate_", "builtin_rotate"));
    private final String TAG = "COEParse";

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Map a() {
            return COEParse.builtinAnimLineMap;
        }

        private a() {
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11231a;

        static {
            int[] iArr = new int[u.values().length];
            try {
                iArr[u.Int.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u.Range.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u.Float.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[u.Color.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[u.Vec2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[u.Vec3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[u.Vec4.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[u.Texture.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[u.fv.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f11231a = iArr;
        }
    }

    private final int getId(JSONObject jSONObject) {
        try {
            return jSONObject.optInt("id");
        } catch (Error unused) {
            return 0;
        }
    }

    private final boolean parseAnimKey(JSONObject jSONObject, String str, ArrayList<AnimKey> arrayList) throws JSONException {
        if (jSONObject.optJSONArray(str) == null) {
            return false;
        }
        int length = jSONObject.getJSONArray(str).length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject2 = jSONObject.getJSONArray(str).getJSONObject(i10);
            float fOptDouble = (float) jSONObject2.optDouble("time");
            float fOptDouble2 = (float) jSONObject2.optDouble("value");
            String strOptString = jSONObject2.optString("type");
            String strOptString2 = jSONObject2.optString("expr", null);
            String strOptString3 = jSONObject2.optString("ipol", "bezier");
            kotlin.jvm.internal.r.b(jSONObject2);
            float[] floatArray = parseFloatArray(jSONObject2, "bezier", m.b());
            float[] floatArray2 = parseFloatArray(jSONObject2, "spring", m.c());
            m.a(floatArray);
            kotlin.jvm.internal.r.b(strOptString);
            kotlin.jvm.internal.r.b(strOptString3);
            arrayList.add(new AnimKey(fOptDouble, fOptDouble2, strOptString, fOptDouble2, strOptString3, floatArray, floatArray2, strOptString2, null, COUIToolTips.ALIGN_TOP, null));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.HashMap<java.lang.String, com.oplus.vfxsdk.common.AnimatorValue> parseAnimator(org.json.JSONArray r46) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 832
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.vfxsdk.common.COEParse.parseAnimator(org.json.JSONArray):java.util.HashMap");
    }

    private final Effect[] parseEffects(JSONArray jSONArray, boolean z10, HashMap<String, Object> map) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new Effect[0];
        }
        int length = jSONArray.length();
        Effect[] effectArr = new Effect[length];
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            String strOptString = jSONObject.optString("cs");
            int iOptInt = jSONObject.optInt("value");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("uniforms");
            HashMap map2 = new HashMap();
            if (jSONArrayOptJSONArray != null) {
                int length2 = jSONArrayOptJSONArray.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i11);
                    kotlin.jvm.internal.r.b(jSONObject2);
                    n8.q uniform = parseUniform(jSONObject2, z10, map);
                    map2.put((String) uniform.component1(), (Uniform) uniform.component2());
                }
                h0 h0Var = h0.INSTANCE;
            }
            effectArr[i10] = new Effect(iOptInt, strOptString, map2);
        }
        return effectArr;
    }

    private final HashMap<String, String[]> parseExprRecord(JSONObject jSONObject) throws JSONException {
        n8.q qVarA;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("exprRecord");
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        b9.c cVarL = b9.d.l(0, jSONArrayOptJSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator it = cVarL.iterator();
        while (it.hasNext()) {
            JSONArray jSONArray = jSONArrayOptJSONArray.getJSONArray(((kotlin.collections.h0) it).a());
            if (jSONArray.length() >= 2) {
                ArrayList arrayList2 = new ArrayList();
                int length = jSONArray.length();
                for (int i10 = 1; i10 < length; i10++) {
                    arrayList2.add(jSONArray.get(i10).toString());
                }
                qVarA = w.a(jSONArray.getString(0), arrayList2.toArray(new String[0]));
            } else {
                qVarA = null;
            }
            if (qVarA != null) {
                arrayList.add(qVarA);
            }
        }
        Map mapS = j0.s(j0.o(arrayList));
        kotlin.jvm.internal.r.c(mapS, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.Array<kotlin.String>>{ kotlin.collections.TypeAliasesKt.HashMap<kotlin.String, kotlin.Array<kotlin.String>> }");
        return (HashMap) mapS;
    }

    private final float[] parseFloatArray(JSONObject jSONObject, String str, float[] fArr) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return fArr;
        }
        b9.c cVarL = b9.d.l(0, jSONArrayOptJSONArray.length());
        ArrayList arrayList = new ArrayList(kotlin.collections.o.r(cVarL, 10));
        Iterator it = cVarL.iterator();
        while (it.hasNext()) {
            arrayList.add(Float.valueOf((float) jSONArrayOptJSONArray.getDouble(((kotlin.collections.h0) it).a())));
        }
        return kotlin.collections.o.o0(arrayList);
    }

    private final Layer parseLayer(JSONObject jSONObject, boolean z10, HashMap<String, Object> map, int i10) throws JSONException {
        HashMap<String, PassParams[]> params;
        boolean zOptBoolean = jSONObject.optBoolean("enableBlend", false);
        boolean zOptBoolean2 = jSONObject.optBoolean("enable", true);
        int iOptInt = jSONObject.optInt("blendSfactor");
        int iOptInt2 = jSONObject.optInt("blendDfactor");
        boolean zOptBoolean3 = jSONObject.optBoolean("enableBlendA", false);
        int iOptInt3 = zOptBoolean3 ? jSONObject.optInt("blendSfactorA") : iOptInt;
        int iOptInt4 = zOptBoolean3 ? jSONObject.optInt("blendDfactorA") : iOptInt2;
        String strOptString = jSONObject.optString("id", "");
        String strOptString2 = jSONObject.optString("type", "Node");
        String strOptString3 = jSONObject.optString("name", "");
        int iOptInt5 = jSONObject.optInt("order", i10);
        TransformData transform = parseTransform(jSONObject);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("postProcessor");
        PostProcessorData[] postProcessor = jSONArrayOptJSONArray != null ? parsePostProcessor(jSONArrayOptJSONArray) : null;
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("render");
        RendPass[] renders = jSONArrayOptJSONArray2 != null ? parseRenders(jSONArrayOptJSONArray2, z10, map) : null;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
        if (jSONObjectOptJSONObject != null) {
            kotlin.jvm.internal.r.b(renders);
            params = parseParams(jSONObjectOptJSONObject, renders);
        } else {
            params = null;
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("animators");
        HashMap<String, AnimatorValue> animator = jSONArrayOptJSONArray3 != null ? parseAnimator(jSONArrayOptJSONArray3) : null;
        kotlin.jvm.internal.r.b(strOptString);
        kotlin.jvm.internal.r.b(strOptString3);
        kotlin.jvm.internal.r.b(strOptString2);
        kotlin.jvm.internal.r.b(renders);
        return new Layer(strOptString, strOptString3, strOptString2, transform, postProcessor, renders, params, animator, zOptBoolean, zOptBoolean2, iOptInt, iOptInt2, iOptInt3, iOptInt4, iOptInt5);
    }

    static /* synthetic */ Layer parseLayer$default(COEParse cOEParse, JSONObject jSONObject, boolean z10, HashMap map, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            i10 = 0;
        }
        return cOEParse.parseLayer(jSONObject, z10, map, i10);
    }

    private final HashMap<String, PassParams[]> parseParams(JSONObject jSONObject, RendPass[] rendPassArr) throws JSONException {
        Iterator<String> itKeys;
        String str;
        Iterator<String> it;
        u type;
        JSONObject jSONObject2;
        int iOptInt;
        long jOptLong;
        String strOptString;
        float[] floatArray;
        JSONObject jSONObject3 = jSONObject;
        String str2 = "bezier";
        HashMap map = jSONObject3 != null ? new HashMap() : null;
        if (jSONObject3 != null && (itKeys = jSONObject.keys()) != null) {
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArray = jSONObject3.getJSONArray(next);
                ArrayList arrayList = new ArrayList();
                int length = jSONArray.length();
                int i10 = 0;
                while (i10 < length) {
                    ArrayList arrayList2 = new ArrayList();
                    JSONObject jSONObject4 = jSONArray.getJSONObject(i10);
                    Iterator<String> itKeys2 = jSONObject4.keys();
                    kotlin.jvm.internal.r.d(itKeys2, "keys(...)");
                    while (itKeys2.hasNext()) {
                        String next2 = itKeys2.next();
                        try {
                            Uniform uniform = rendPassArr[i10].getUniforms().get(next2);
                            type = uniform != null ? uniform.getType() : null;
                            jSONObject2 = jSONObject4.getJSONObject(next2);
                            it = itKeys2;
                            try {
                                iOptInt = jSONObject2.optInt("delay");
                                jOptLong = jSONObject2.optLong("duration");
                                strOptString = jSONObject2.optString("ipol", str2);
                                kotlin.jvm.internal.r.b(jSONObject2);
                                floatArray = parseFloatArray(jSONObject2, str2, m.b());
                                m.a(floatArray);
                                str = str2;
                            } catch (JSONException e10) {
                                e = e10;
                                str = str2;
                            } catch (Exception e11) {
                                e = e11;
                                str = str2;
                            }
                        } catch (JSONException e12) {
                            e = e12;
                            str = str2;
                            it = itKeys2;
                        } catch (Exception e13) {
                            e = e13;
                            str = str2;
                            it = itKeys2;
                        }
                        try {
                            float[] floatArray2 = parseFloatArray(jSONObject2, "spring", m.c());
                            Object[] uniformValue = parseUniformValue(type, jSONObject2);
                            if (!(uniformValue.length == 0) && type != null) {
                                kotlin.jvm.internal.r.b(next2);
                                kotlin.jvm.internal.r.b(strOptString);
                                arrayList2.add(new UniformValue(next2, type, uniformValue, iOptInt, jOptLong, strOptString, floatArray, floatArray2));
                            }
                        } catch (JSONException e14) {
                            e = e14;
                            e.printStackTrace();
                            Log.e("COE_LOGGER", this.TAG + "=>Error parsing JSON for uniform " + next2, e);
                        } catch (Exception e15) {
                            e = e15;
                            e.printStackTrace();
                            Log.e("COE_LOGGER", this.TAG + "=>Error processing uniform " + next2, e);
                        }
                        itKeys2 = it;
                        str2 = str;
                    }
                    arrayList.add(new PassParams((UniformValue[]) arrayList2.toArray(new UniformValue[0])));
                    i10++;
                    str2 = str2;
                }
                String str3 = str2;
                if (map != null) {
                    kotlin.jvm.internal.r.b(next);
                    map.put(next, arrayList.toArray(new PassParams[0]));
                }
                jSONObject3 = jSONObject;
                str2 = str3;
            }
        }
        return map;
    }

    private final PostProcessorData[] parsePostProcessor(JSONArray jSONArray) throws JSONException {
        if (jSONArray.length() == 0) {
            return null;
        }
        int length = jSONArray.length();
        PostProcessorData[] postProcessorDataArr = new PostProcessorData[length];
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            String strOptString = jSONObject.optString("id");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("properties");
            HashMap map = new HashMap();
            if (jSONArrayOptJSONArray != null) {
                int length2 = jSONArrayOptJSONArray.length();
                h0[] h0VarArr = new h0[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i11);
                    kotlin.jvm.internal.r.b(jSONObject2);
                    n8.q uniform$default = parseUniform$default(this, jSONObject2, false, null, 4, null);
                    map.put((String) uniform$default.component1(), (Uniform) uniform$default.component2());
                    h0VarArr[i11] = h0.INSTANCE;
                }
            }
            kotlin.jvm.internal.r.b(strOptString);
            postProcessorDataArr[i10] = new PostProcessorData(strOptString, map);
        }
        return postProcessorDataArr;
    }

    private final RendPass parseRender(JSONObject jSONObject, boolean z10, HashMap<String, Object> map, int i10) throws JSONException {
        String str;
        String str2;
        int i11;
        String str3;
        Effect[] effectArr;
        StatusAnim[] statusAnimArr;
        String strOptString = jSONObject.optString("vs");
        String strOptString2 = jSONObject.optString("fs");
        String strOptString3 = jSONObject.optString("cs");
        int iOptInt = jSONObject.optInt("order", i10);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("uniforms");
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("status");
        Effect[] effects = parseEffects(jSONObject.optJSONArray("effects"), z10, map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (jSONArrayOptJSONArray2 != null) {
            int length = jSONArrayOptJSONArray2.length();
            StatusAnim[] statusAnimArr2 = new StatusAnim[length];
            int i12 = 0;
            while (i12 < length) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i12);
                String strOptString4 = jSONObject2.optString("name");
                JSONArray jSONArray = jSONArrayOptJSONArray2;
                JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("anims");
                int length2 = jSONArrayOptJSONArray3.length();
                int i13 = length;
                Anim[] animArr = new Anim[length2];
                Effect[] effectArr2 = effects;
                int i14 = 0;
                while (i14 < length2) {
                    int i15 = length2;
                    JSONObject jSONObject3 = jSONArrayOptJSONArray3.getJSONObject(i14);
                    JSONArray jSONArray2 = jSONArrayOptJSONArray3;
                    String strOptString5 = jSONObject3.optString("uniformName");
                    String strOptString6 = jSONObject3.optString("type");
                    JSONArray jSONArrayOptJSONArray4 = jSONObject3.optJSONArray("beizer");
                    String str4 = strOptString3;
                    Object objOpt = jSONObject3.opt("value");
                    long jOptLong = jSONObject3.optLong("duration");
                    int length3 = jSONArrayOptJSONArray4.length();
                    Float[] fArr = new Float[length3];
                    int i16 = iOptInt;
                    int i17 = 0;
                    while (i17 < length3) {
                        fArr[i17] = Float.valueOf((float) jSONArrayOptJSONArray4.getDouble(i17));
                        i17++;
                        strOptString = strOptString;
                        strOptString2 = strOptString2;
                    }
                    kotlin.jvm.internal.r.b(strOptString5);
                    kotlin.jvm.internal.r.b(strOptString6);
                    kotlin.jvm.internal.r.b(objOpt);
                    animArr[i14] = new Anim(strOptString5, strOptString6, fArr, objOpt, jOptLong);
                    i14++;
                    length2 = i15;
                    jSONArrayOptJSONArray3 = jSONArray2;
                    strOptString3 = str4;
                    iOptInt = i16;
                }
                kotlin.jvm.internal.r.b(strOptString4);
                statusAnimArr2[i12] = new StatusAnim(strOptString4, animArr);
                i12++;
                jSONArrayOptJSONArray2 = jSONArray;
                length = i13;
                effects = effectArr2;
            }
            str = strOptString;
            str2 = strOptString2;
            i11 = iOptInt;
            str3 = strOptString3;
            effectArr = effects;
            statusAnimArr = statusAnimArr2;
        } else {
            str = strOptString;
            str2 = strOptString2;
            i11 = iOptInt;
            str3 = strOptString3;
            effectArr = effects;
            statusAnimArr = null;
        }
        if (jSONArrayOptJSONArray != null) {
            int length4 = jSONArrayOptJSONArray.length();
            for (int i18 = 0; i18 < length4; i18++) {
                JSONObject jSONObject4 = jSONArrayOptJSONArray.getJSONObject(i18);
                kotlin.jvm.internal.r.b(jSONObject4);
                n8.q uniform = parseUniform(jSONObject4, z10, map);
                linkedHashMap.put((String) uniform.component1(), (Uniform) uniform.component2());
            }
        }
        kotlin.jvm.internal.r.b(str);
        kotlin.jvm.internal.r.b(str2);
        return new RendPass(str, str2, i11, linkedHashMap, statusAnimArr, str3, effectArr);
    }

    static /* synthetic */ RendPass parseRender$default(COEParse cOEParse, JSONObject jSONObject, boolean z10, HashMap map, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            i10 = 0;
        }
        return cOEParse.parseRender(jSONObject, z10, map, i10);
    }

    private final RendPass[] parseRenders(JSONArray jSONArray, boolean z10, HashMap<String, Object> map) throws JSONException {
        int length = jSONArray.length();
        RendPass[] rendPassArr = new RendPass[length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            kotlin.jvm.internal.r.b(jSONObject);
            rendPassArr[i10] = parseRender(jSONObject, z10, map, i11);
            i10++;
            i11++;
        }
        return rendPassArr;
    }

    private final TransformData parseTransform(JSONObject jSONObject) {
        Float[] fArr;
        String[] strArr;
        Float[] fArr2;
        Float[] fArr3;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("layout");
        if (jSONArrayOptJSONArray != null) {
            b9.c cVarL = b9.d.l(0, jSONArrayOptJSONArray.length());
            ArrayList arrayList = new ArrayList(kotlin.collections.o.r(cVarL, 10));
            Iterator it = cVarL.iterator();
            while (it.hasNext()) {
                arrayList.add(Float.valueOf((float) jSONArrayOptJSONArray.getDouble(((kotlin.collections.h0) it).a())));
            }
            fArr = (Float[]) arrayList.toArray(new Float[0]);
        } else {
            fArr = null;
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("layout_expr");
        if (jSONArrayOptJSONArray2 != null) {
            b9.c cVarL2 = b9.d.l(0, jSONArrayOptJSONArray2.length());
            ArrayList arrayList2 = new ArrayList(kotlin.collections.o.r(cVarL2, 10));
            Iterator it2 = cVarL2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(jSONArrayOptJSONArray2.optString(((kotlin.collections.h0) it2).a()));
            }
            strArr = (String[]) arrayList2.toArray(new String[0]);
        } else {
            strArr = null;
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("scale");
        if (jSONArrayOptJSONArray3 != null) {
            b9.c cVarL3 = b9.d.l(0, jSONArrayOptJSONArray3.length());
            ArrayList arrayList3 = new ArrayList(kotlin.collections.o.r(cVarL3, 10));
            Iterator it3 = cVarL3.iterator();
            while (it3.hasNext()) {
                arrayList3.add(Float.valueOf((float) jSONArrayOptJSONArray3.getDouble(((kotlin.collections.h0) it3).a())));
            }
            fArr2 = (Float[]) arrayList3.toArray(new Float[0]);
        } else {
            fArr2 = null;
        }
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("rotate");
        if (jSONArrayOptJSONArray4 != null) {
            b9.c cVarL4 = b9.d.l(0, jSONArrayOptJSONArray4.length());
            ArrayList arrayList4 = new ArrayList(kotlin.collections.o.r(cVarL4, 10));
            Iterator it4 = cVarL4.iterator();
            while (it4.hasNext()) {
                arrayList4.add(Float.valueOf((float) jSONArrayOptJSONArray4.getDouble(((kotlin.collections.h0) it4).a())));
            }
            fArr3 = (Float[]) arrayList4.toArray(new Float[0]);
        } else {
            fArr3 = null;
        }
        if (fArr == null || fArr2 == null || fArr3 == null) {
            return null;
        }
        return new TransformData(fArr, strArr, fArr2, fArr3);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final n8.q parseUniform(org.json.JSONObject r28, boolean r29, java.util.HashMap<java.lang.String, java.lang.Object> r30) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.vfxsdk.common.COEParse.parseUniform(org.json.JSONObject, boolean, java.util.HashMap):n8.q");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ n8.q parseUniform$default(COEParse cOEParse, JSONObject jSONObject, boolean z10, HashMap map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = null;
        }
        return cOEParse.parseUniform(jSONObject, z10, map);
    }

    private final u parseUniformType(JSONObject jSONObject) {
        u uVar;
        String strOptString = jSONObject.optString("type");
        kotlin.jvm.internal.r.d(strOptString, "optString(...)");
        String lowerCase = strOptString.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.r.d(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        u[] uVarArrValues = u.values();
        int length = uVarArrValues.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                uVar = null;
                break;
            }
            uVar = uVarArrValues[i10];
            String lowerCase2 = uVar.name().toLowerCase(Locale.ROOT);
            kotlin.jvm.internal.r.d(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            if (kotlin.jvm.internal.r.a(lowerCase2, lowerCase)) {
                break;
            }
            i10++;
        }
        return uVar == null ? u.Float : uVar;
    }

    private final Object[] parseUniformValue(u uVar, JSONObject jSONObject) throws JSONException {
        Object[] objArr;
        switch (uVar == null ? -1 : b.f11231a[uVar.ordinal()]) {
            case 1:
                objArr = new Object[]{Integer.valueOf(jSONObject.getInt("value"))};
                break;
            case 2:
            case 3:
                objArr = new Object[]{Float.valueOf((float) jSONObject.getDouble("value"))};
                break;
            case 4:
                JSONArray jSONArray = jSONObject.getJSONArray("value");
                objArr = new Object[]{Float.valueOf((float) jSONArray.getDouble(0)), Float.valueOf((float) jSONArray.getDouble(1)), Float.valueOf((float) jSONArray.getDouble(2)), Float.valueOf((float) jSONArray.getDouble(3))};
                break;
            case 5:
                JSONArray jSONArray2 = jSONObject.getJSONArray("value");
                objArr = new Object[]{Float.valueOf((float) jSONArray2.getDouble(0)), Float.valueOf((float) jSONArray2.getDouble(1))};
                break;
            case 6:
                JSONArray jSONArray3 = jSONObject.getJSONArray("value");
                objArr = new Object[]{Float.valueOf((float) jSONArray3.getDouble(0)), Float.valueOf((float) jSONArray3.getDouble(1)), Float.valueOf((float) jSONArray3.getDouble(2))};
                break;
            case 7:
                JSONArray jSONArray4 = jSONObject.getJSONArray("value");
                objArr = new Object[]{Float.valueOf((float) jSONArray4.getDouble(0)), Float.valueOf((float) jSONArray4.getDouble(1)), Float.valueOf((float) jSONArray4.getDouble(2)), Float.valueOf((float) jSONArray4.getDouble(3))};
                break;
            default:
                return new Object[0];
        }
        return objArr;
    }

    public final String getTAG() {
        return this.TAG;
    }

    public final COEData parse(byte[] contentBytes, boolean z10) {
        HashMap<String, AnimatorValue> animator;
        int length;
        int i10;
        HashMap<String, String[]> map;
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject;
        JSONArray jSONArray3;
        int i11;
        Layer layer;
        PostProcessorData[] postProcessor;
        kotlin.jvm.internal.r.e(contentBytes, "contentBytes");
        Trace.beginSection("parseProtocl");
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashMap<String, Object> map2 = new HashMap<>();
        String str = "";
        if (z10) {
            ZipInputStream zipInputStream = new ZipInputStream(new ByteArrayInputStream(contentBytes));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    if (!nextEntry.isDirectory()) {
                        String name = nextEntry.getName();
                        if (kotlin.jvm.internal.r.a("data", name)) {
                            StringBuilder sb = new StringBuilder();
                            byte[] bArr = new byte[20480];
                            while (true) {
                                int i12 = zipInputStream.read(bArr);
                                if (i12 <= 0) {
                                    break;
                                }
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                kotlin.jvm.internal.r.d(UTF_8, "UTF_8");
                                sb.append(new String(bArr, 0, i12, UTF_8));
                            }
                            String string = sb.toString();
                            kotlin.jvm.internal.r.d(string, "toString(...)");
                            String strSubstring = string.substring(2);
                            kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
                            byte[] bArrDecode = Base64.decode(strSubstring, 0);
                            kotlin.jvm.internal.r.d(bArrDecode, "decode(...)");
                            str = kotlin.text.r.s(bArrDecode);
                        } else if (((int) nextEntry.getSize()) != 0) {
                            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((int) nextEntry.getSize());
                            Channels.newChannel(zipInputStream).read(byteBufferAllocateDirect);
                            kotlin.jvm.internal.r.b(name);
                            kotlin.jvm.internal.r.b(byteBufferAllocateDirect);
                            map2.put(name, byteBufferAllocateDirect);
                        }
                    }
                    zipInputStream.closeEntry();
                } finally {
                }
            }
            h0 h0Var = h0.INSTANCE;
            kotlin.io.c.a(zipInputStream, null);
        }
        if (!z10) {
            str = new String(contentBytes, kotlin.text.d.f13110a);
        }
        JSONObject jSONObject2 = new JSONObject(str);
        String strOptString = jSONObject2.optString("name");
        int iOptInt = jSONObject2.optInt("v");
        int iOptInt2 = jSONObject2.optInt("mV");
        long jOptLong = jSONObject2.optLong("cT");
        long jOptLong2 = jSONObject2.optLong("coeV");
        TransformData transform = parseTransform(jSONObject2);
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("postProcessor");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("render");
        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("params");
        JSONArray jSONArrayOptJSONArray3 = jSONObject2.optJSONArray("animators");
        HashMap<String, String[]> exprRecord = parseExprRecord(jSONObject2);
        JSONArray jSONArrayOptJSONArray4 = jSONObject2.optJSONArray("layers");
        if (jSONArrayOptJSONArray2 != null) {
            animator = null;
            length = 1;
        } else {
            animator = parseAnimator(jSONArrayOptJSONArray3);
            length = 0;
        }
        if (jSONArrayOptJSONArray4 != null) {
            length += jSONArrayOptJSONArray4.length();
        }
        int i13 = length;
        Layer[] layerArr = new Layer[i13];
        HashMap<String, AnimatorValue> map3 = animator;
        int i14 = 0;
        int i15 = 0;
        while (i15 < i13) {
            if (i15 != 0 || jSONArrayOptJSONArray2 == null) {
                i10 = i13;
                map = exprRecord;
                jSONArray = jSONArrayOptJSONArray3;
                jSONArray2 = jSONArrayOptJSONArray2;
                jSONObject = jSONObjectOptJSONObject;
                jSONArray3 = jSONArrayOptJSONArray;
                kotlin.jvm.internal.r.b(jSONArrayOptJSONArray4);
                JSONObject jSONObject3 = jSONArrayOptJSONArray4.getJSONObject(i15);
                kotlin.jvm.internal.r.d(jSONObject3, "getJSONObject(...)");
                i11 = 1;
                layer = parseLayer(jSONObject3, z10, map2, i14);
                i14++;
            } else {
                if (jSONArrayOptJSONArray != null) {
                    postProcessor = parsePostProcessor(jSONArrayOptJSONArray);
                    i10 = i13;
                } else {
                    i10 = i13;
                    postProcessor = null;
                }
                RendPass[] renders = parseRenders(jSONArrayOptJSONArray2, z10, map2);
                HashMap<String, PassParams[]> params = parseParams(jSONObjectOptJSONObject, renders);
                HashMap<String, AnimatorValue> animator2 = parseAnimator(jSONArrayOptJSONArray3);
                map = exprRecord;
                kotlin.jvm.internal.r.b(strOptString);
                jSONArray = jSONArrayOptJSONArray3;
                jSONObject = jSONObjectOptJSONObject;
                jSONArray2 = jSONArrayOptJSONArray2;
                jSONArray3 = jSONArrayOptJSONArray;
                layer = new Layer("", strOptString, "Node", transform, postProcessor, renders, params, animator2, false, false, 0, 0, 0, 0, 0, 32256, null);
                i11 = 1;
            }
            layerArr[i15] = layer;
            i15 += i11;
            i13 = i10;
            exprRecord = map;
            jSONArrayOptJSONArray3 = jSONArray;
            jSONObjectOptJSONObject = jSONObject;
            jSONArrayOptJSONArray2 = jSONArray2;
            jSONArrayOptJSONArray = jSONArray3;
        }
        HashMap<String, String[]> map4 = exprRecord;
        map2.clear();
        Log.d("COE_LOGGER", this.TAG + "=>parse time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
        e.a aVar = f8.e.f12039a;
        kotlin.jvm.internal.r.b(strOptString);
        f8.c cVarB = aVar.b(strOptString);
        if (cVarB != null) {
            cVarB.e(strOptString);
            cVarB.f(contentBytes.length);
            cVarB.k((int) (System.currentTimeMillis() - jCurrentTimeMillis));
        }
        Trace.endSection();
        return new COEData(strOptString, iOptInt, iOptInt2, jOptLong, jOptLong2, layerArr, new k(map4), map3);
    }
}
