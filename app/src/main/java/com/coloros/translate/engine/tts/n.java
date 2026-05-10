package com.coloros.translate.engine.tts;

import com.coloros.translate.utils.c0;
import com.score.rahasak.utils.OpusDecoder;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5273d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final n f5274e = new n();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OpusDecoder f5275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private short[] f5276b = new short[2097152];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f5277c = new Object();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final n a() {
            return n.f5274e;
        }

        private a() {
        }
    }

    public n() {
        e();
    }

    private final synchronized void e() {
        c0.f7098a.d("MediaCodecOpus", "initOpusDecoder：" + this.f5275a);
        if (this.f5275a == null) {
            OpusDecoder opusDecoder = new OpusDecoder();
            this.f5275a = opusDecoder;
            opusDecoder.b(16000, 1);
        }
    }

    public final byte[] b(ShortBuffer buffer) {
        r.e(buffer, "buffer");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (buffer.hasRemaining()) {
            short s10 = buffer.get();
            byteArrayOutputStream.write((byte) ((s10 << 24) >> 24));
            byteArrayOutputStream.write((byte) ((s10 << 16) >> 24));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        r.d(byteArray, "toByteArray(...)");
        return byteArray;
    }

    public final short[] c(byte[] data) {
        r.e(data, "data");
        short[] sArr = new short[data.length / 2];
        ByteBuffer.wrap(data).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr);
        return sArr;
    }

    public final synchronized byte[] d(byte[] data) {
        r.e(data, "data");
        synchronized (this.f5277c) {
            try {
                r.a aVar = n8.r.Companion;
                if (this.f5275a == null) {
                    e();
                }
                OpusDecoder opusDecoder = this.f5275a;
                int iA = opusDecoder != null ? opusDecoder.a(data, this.f5276b, 1920) : -1;
                if (iA <= 0) {
                    c0.f7098a.e("MediaCodecOpus", "decode2Bytes error, sampleCount:" + iA);
                    return null;
                }
                short[] sArr = new short[iA];
                System.arraycopy(this.f5276b, 0, sArr, 0, iA);
                c0.f7098a.d("MediaCodecOpus", "decode2Bytes");
                ShortBuffer shortBufferWrap = ShortBuffer.wrap(sArr);
                kotlin.jvm.internal.r.d(shortBufferWrap, "wrap(...)");
                return b(shortBufferWrap);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("MediaCodecOpus", "decode2Bytes error:" + thM62exceptionOrNullimpl.getMessage());
                }
                return null;
            }
        }
    }
}
