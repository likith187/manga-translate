package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r3.e;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final r3.c f7503q = e.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f7506c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f7507f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f7508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Uri f7509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f7511k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f7512l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final List f7513m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f7514n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f7515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Set f7516p = new HashSet();

    GoogleSignInAccount(int i10, String str, String str2, String str3, String str4, Uri uri, String str5, long j10, String str6, List list, String str7, String str8) {
        this.f7504a = i10;
        this.f7505b = str;
        this.f7506c = str2;
        this.f7507f = str3;
        this.f7508h = str4;
        this.f7509i = uri;
        this.f7510j = str5;
        this.f7511k = j10;
        this.f7512l = str6;
        this.f7513m = list;
        this.f7514n = str7;
        this.f7515o = str8;
    }

    public static GoogleSignInAccount M0(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l10, String str7, Set set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l10.longValue(), k.e(str7), new ArrayList((Collection) k.g(set)), str5, str6);
    }

    public static GoogleSignInAccount N0(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j10 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        GoogleSignInAccount googleSignInAccountM0 = M0(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, uri, Long.valueOf(j10), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        googleSignInAccountM0.f7510j = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccountM0;
    }

    public String D0() {
        return this.f7508h;
    }

    public String E0() {
        return this.f7507f;
    }

    public String F0() {
        return this.f7515o;
    }

    public String G0() {
        return this.f7514n;
    }

    public String H0() {
        return this.f7505b;
    }

    public String I0() {
        return this.f7506c;
    }

    public Uri J0() {
        return this.f7509i;
    }

    public Set K0() {
        HashSet hashSet = new HashSet(this.f7513m);
        hashSet.addAll(this.f7516p);
        return hashSet;
    }

    public String L0() {
        return this.f7510j;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.f7512l.equals(this.f7512l) && googleSignInAccount.K0().equals(K0());
    }

    public int hashCode() {
        return ((this.f7512l.hashCode() + 527) * 31) + K0().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f7504a);
        n3.b.m(parcel, 2, H0(), false);
        n3.b.m(parcel, 3, I0(), false);
        n3.b.m(parcel, 4, E0(), false);
        n3.b.m(parcel, 5, D0(), false);
        n3.b.l(parcel, 6, J0(), i10, false);
        n3.b.m(parcel, 7, L0(), false);
        n3.b.i(parcel, 8, this.f7511k);
        n3.b.m(parcel, 9, this.f7512l, false);
        n3.b.q(parcel, 10, this.f7513m, false);
        n3.b.m(parcel, 11, G0(), false);
        n3.b.m(parcel, 12, F0(), false);
        n3.b.b(parcel, iA);
    }
}
