package p1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f15165a;

    public a(HttpURLConnection httpURLConnection) {
        this.f15165a = httpURLConnection;
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

    @Override // p1.d
    public InputStream b() {
        return this.f15165a.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15165a.disconnect();
    }

    @Override // p1.d
    public boolean e() {
        try {
            return this.f15165a.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // p1.d
    public String g() {
        return this.f15165a.getContentType();
    }

    @Override // p1.d
    public String h() {
        try {
            if (e()) {
                return null;
            }
            return "Unable to fetch " + this.f15165a.getURL() + ". Failed with " + this.f15165a.getResponseCode() + "\n" + c(this.f15165a);
        } catch (IOException e10) {
            r1.d.d("get error failed ", e10);
            return e10.getMessage();
        }
    }
}
