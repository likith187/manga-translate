.class public abstract Lkotlin/jvm/internal/w;
.super Lkotlin/jvm/internal/y;
.source "SourceFile"

# interfaces
.implements Lc9/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/y;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/y;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/y;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lc9/b;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/d0;->d(Lkotlin/jvm/internal/w;)Lc9/i;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic get()Ljava/lang/Object;
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/y;->getReflected()Lc9/h;

    move-result-object p0

    check-cast p0, Lc9/i;

    invoke-interface {p0}, Lc9/i;->getDelegate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lc9/h$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/w;->getGetter()Lc9/i$a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGetter()Lc9/i$a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/y;->getReflected()Lc9/h;

    move-result-object p0

    check-cast p0, Lc9/i;

    invoke-interface {p0}, Lc9/i;->getGetter()Lc9/i$a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/w;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
