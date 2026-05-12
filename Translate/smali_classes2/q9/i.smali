.class public final Lq9/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/i$b;
    }
.end annotation


# static fields
.field public static final a:Lq9/i$b;

.field private static final b:Lq9/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq9/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq9/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lq9/i;->a:Lq9/i$b;

    new-instance v0, Lq9/i$a;

    invoke-direct {v0}, Lq9/i$a;-><init>()V

    sput-object v0, Lq9/i;->b:Lq9/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d()Lq9/j$a;
    .locals 1

    sget-object v0, Lq9/i;->b:Lq9/j$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    const-string p0, "sslSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lq9/i;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    const-string p2, "sslSocket"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "protocols"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lq9/i;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    sget-object p0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p0, p3}, Lp9/h$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isSupported()Z
    .locals 0

    sget-object p0, Lp9/d;->e:Lp9/d$a;

    invoke-virtual {p0}, Lp9/d$a;->c()Z

    move-result p0

    return p0
.end method
