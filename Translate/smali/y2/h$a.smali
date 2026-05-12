.class public abstract Ly2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Ly2/h$a;
    .locals 1

    invoke-virtual {p0}, Ly2/h$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/String;J)Ly2/h$a;
    .locals 1

    invoke-virtual {p0}, Ly2/h$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ly2/h$a;
    .locals 1

    invoke-virtual {p0}, Ly2/h$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract d()Ly2/h;
.end method

.method protected abstract e()Ljava/util/Map;
.end method

.method protected abstract f(Ljava/util/Map;)Ly2/h$a;
.end method

.method public abstract g(Ljava/lang/Integer;)Ly2/h$a;
.end method

.method public abstract h(Ly2/g;)Ly2/h$a;
.end method

.method public abstract i(J)Ly2/h$a;
.end method

.method public abstract j(Ljava/lang/String;)Ly2/h$a;
.end method

.method public abstract k(J)Ly2/h$a;
.end method
