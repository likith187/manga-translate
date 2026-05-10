package com.oplus.vfxsdk.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11274a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bitmap a(Context context, String fileName) throws IOException {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(fileName, "fileName");
            try {
                InputStream inputStreamOpen = context.getAssets().open(fileName);
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                inputStreamOpen.close();
                return bitmapDecodeStream;
            } catch (IOException e10) {
                throw new IOException(e10);
            }
        }

        public final ByteBuffer b(Context context, String assetFileName) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(assetFileName, "assetFileName");
            try {
                InputStream inputStreamOpen = context.getAssets().open(assetFileName);
                ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(inputStreamOpen);
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(inputStreamOpen.available());
                readableByteChannelNewChannel.read(byteBufferAllocateDirect);
                byteBufferAllocateDirect.flip();
                readableByteChannelNewChannel.close();
                inputStreamOpen.close();
                return byteBufferAllocateDirect;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        private a() {
        }
    }
}
