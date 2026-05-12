.class public final Lcom/oplus/vfxsdk/rsview/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/b;


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

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/o$c;->a:Lcom/oplus/vfxsdk/rsview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v1, p1, v0

    instance-of v2, v1, Ljava/lang/Float;

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v1, [F

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o$c;->a:Lcom/oplus/vfxsdk/rsview/o;

    aget-object v1, p1, v4

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    aget-object p1, p1, v0

    const-string v0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [F

    invoke-static {p1}, Lkotlin/collections/i;->t([F)[Ljava/lang/Float;

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/vfxsdk/rsview/o;->a0(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o$c;->a:Lcom/oplus/vfxsdk/rsview/o;

    aget-object v1, p1, v4

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    aget-object p1, p1, v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/vfxsdk/rsview/o;->a0(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
