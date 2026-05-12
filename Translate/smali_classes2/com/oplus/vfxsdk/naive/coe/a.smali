.class public final synthetic Lcom/oplus/vfxsdk/naive/coe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/a;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/a;->a:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->c(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V

    return-void
.end method
