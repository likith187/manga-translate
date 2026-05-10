package com.oplus.vfxsdk.common;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.w;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11275a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List a(String str) {
            kotlin.sequences.f<kotlin.text.l> fVarFindAll$default = kotlin.text.n.findAll$default(new kotlin.text.n("texture\\s*\\(\\s*(\\w+)\\s*,\\s*"), str, 0, 2, null);
            ArrayList arrayList = new ArrayList();
            for (kotlin.text.l lVar : fVarFindAll$default) {
                int i10 = 1;
                String string = kotlin.text.r.N0((String) lVar.a().get(1)).toString();
                int iIntValue = lVar.c().g().intValue() + 1;
                int i11 = iIntValue;
                while (i11 < str.length() && i10 > 0) {
                    char cCharAt = str.charAt(i11);
                    if (cCharAt == '(') {
                        i10++;
                    } else if (cCharAt == ')') {
                        i10--;
                    }
                    i11++;
                }
                if (i10 == 0) {
                    String strSubstring = str.substring(iIntValue, i11 - 1);
                    kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(w.a(string, kotlin.text.r.N0(strSubstring).toString()));
                }
            }
            return arrayList;
        }

        private final String b(String str, boolean z10) {
            Matcher matcher = Pattern.compile("void\\s+main\\s*\\(.*\\)\\s*\\{").matcher(str);
            kotlin.jvm.internal.r.d(matcher, "matcher(...)");
            if (!matcher.find()) {
                return "";
            }
            int iEnd = matcher.end();
            int i10 = iEnd;
            int i11 = 1;
            while (i11 > 0 && i10 < str.length()) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == '{') {
                    i11++;
                } else if (cCharAt == '}') {
                    i11--;
                }
                i10++;
            }
            String strSubstring = str.substring(iEnd, i10 - 1);
            kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = kotlin.text.r.N0(strSubstring).toString();
            StringBuilder sb = new StringBuilder();
            sb.append("    runtimeShader_uv = (u_matResolution * vec3(FragCoord, 1.0)).xy / u_resolution.xy;\n");
            sb.append("    runtimeShader_FragCoord = vec4((u_matResolution * vec3(FragCoord, 1.0)).xy, 0.0, 1.0);\n");
            sb.append("    runtimeShader_FragCoord.y = u_resolution.y - runtimeShader_FragCoord.y; \n");
            sb.append(kotlin.text.r.N0(string).toString());
            if (z10) {
                sb.append("\n    runtimeShader_FragColor.xyz *= runtimeShader_FragColor.a;\n");
            }
            sb.append("\n    return runtimeShader_FragColor;\n");
            String string2 = sb.toString();
            kotlin.jvm.internal.r.d(string2, "toString(...)");
            return new kotlin.text.n("void\\s+main\\s*\\(.*\\)\\s*\\{").replace(kotlin.text.r.B(str, string, string2, false, 4, null), "vec4 main(vec2 FragCoord) {");
        }

        public final String c(String glsl, boolean z10) {
            String str;
            String str2;
            kotlin.jvm.internal.r.e(glsl, "glsl");
            List listT0 = kotlin.collections.o.t0(kotlin.text.r.f0(b(glsl, z10)));
            StringBuilder sb = new StringBuilder();
            kotlin.text.n nVar = new kotlin.text.n("uniform\\s+mat3\\s+u_matResolution\\s*;");
            kotlin.text.n nVar2 = new kotlin.text.n("uniform\\s+vec2\\s+u_resolution\\s*;");
            kotlin.text.n nVar3 = new kotlin.text.n("uniform\\s+float\\s+u_time\\s*;");
            Iterator it = listT0.iterator();
            int i10 = 0;
            int i11 = 0;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            int i12 = -1;
            int i13 = -1;
            while (it.hasNext()) {
                int i14 = i11 + 1;
                String str3 = (String) it.next();
                Iterator it2 = it;
                int i15 = i11;
                if (kotlin.text.r.F(str3, "#version", false, 2, null)) {
                    i12 = i15;
                } else if (kotlin.text.r.F(str3, "precision", false, 2, null)) {
                    i13 = i15;
                }
                if (nVar2.containsMatchIn(str3)) {
                    z11 = true;
                }
                if (nVar3.containsMatchIn(str3)) {
                    z12 = true;
                }
                i11 = i14;
                if (nVar.containsMatchIn(str3)) {
                    it = it2;
                    z13 = true;
                } else {
                    it = it2;
                }
            }
            int i16 = -1;
            if (i12 != -1) {
                listT0.set(i12, "// " + listT0.get(i12) + "  // version directive is not needed in AGSL");
                i16 = -1;
            }
            if (i13 != i16) {
                listT0.set(i13, "// " + listT0.get(i13) + "  // precision directive is not needed in AGSL");
            }
            kotlin.text.n nVar4 = new kotlin.text.n("uniform\\s+sampler2D\\s+(\\w+);");
            int size = listT0.size();
            for (int i17 = 0; i17 < size; i17++) {
                if (nVar4.containsMatchIn((CharSequence) listT0.get(i17))) {
                    kotlin.text.l lVarFind$default = kotlin.text.n.find$default(nVar4, (CharSequence) listT0.get(i17), 0, 2, null);
                    kotlin.jvm.internal.r.b(lVarFind$default);
                    String str4 = (String) lVarFind$default.a().get(1);
                    listT0.set(i17, nVar4.replace((CharSequence) listT0.get(i17), "uniform shader " + str4 + ";\nuniform vec2 " + str4 + "_size;"));
                }
            }
            if (!z11) {
                listT0.add(0, "uniform vec2 u_resolution;");
            }
            if (!z12) {
                listT0.add(0, "uniform float u_time;");
            }
            if (!z13) {
                listT0.add(0, "uniform mat3 u_matResolution;");
            }
            listT0.add(0, "vec4 runtimeShader_FragCoord;");
            listT0.add(0, "vec2 runtimeShader_uv;");
            listT0.add(0, "vec4 runtimeShader_FragColor;");
            int size2 = listT0.size();
            for (int i18 = 0; i18 < size2; i18++) {
                listT0.set(i18, new kotlin.text.n("gl_FragCoord").replace((CharSequence) listT0.get(i18), "runtimeShader_FragCoord"));
            }
            kotlin.text.n nVar5 = new kotlin.text.n("varying\\s+(vec\\d+)\\s+(\\w+);");
            kotlin.text.n nVar6 = new kotlin.text.n("//\\s*RuntimeShader_uv");
            int size3 = listT0.size();
            int i19 = 0;
            while (true) {
                if (i19 >= size3) {
                    str = null;
                    break;
                }
                String str5 = (String) kotlin.collections.o.T(listT0, i19 - 1);
                nVar6.containsMatchIn(String.valueOf(str5 != null ? kotlin.text.r.N0(str5).toString() : null));
                kotlin.text.l lVarMatchEntire = nVar5.matchEntire(kotlin.text.r.N0((String) listT0.get(i19)).toString());
                if (lVarMatchEntire != null) {
                    str = (String) lVarMatchEntire.a().get(2);
                    listT0.set(i19, "// " + listT0.get(i19));
                    break;
                }
                i19++;
            }
            kotlin.text.n nVar7 = new kotlin.text.n("texture2D\\s*\\((\\w+),\\s*([^\\)]+)\\)");
            int size4 = listT0.size();
            int i20 = 0;
            while (i20 < size4) {
                if (nVar7.containsMatchIn((CharSequence) listT0.get(i20))) {
                    kotlin.text.l lVarFind$default2 = kotlin.text.n.find$default(nVar7, (CharSequence) listT0.get(i20), i10, 2, null);
                    kotlin.jvm.internal.r.b(lVarFind$default2);
                    String str6 = (String) lVarFind$default2.a().get(1);
                    String str7 = (String) lVarFind$default2.a().get(2);
                    listT0.set(i20, nVar7.replace((CharSequence) listT0.get(i20), str6 + ".eval(" + str7 + " * " + str6 + "_size)"));
                }
                i20++;
                i10 = 0;
            }
            if (str != null) {
                kotlin.text.n nVar8 = new kotlin.text.n("\\b" + str + "\\b");
                int size5 = listT0.size();
                for (int i21 = 0; i21 < size5; i21++) {
                    listT0.set(i21, nVar8.replace((CharSequence) listT0.get(i21), "runtimeShader_uv"));
                }
            }
            kotlin.text.n nVar9 = new kotlin.text.n("\\bgl_FragColor\\b");
            int size6 = listT0.size();
            for (int i22 = 0; i22 < size6; i22++) {
                listT0.set(i22, nVar9.replace((CharSequence) listT0.get(i22), "runtimeShader_FragColor"));
            }
            kotlin.text.n nVar10 = new kotlin.text.n("in\\s+(vec\\d+)\\s+(\\w+);");
            int size7 = listT0.size();
            int i23 = 0;
            while (true) {
                if (i23 >= size7) {
                    str2 = null;
                    break;
                }
                String str8 = (String) kotlin.collections.o.T(listT0, i23 - 1);
                nVar6.containsMatchIn(String.valueOf(str8 != null ? kotlin.text.r.N0(str8).toString() : null));
                kotlin.text.l lVarMatchEntire2 = nVar10.matchEntire(kotlin.text.r.N0((String) listT0.get(i23)).toString());
                if (lVarMatchEntire2 != null) {
                    String str9 = (String) lVarMatchEntire2.a().get(2);
                    listT0.set(i23, "// " + listT0.get(i23));
                    str2 = str9;
                    break;
                }
                i23++;
            }
            kotlin.text.n nVar11 = new kotlin.text.n("texture\\s*\\(\\s*(\\w+)\\s*,\\s*([^,)]+)");
            int size8 = listT0.size();
            int i24 = 0;
            while (i24 < size8) {
                if (nVar11.containsMatchIn((CharSequence) listT0.get(i24))) {
                    for (Iterator it3 = a((String) listT0.get(i24)).iterator(); it3.hasNext(); it3 = it3) {
                        n8.q qVar = (n8.q) it3.next();
                        String str10 = (String) qVar.component1();
                        String str11 = (String) qVar.component2();
                        StringBuilder sb2 = new StringBuilder();
                        kotlin.text.n nVar12 = nVar11;
                        sb2.append("Texture variable: ");
                        sb2.append(str10);
                        sb2.append(", TexCoord variable: ");
                        sb2.append(str11);
                        System.out.println((Object) sb2.toString());
                        listT0.set(i24, new kotlin.text.n("texture\\s*\\(\\s*" + str10 + "\\s*,\\s*" + kotlin.text.n.Companion.c(str11) + "\\s*\\)").replace((CharSequence) listT0.get(i24), str10 + ".eval((" + str11 + ") * " + str10 + "_size)"));
                        nVar11 = nVar12;
                        size8 = size8;
                    }
                }
                i24++;
                nVar11 = nVar11;
                size8 = size8;
            }
            kotlin.text.n nVar13 = new kotlin.text.n("out\\s+(vec4)\\s+(\\w+);");
            int size9 = listT0.size();
            String str12 = null;
            for (int i25 = 0; i25 < size9; i25++) {
                kotlin.text.l lVarMatchEntire3 = nVar13.matchEntire(kotlin.text.r.N0((String) listT0.get(i25)).toString());
                if (lVarMatchEntire3 != null && kotlin.jvm.internal.r.a(lVarMatchEntire3.a().get(1), "vec4")) {
                    listT0.set(i25, "// " + listT0.get(i25));
                    str12 = (String) lVarMatchEntire3.a().get(2);
                }
            }
            if (str2 != null) {
                kotlin.text.n nVar14 = new kotlin.text.n("\\b" + str2 + "\\b");
                int size10 = listT0.size();
                for (int i26 = 0; i26 < size10; i26++) {
                    listT0.set(i26, nVar14.replace((CharSequence) listT0.get(i26), "runtimeShader_uv"));
                }
            }
            if (str12 != null) {
                int size11 = listT0.size();
                for (int i27 = 0; i27 < size11; i27++) {
                    listT0.set(i27, new kotlin.text.n("\\b" + str12 + "\\b").replace((CharSequence) listT0.get(i27), "runtimeShader_FragColor"));
                }
            }
            Iterator it4 = listT0.iterator();
            while (it4.hasNext()) {
                sb.append((String) it4.next());
                sb.append("\n");
            }
            if (v.f11302d.a()) {
                PrintStream printStream = System.out;
                printStream.println((Object) " ------------ start -------------");
                printStream.println((Object) sb.toString());
                printStream.println((Object) " ------------ end --------------");
            }
            String string = sb.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            return string;
        }

        private a() {
        }
    }
}
