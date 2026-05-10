package kotlin.io;

import com.oplus.aiunit.core.ConfigPackage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends k {
    public static final void c(File file, String text, Charset charset) throws IOException {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(text, "text");
        kotlin.jvm.internal.r.e(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            k(fileOutputStream, text, charset);
            h0 h0Var = h0.INSTANCE;
            c.a(fileOutputStream, null);
        } finally {
        }
    }

    public static /* synthetic */ void d(File file, String str, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = kotlin.text.d.f13110a;
        }
        c(file, str, charset);
    }

    public static final ByteBuffer e(int i10, CharsetEncoder encoder) {
        kotlin.jvm.internal.r.e(encoder, "encoder");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10 * ((int) Math.ceil(encoder.maxBytesPerChar())));
        kotlin.jvm.internal.r.d(byteBufferAllocate, "allocate(...)");
        return byteBufferAllocate;
    }

    public static final CharsetEncoder f(Charset charset) {
        kotlin.jvm.internal.r.e(charset, "<this>");
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    public static final String g(File file, Charset charset) throws IOException {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String strC = r.c(inputStreamReader);
            c.a(inputStreamReader, null);
            return strC;
        } finally {
        }
    }

    public static /* synthetic */ String h(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = kotlin.text.d.f13110a;
        }
        return g(file, charset);
    }

    public static final void i(File file, String text, Charset charset) throws IOException {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(text, "text");
        kotlin.jvm.internal.r.e(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            k(fileOutputStream, text, charset);
            h0 h0Var = h0.INSTANCE;
            c.a(fileOutputStream, null);
        } finally {
        }
    }

    public static /* synthetic */ void j(File file, String str, Charset charset, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            charset = kotlin.text.d.f13110a;
        }
        i(file, str, charset);
    }

    public static final void k(OutputStream outputStream, String text, Charset charset) throws IOException {
        kotlin.jvm.internal.r.e(outputStream, "<this>");
        kotlin.jvm.internal.r.e(text, "text");
        kotlin.jvm.internal.r.e(charset, "charset");
        if (text.length() < 16384) {
            byte[] bytes = text.getBytes(charset);
            kotlin.jvm.internal.r.d(bytes, "getBytes(...)");
            outputStream.write(bytes);
            return;
        }
        CharsetEncoder charsetEncoderF = f(charset);
        CharBuffer charBufferAllocate = CharBuffer.allocate(ConfigPackage.FRAME_SIZE_6);
        kotlin.jvm.internal.r.b(charsetEncoderF);
        ByteBuffer byteBufferE = e(ConfigPackage.FRAME_SIZE_6, charsetEncoderF);
        int i10 = 0;
        int i11 = 0;
        while (i10 < text.length()) {
            int iMin = Math.min(8192 - i11, text.length() - i10);
            int i12 = i10 + iMin;
            char[] cArrArray = charBufferAllocate.array();
            kotlin.jvm.internal.r.d(cArrArray, "array(...)");
            text.getChars(i10, i12, cArrArray, i11);
            charBufferAllocate.limit(iMin + i11);
            i11 = 1;
            if (!charsetEncoderF.encode(charBufferAllocate, byteBufferE, i12 == text.length()).isUnderflow()) {
                throw new IllegalStateException("Check failed.");
            }
            outputStream.write(byteBufferE.array(), 0, byteBufferE.position());
            if (charBufferAllocate.position() != charBufferAllocate.limit()) {
                charBufferAllocate.put(0, charBufferAllocate.get());
            } else {
                i11 = 0;
            }
            charBufferAllocate.clear();
            byteBufferE.clear();
            i10 = i12;
        }
    }
}
