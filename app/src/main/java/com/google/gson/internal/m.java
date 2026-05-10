package com.google.gson.internal;

import com.google.gson.q;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;
import w4.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public static com.google.gson.i a(a5.a aVar) {
        boolean z10;
        try {
            try {
                aVar.L0();
                z10 = false;
            } catch (a5.d e10) {
                throw new q(e10);
            } catch (IOException e11) {
                throw new com.google.gson.j(e11);
            } catch (NumberFormatException e12) {
                throw new q(e12);
            }
        } catch (EOFException e13) {
            e = e13;
            z10 = true;
        }
        try {
            return (com.google.gson.i) o.V.b(aVar);
        } catch (EOFException e14) {
            e = e14;
            if (z10) {
                return com.google.gson.k.INSTANCE;
            }
            throw new q(e);
        }
    }

    public static void b(com.google.gson.i iVar, a5.c cVar) {
        o.V.d(cVar, iVar);
    }

    public static Writer c(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new b(appendable);
    }

    private static final class b extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Appendable f10750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f10751b = new a();

        private static class a implements CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private char[] f10752a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private String f10753b;

            private a() {
            }

            void a(char[] cArr) {
                this.f10752a = cArr;
                this.f10753b = null;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i10) {
                return this.f10752a[i10];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f10752a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i10, int i11) {
                return new String(this.f10752a, i10, i11 - i10);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                if (this.f10753b == null) {
                    this.f10753b = new String(this.f10752a);
                }
                return this.f10753b;
            }
        }

        b(Appendable appendable) {
            this.f10750a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) throws IOException {
            this.f10751b.a(cArr);
            this.f10750a.append(this.f10751b, i10, i11 + i10);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) throws IOException {
            this.f10750a.append(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(int i10) throws IOException {
            this.f10750a.append((char) i10);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i10, int i11) throws IOException {
            this.f10750a.append(charSequence, i10, i11);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i10, int i11) throws IOException {
            Objects.requireNonNull(str);
            this.f10750a.append(str, i10, i11 + i10);
        }
    }
}
