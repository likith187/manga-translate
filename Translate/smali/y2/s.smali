.class abstract Ly2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/s$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract c()Lf3/c;
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Ly2/s;->c()Lf3/c;

    move-result-object p0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method abstract i()Ly2/r;
.end method
