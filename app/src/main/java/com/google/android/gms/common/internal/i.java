package com.google.android.gms.common.internal;

import com.oplus.backup.sdk.common.plugin.BRPluginConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final h f7888b = new h("LibraryVersion", "");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final i f7889c = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f7890a = new ConcurrentHashMap();

    protected i() {
    }

    public static i a() {
        return f7889c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r7v0 */
    public String b(String str) throws Throwable {
        ?? r42;
        InputStream resourceAsStream;
        k.f(str, "Please provide a valid libraryName");
        if (this.f7890a.containsKey(str)) {
            return (String) this.f7890a.get(str);
        }
        Properties properties = new Properties();
        ?? r32 = 0;
        r32 = 0;
        r32 = 0;
        InputStream inputStream = null;
        try {
            try {
                resourceAsStream = i.class.getResourceAsStream(String.format("/%s.properties", str));
                try {
                    if (resourceAsStream != null) {
                        properties.load(resourceAsStream);
                        String property = properties.getProperty(BRPluginConfig.VERSION, null);
                        f7888b.e("LibraryVersion", str + " version is " + property);
                        r32 = property;
                    } else {
                        f7888b.f("LibraryVersion", "Failed to get app version for libraryName: " + str);
                    }
                } catch (IOException e10) {
                    e = e10;
                    r42 = r32;
                    inputStream = resourceAsStream;
                    f7888b.d("LibraryVersion", "Failed to get app version for libraryName: " + str, e);
                    ?? r72 = r42;
                    resourceAsStream = inputStream;
                    r32 = r72;
                } catch (Throwable th) {
                    th = th;
                    r32 = resourceAsStream;
                    if (r32 != 0) {
                        r3.g.a(r32);
                    }
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                r42 = 0;
            }
            if (resourceAsStream != null) {
                r3.g.a(resourceAsStream);
            }
            if (r32 == 0) {
                f7888b.b("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
                r32 = "UNKNOWN";
            }
            this.f7890a.put(str, r32);
            return r32;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
