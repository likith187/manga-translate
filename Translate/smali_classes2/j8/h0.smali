.class public final synthetic Lj8/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lj8/n0$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lj8/n0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/h0;->a:Ljava/util/List;

    iput-object p2, p0, Lj8/h0;->b:Lj8/n0$a;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj8/h0;->a:Ljava/util/List;

    iget-object p0, p0, Lj8/h0;->b:Lj8/n0$a;

    invoke-static {v0, p0, p1}, Lj8/m0;->g(Ljava/util/List;Lj8/n0$a;I)Lj8/m0;

    move-result-object p0

    return-object p0
.end method
