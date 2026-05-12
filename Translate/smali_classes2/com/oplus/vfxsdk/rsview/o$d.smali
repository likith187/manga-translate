.class public final Lcom/oplus/vfxsdk/rsview/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/rsview/o;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/rsview/o;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/rsview/o;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/o$d;->a:Lcom/oplus/vfxsdk/rsview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o$d;->a:Lcom/oplus/vfxsdk/rsview/o;

    invoke-virtual {p0, p2, p3, p4}, Lcom/oplus/vfxsdk/rsview/o;->b0(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/vfxsdk/rsview/o$d;->a:Lcom/oplus/vfxsdk/rsview/o;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/vfxsdk/rsview/o;->c0(Lcom/oplus/vfxsdk/rsview/o;Ljava/lang/String;Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method
