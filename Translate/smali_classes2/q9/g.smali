.class public final Lq9/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/g$b;
    }
.end annotation


# static fields
.field public static final a:Lq9/g$b;

.field private static final b:Lq9/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq9/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq9/g$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq9/g;->a:Lq9/g$b;

    new-instance v0, Lq9/g$a;

    invoke-direct {v0}, Lq9/g$a;-><init>()V

    sput-object v0, Lq9/g;->b:Lq9/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d()Lq9/j$a;
    .locals 1

    sget-object v0, Lq9/g;->b:Lq9/j$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    const-string p0, "sslSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const-string p0, "sslSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCSSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, ""

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    const-string p2, "sslSocket"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "protocols"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lq9/g;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCSSLSocket;->getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p0

    sget-object p2, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p2, p3}, Lp9/h$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jsse/BCSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lorg/bouncycastle/jsse/BCSSLSocket;->setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V

    :cond_0
    return-void
.end method

.method public isSupported()Z
    .locals 0

    sget-object p0, Lp9/c;->e:Lp9/c$a;

    invoke-virtual {p0}, Lp9/c$a;->b()Z

    move-result p0

    return p0
.end method
