.class public final synthetic Lj8/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Laa/h;

.field public final synthetic b:Lj8/n0$a;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Laa/h;Lj8/n0$a;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/d0;->a:Laa/h;

    iput-object p2, p0, Lj8/d0;->b:Lj8/n0$a;

    iput-object p3, p0, Lj8/d0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj8/d0;->a:Laa/h;

    iget-object v1, p0, Lj8/d0;->b:Lj8/n0$a;

    iget-object p0, p0, Lj8/d0;->c:Ljava/util/Map;

    check-cast p1, Lj8/m0;

    invoke-static {v0, v1, p0, p1}, Lj8/m0;->h(Laa/h;Lj8/n0$a;Ljava/util/Map;Lj8/m0;)V

    return-void
.end method
