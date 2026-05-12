.class public Landroidx/databinding/f;
.super Landroidx/databinding/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/databinding/b;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/databinding/f;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/e;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroidx/databinding/b;-><init>([Landroidx/databinding/e;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/databinding/f;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/databinding/f;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/databinding/f;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/databinding/a;->notifyChange()V

    :cond_0
    return-void
.end method
