.class public final Lv1/a;
.super Lv1/e;
.source "SourceFile"


# instance fields
.field private final a:Lv1/n;

.field private final b:Lv1/e;


# direct methods
.method public constructor <init>(Lv1/n;Lv1/e;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv1/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lv1/a;->a:Lv1/n;

    iput-object p2, p0, Lv1/a;->b:Lv1/e;

    return-void
.end method


# virtual methods
.method public a(Lv1/f;)Ljava/lang/Object;
    .locals 1

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lv1/f;->h(Lv1/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lv1/n;
    .locals 0

    iget-object p0, p0, Lv1/a;->a:Lv1/n;

    return-object p0
.end method

.method public final c()Lv1/e;
    .locals 0

    iget-object p0, p0, Lv1/a;->b:Lv1/e;

    return-object p0
.end method
