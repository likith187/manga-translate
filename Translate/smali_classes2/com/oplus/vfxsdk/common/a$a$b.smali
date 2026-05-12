.class public final Lcom/oplus/vfxsdk/common/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/a$a;->b(Lcom/oplus/vfxsdk/common/AnimLine;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Le8/c;


# direct methods
.method constructor <init>(Le8/c;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a$a$b;->a:Le8/c;

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

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$a$b;->a:Le8/c;

    instance-of p1, p0, Le8/g;

    if-eqz p1, :cond_0

    check-cast p0, Le8/g;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p2}, Le8/a;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p1, p0, Le8/i;

    if-eqz p1, :cond_1

    check-cast p0, Le8/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Le8/a;->f(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
