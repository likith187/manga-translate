.class public final Lq9/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    const-string p0, "sslSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lp9/c;->e:Lp9/c$a;

    invoke-virtual {p0}, Lp9/c$a;->b()Z

    move-result p0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Lq9/k;
    .locals 0

    const-string p0, "sslSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lq9/g;

    invoke-direct {p0}, Lq9/g;-><init>()V

    return-object p0
.end method
