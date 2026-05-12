.class public final Lcom/oplus/vfxsdk/common/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/a$a;->a(Lcom/oplus/vfxsdk/common/AnimLine;Le8/c;)V
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

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a$a$a;->a:Le8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$a$a;->a:Le8/c;

    instance-of p1, p0, Le8/g;

    if-eqz p1, :cond_0

    check-cast p0, Le8/g;

    invoke-virtual {p0}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p0, Le8/i;

    if-eqz p1, :cond_1

    check-cast p0, Le8/i;

    invoke-virtual {p0}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
