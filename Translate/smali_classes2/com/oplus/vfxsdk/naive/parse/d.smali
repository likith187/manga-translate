.class public final synthetic Lcom/oplus/vfxsdk/naive/parse/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lw8/p;


# direct methods
.method public synthetic constructor <init>(Lw8/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/d;->a:Lw8/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/d;->a:Lw8/p;

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->a(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
