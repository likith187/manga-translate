package com.coloros.translate.engine.offline;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList f5063b = new ArrayList();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f5064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f5065b;

        a(String str, long j10) {
            this.f5064a = str;
            this.f5065b = j10;
        }

        public long a() {
            return this.f5065b;
        }

        public String b() {
            return this.f5064a;
        }

        public String toString() {
            return " VerityItem(fileName: " + b() + ", time: " + a() + ") ";
        }
    }

    j0() {
    }

    public void a(String str, long j10) {
        this.f5063b.add(new a(str, j10));
    }

    public ArrayList b() {
        return this.f5063b;
    }

    public String c() {
        return this.f5062a;
    }

    public void d(String str) {
        this.f5062a = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ResourceVerifyInfo{ language: " + this.f5062a + ", files:[ ");
        Iterator it = this.f5063b.iterator();
        while (it.hasNext()) {
            sb.append(((a) it.next()).toString());
        }
        sb.append(" ]}");
        return sb.toString();
    }
}
