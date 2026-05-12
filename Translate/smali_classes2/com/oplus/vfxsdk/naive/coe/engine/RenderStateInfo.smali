.class public Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private blendDstFactor:I

.field private blendDstFactorAlpha:I

.field private blendEnable:Z

.field private blendSrcFactor:I

.field private blendSrcFactorAlpha:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendEnable:Z

    const/16 v0, 0x302

    .line 3
    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactor:I

    const/16 v1, 0x303

    .line 4
    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactor:I

    .line 5
    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactorAlpha:I

    .line 6
    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactorAlpha:I

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x302

    .line 8
    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactorAlpha:I

    const/16 v0, 0x303

    .line 9
    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactorAlpha:I

    .line 10
    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendEnable:Z

    .line 11
    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactor:I

    .line 12
    iput p3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactor:I

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendEnable:Z

    .line 15
    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactor:I

    .line 16
    iput p3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactor:I

    .line 17
    iput p4, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactorAlpha:I

    .line 18
    iput p5, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactorAlpha:I

    return-void
.end method


# virtual methods
.method public getBlendDstFactor()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactor:I

    return p0
.end method

.method public getBlendDstFactorAlpha()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactorAlpha:I

    return p0
.end method

.method public getBlendEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendEnable:Z

    return p0
.end method

.method public getBlendSrcFactor()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactor:I

    return p0
.end method

.method public getBlendSrcFactorAlpha()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactorAlpha:I

    return p0
.end method

.method public setBlendDstFactor(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactor:I

    return-void
.end method

.method public setBlendDstFactorAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendDstFactorAlpha:I

    return-void
.end method

.method public setBlendEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendEnable:Z

    return-void
.end method

.method public setBlendSrcFactor(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactor:I

    return-void
.end method

.method public setBlendSrcFactorAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->blendSrcFactorAlpha:I

    return-void
.end method
