.class public abstract Le8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Le8/e;Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p3}, Le8/e;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
