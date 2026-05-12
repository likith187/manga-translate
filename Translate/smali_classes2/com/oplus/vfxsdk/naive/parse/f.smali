.class public final synthetic Lcom/oplus/vfxsdk/naive/parse/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:D

.field public final synthetic f:[F


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;D[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/f;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/f;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oplus/vfxsdk/naive/parse/f;->c:D

    iput-object p5, p0, Lcom/oplus/vfxsdk/naive/parse/f;->f:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/f;->a:Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/f;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/parse/f;->c:D

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/f;->f:[F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->d(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;D[F)V

    return-void
.end method
