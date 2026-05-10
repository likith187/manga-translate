package com.oplus.vfxsdk.naive.coe.engine;

import android.graphics.Bitmap;
import androidx.annotation.Keep;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class TexCreateInfo {
    private Bitmap bitmap;
    private Boolean createInMainCtx;
    private FilterMode filterMode;
    private boolean flipY;
    private int height;
    private ImageType imageType;
    private PixelFormat pixelFormat;
    private ByteBuffer rawBuffer;
    private String texturePath;
    private int width;
    private WrapMode wrapMode;

    @Keep
    public enum FilterMode {
        NEAREST,
        LINEAR
    }

    @Keep
    public enum ImageType {
        INVALID,
        TEXTURE_2D,
        TEXTURE_3D,
        TEXTURE_CUBE,
        TEXTURE_EXTERNAL
    }

    @Keep
    public enum PixelFormat {
        INVALID,
        RGB8Unorm,
        RGBA8Unorm,
        ETC2_RGB8Unorm,
        ETC2_RGBA8Unorm,
        ASTC_4x4_LDR,
        ASTC_4x4_sRGB,
        ASTC_5x5_LDR,
        ASTC_5x5_sRGB,
        ASTC_6x6_LDR,
        ASTC_6x6_sRGB,
        ASTC_8x8_LDR,
        ASTC_8x8_sRGB,
        ASTC_10x10_LDR,
        ASTC_10x10_sRGB,
        ASTC_12x12_LDR,
        ASTC_12x12_sRGB,
        RGB16SFloat,
        RGBA16SFloat,
        RGB32SFloat,
        RGBA32SFloat,
        ETC1_RGB8Unorm
    }

    @Keep
    public enum WrapMode {
        REPEAT,
        CLAMP,
        BORDER,
        MIRROR
    }

    public TexCreateInfo() {
        this.imageType = ImageType.TEXTURE_2D;
        this.pixelFormat = PixelFormat.RGBA8Unorm;
        this.wrapMode = WrapMode.REPEAT;
        this.filterMode = FilterMode.NEAREST;
        this.flipY = false;
        this.texturePath = null;
        this.bitmap = null;
        this.rawBuffer = null;
        this.createInMainCtx = Boolean.FALSE;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public FilterMode getFilterMode() {
        return this.filterMode;
    }

    public boolean getFlipY() {
        return this.flipY;
    }

    public int getHeight() {
        return this.height;
    }

    public ImageType getImageType() {
        return this.imageType;
    }

    public boolean getInMainCtx() {
        return this.createInMainCtx.booleanValue();
    }

    public PixelFormat getPixelFormat() {
        return this.pixelFormat;
    }

    public ByteBuffer getRawBuffer() {
        return this.rawBuffer;
    }

    public String getTexturePath() {
        return this.texturePath;
    }

    public int getWidth() {
        return this.width;
    }

    public WrapMode getWrapMode() {
        return this.wrapMode;
    }

    public void setBitmap(Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public void setFilterMode(FilterMode filterMode) {
        this.filterMode = filterMode;
    }

    public void setFlipY(boolean z10) {
        this.flipY = z10;
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setImageType(ImageType imageType) {
        this.imageType = imageType;
    }

    public void setInMainCtx(Boolean bool) {
        this.createInMainCtx = bool;
    }

    public void setPixelFormat(PixelFormat pixelFormat) {
        this.pixelFormat = pixelFormat;
    }

    public void setRawBuffer(ByteBuffer byteBuffer) {
        this.rawBuffer = byteBuffer;
    }

    public void setTexturePath(String str) {
        this.texturePath = str;
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    public void setWrapMode(WrapMode wrapMode) {
        this.wrapMode = wrapMode;
    }

    public TexCreateInfo(Bitmap bitmap) {
        this.imageType = ImageType.TEXTURE_2D;
        this.pixelFormat = PixelFormat.RGBA8Unorm;
        this.wrapMode = WrapMode.REPEAT;
        this.filterMode = FilterMode.NEAREST;
        this.flipY = false;
        this.texturePath = null;
        this.rawBuffer = null;
        this.createInMainCtx = Boolean.FALSE;
        this.bitmap = bitmap;
    }

    public TexCreateInfo(ByteBuffer byteBuffer) {
        this.imageType = ImageType.TEXTURE_2D;
        this.pixelFormat = PixelFormat.RGBA8Unorm;
        this.wrapMode = WrapMode.REPEAT;
        this.filterMode = FilterMode.NEAREST;
        this.flipY = false;
        this.texturePath = null;
        this.bitmap = null;
        this.createInMainCtx = Boolean.FALSE;
        this.rawBuffer = byteBuffer;
    }

    public TexCreateInfo(String str, PixelFormat pixelFormat) {
        this.imageType = ImageType.TEXTURE_2D;
        this.pixelFormat = PixelFormat.RGBA8Unorm;
        this.wrapMode = WrapMode.REPEAT;
        this.filterMode = FilterMode.NEAREST;
        this.flipY = false;
        this.bitmap = null;
        this.rawBuffer = null;
        this.createInMainCtx = Boolean.FALSE;
        this.texturePath = str;
        this.pixelFormat = pixelFormat;
    }
}
