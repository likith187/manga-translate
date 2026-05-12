.class public final Lcom/oplus/vfxsdk/common/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/a;->v(Le8/b;Landroid/animation/TimeInterpolator;J)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Le8/b;

.field final synthetic b:I


# direct methods
.method constructor <init>(Le8/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a$e;->a:Le8/b;

    iput p2, p0, Lcom/oplus/vfxsdk/common/a$e;->b:I

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

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a$e;->a:Le8/b;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/oplus/vfxsdk/common/a$e;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Le8/b;->a([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
