.class public final synthetic Lj8/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/opencv/core/Mat;

.field public final synthetic b:Ll8/f$a;

.field public final synthetic c:Lj8/n0$a;


# direct methods
.method public synthetic constructor <init>(Lorg/opencv/core/Mat;Ll8/f$a;Lj8/n0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/q0;->a:Lorg/opencv/core/Mat;

    iput-object p2, p0, Lj8/q0;->b:Ll8/f$a;

    iput-object p3, p0, Lj8/q0;->c:Lj8/n0$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj8/q0;->a:Lorg/opencv/core/Mat;

    iget-object v1, p0, Lj8/q0;->b:Ll8/f$a;

    iget-object p0, p0, Lj8/q0;->c:Lj8/n0$a;

    check-cast p1, Lj8/m0;

    invoke-static {v0, v1, p0, p1}, Lj8/u0;->e(Lorg/opencv/core/Mat;Ll8/f$a;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method
