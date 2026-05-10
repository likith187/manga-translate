package androidx.profileinstaller;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f3047a = {48, 49, 53, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final byte[] f3048b = {48, 49, 48, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final byte[] f3049c = {48, 48, 57, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final byte[] f3050d = {48, 48, 53, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final byte[] f3051e = {48, 48, 49, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final byte[] f3052f = {48, 48, 49, 0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final byte[] f3053g = {48, 48, 50, 0};

    static String a(byte[] bArr) {
        return (Arrays.equals(bArr, f3051e) || Arrays.equals(bArr, f3050d)) ? ":" : "!";
    }
}
