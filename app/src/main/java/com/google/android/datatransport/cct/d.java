package com.google.android.datatransport.cct;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.oplus.backup.sdk.common.plugin.BRPluginConfigParser;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import x2.j;
import x2.k;
import x2.l;
import x2.m;
import x2.n;
import x2.o;
import x2.p;
import y2.g;
import y2.h;
import z2.f;
import z2.m;

/* JADX INFO: loaded from: classes.dex */
final class d implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q4.a f7487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConnectivityManager f7488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f7489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final URL f7490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h3.a f7491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h3.a f7492f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f7493g;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final URL f7494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final j f7495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f7496c;

        a(URL url, j jVar, String str) {
            this.f7494a = url;
            this.f7495b = jVar;
            this.f7496c = str;
        }

        a a(URL url) {
            return new a(url, this.f7495b, this.f7496c);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f7497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final URL f7498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f7499c;

        b(int i10, URL url, long j10) {
            this.f7497a = i10;
            this.f7498b = url;
            this.f7499c = j10;
        }
    }

    d(Context context, h3.a aVar, h3.a aVar2, int i10) {
        this.f7487a = j.b();
        this.f7489c = context;
        this.f7488b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f7490d = m(com.google.android.datatransport.cct.a.f7478c);
        this.f7491e = aVar2;
        this.f7492f = aVar;
        this.f7493g = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b d(a aVar) throws IOException {
        b3.a.a("CctTransportBackend", "Making request to: %s", aVar.f7494a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.f7494a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f7493g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.3"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f7496c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f7487a.b(aVar.f7495b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    b3.a.e("CctTransportBackend", "Status Code: " + responseCode);
                    b3.a.e("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                    b3.a.e("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream inputStreamL = l(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, n.b(new BufferedReader(new InputStreamReader(inputStreamL))).c());
                            if (inputStreamL != null) {
                                inputStreamL.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th) {
                            if (inputStreamL != null) {
                                try {
                                    inputStreamL.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable unused2) {
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th3) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable unused3) {
                    }
                    throw th3;
                }
            } catch (Throwable th4) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th4;
            }
        } catch (ConnectException | UnknownHostException e10) {
            b3.a.c("CctTransportBackend", "Couldn't open connection, returning with 500", e10);
            return new b(500, null, 0L);
        } catch (IOException | q4.b e11) {
            b3.a.c("CctTransportBackend", "Couldn't encode request, returning with 400", e11);
            return new b(400, null, 0L);
        }
    }

    private static int e(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return o.b.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return o.b.COMBINED.getValue();
        }
        if (o.b.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    private static int f(NetworkInfo networkInfo) {
        return networkInfo == null ? o.c.NONE.getValue() : networkInfo.getType();
    }

    private static int g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            b3.a.c("CctTransportBackend", "Unable to find version code for package", e10);
            return -1;
        }
    }

    private j h(f fVar) {
        l.a aVarJ;
        HashMap map = new HashMap();
        for (h hVar : fVar.b()) {
            String strJ = hVar.j();
            if (map.containsKey(strJ)) {
                ((List) map.get(strJ)).add(hVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(hVar);
                map.put(strJ, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            h hVar2 = (h) ((List) entry.getValue()).get(0);
            m.a aVarB = x2.m.a().f(p.DEFAULT).g(this.f7492f.getTime()).h(this.f7491e.getTime()).b(k.a().c(k.b.ANDROID_FIREBASE).b(x2.a.a().m(Integer.valueOf(hVar2.g("sdk-version"))).j(hVar2.b("model")).f(hVar2.b("hardware")).d(hVar2.b("device")).l(hVar2.b("product")).k(hVar2.b("os-uild")).h(hVar2.b("manufacturer")).e(hVar2.b("fingerprint")).c(hVar2.b("country")).g(hVar2.b("locale")).i(hVar2.b("mcc_mnc")).b(hVar2.b("application_build")).a()).a());
            try {
                aVarB.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                aVarB.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (h hVar3 : (List) entry.getValue()) {
                g gVarE = hVar3.e();
                w2.b bVarB = gVarE.b();
                if (bVarB.equals(w2.b.b("proto"))) {
                    aVarJ = l.j(gVarE.a());
                } else if (bVarB.equals(w2.b.b(BRPluginConfigParser.JSON_ENCODE))) {
                    aVarJ = l.i(new String(gVarE.a(), Charset.forName("UTF-8")));
                } else {
                    b3.a.f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", bVarB);
                }
                aVarJ.c(hVar3.f()).d(hVar3.k()).h(hVar3.h("tz-offset")).e(o.a().c(o.c.forNumber(hVar3.g("net-type"))).b(o.b.forNumber(hVar3.g("mobile-subtype"))).a());
                if (hVar3.d() != null) {
                    aVarJ.b(hVar3.d());
                }
                arrayList3.add(aVarJ.a());
            }
            aVarB.c(arrayList3);
            arrayList2.add(aVarB.a());
        }
        return j.a(arrayList2);
    }

    private static TelephonyManager i(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    static long j() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    static /* synthetic */ a k(a aVar, b bVar) {
        URL url = bVar.f7498b;
        if (url == null) {
            return null;
        }
        b3.a.a("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.f7498b);
    }

    private static InputStream l(InputStream inputStream, String str) {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    private static URL m(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Invalid url: " + str, e10);
        }
    }

    @Override // z2.m
    public h a(h hVar) {
        NetworkInfo activeNetworkInfo = this.f7488b.getActiveNetworkInfo();
        return hVar.l().a("sdk-version", Build.VERSION.SDK_INT).c("model", Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c("product", Build.PRODUCT).c("os-uild", Build.ID).c("manufacturer", Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", j()).a("net-type", f(activeNetworkInfo)).a("mobile-subtype", e(activeNetworkInfo)).c("country", Locale.getDefault().getCountry()).c("locale", Locale.getDefault().getLanguage()).c("mcc_mnc", i(this.f7489c).getSimOperator()).c("application_build", Integer.toString(g(this.f7489c))).d();
    }

    @Override // z2.m
    public z2.g b(f fVar) {
        j jVarH = h(fVar);
        URL urlM = this.f7490d;
        if (fVar.c() != null) {
            try {
                com.google.android.datatransport.cct.a aVarC = com.google.android.datatransport.cct.a.c(fVar.c());
                strD = aVarC.d() != null ? aVarC.d() : null;
                if (aVarC.e() != null) {
                    urlM = m(aVarC.e());
                }
            } catch (IllegalArgumentException unused) {
                return z2.g.a();
            }
        }
        try {
            b bVar = (b) c3.b.a(5, new a(urlM, jVarH, strD), com.google.android.datatransport.cct.b.a(this), c.b());
            int i10 = bVar.f7497a;
            if (i10 == 200) {
                return z2.g.d(bVar.f7499c);
            }
            if (i10 < 500 && i10 != 404) {
                return z2.g.a();
            }
            return z2.g.e();
        } catch (IOException e10) {
            b3.a.c("CctTransportBackend", "Could not make request to the backend", e10);
            return z2.g.e();
        }
    }

    d(Context context, h3.a aVar, h3.a aVar2) {
        this(context, aVar, aVar2, 40000);
    }
}
