.class public final Ls9/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls9/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/X509TrustManager;)Ls9/c;
    .locals 0

    const-string p0, "trustManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lp9/h;->a:Lp9/h$a;

    invoke-virtual {p0}, Lp9/h$a;->g()Lp9/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lp9/h;->c(Ljavax/net/ssl/X509TrustManager;)Ls9/c;

    move-result-object p0

    return-object p0
.end method
