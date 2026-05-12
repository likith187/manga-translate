.class public final Lcom/oplus/vfxsdk/common/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/f;->T(Lcom/oplus/vfxsdk/common/Animator;Lcom/oplus/vfxsdk/common/AnimLine;Le8/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/common/o;

.field final synthetic b:Lcom/oplus/vfxsdk/common/AnimLine;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/common/o;Lcom/oplus/vfxsdk/common/AnimLine;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/f$b;->a:Lcom/oplus/vfxsdk/common/o;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/f$b;->b:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le8/e$a;->a(Le8/e;Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/f$b;->a:Lcom/oplus/vfxsdk/common/o;

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/f$b;->b:Lcom/oplus/vfxsdk/common/AnimLine;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/AnimLine;->getIndex()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/vfxsdk/common/o;->a(Ljava/lang/Object;I)V

    return-void
.end method
