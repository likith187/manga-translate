package j6;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f12767a;

    public a(HttpURLConnection httpURLConnection) {
        this.f12767a = httpURLConnection;
    }

    private String c(HttpURLConnection httpURLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } finally {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
            }
        }
        return sb.toString();
    }

    @Override // j6.c
    public InputStream b() {
        return this.f12767a.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f12767a.disconnect();
    }

    @Override // j6.c
    public boolean e() {
        try {
            return this.f12767a.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // j6.c
    public String g() {
        return this.f12767a.getContentType();
    }

    @Override // j6.c
    public String h() {
        try {
            if (e()) {
                return null;
            }
            return "Unable to fetch " + this.f12767a.getURL() + ". Failed with " + this.f12767a.getResponseCode() + "\n" + c(this.f12767a);
        } catch (IOException e10) {
            l6.e.d("get error failed ", e10);
            return e10.getMessage();
        }
    }
}
