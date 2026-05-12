.class public final Ln8/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln8/j;
.implements Ljava/io/Serializable;


# instance fields
.field private _value:Ljava/lang/Object;

.field private initializer:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln8/i0;->initializer:Lw8/a;

    sget-object p1, Ln8/d0;->INSTANCE:Ln8/d0;

    iput-object p1, p0, Ln8/i0;->_value:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ln8/h;

    invoke-virtual {p0}, Ln8/i0;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ln8/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ln8/i0;->_value:Ljava/lang/Object;

    sget-object v1, Ln8/d0;->INSTANCE:Ln8/d0;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln8/i0;->initializer:Lw8/a;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ln8/i0;->_value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ln8/i0;->initializer:Lw8/a;

    :cond_0
    iget-object p0, p0, Ln8/i0;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object p0, p0, Ln8/i0;->_value:Ljava/lang/Object;

    sget-object v0, Ln8/d0;->INSTANCE:Ln8/d0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ln8/i0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln8/i0;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0
.end method
