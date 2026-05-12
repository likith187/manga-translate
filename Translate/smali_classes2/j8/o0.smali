.class public final synthetic Lj8/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ll8/f$a;


# direct methods
.method public synthetic constructor <init>(Ll8/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/o0;->a:Ll8/f$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj8/o0;->a:Ll8/f$a;

    check-cast p1, Lj8/m0;

    invoke-static {p0, p1}, Lj8/u0;->a(Ll8/f$a;Lj8/m0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
