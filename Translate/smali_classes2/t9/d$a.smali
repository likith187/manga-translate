.class public final Lt9/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lt9/d;

.field private b:Lt9/v;

.field public c:J

.field public f:[B

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lt9/d$a;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lt9/d$a;->h:I

    iput v0, p0, Lt9/d$a;->i:I

    return-void
.end method


# virtual methods
.method public final c(Lt9/v;)V
    .locals 0

    iput-object p1, p0, Lt9/d$a;->b:Lt9/v;

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lt9/d$a;->a:Lt9/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lt9/d$a;->a:Lt9/d;

    invoke-virtual {p0, v0}, Lt9/d$a;->c(Lt9/v;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lt9/d$a;->c:J

    iput-object v0, p0, Lt9/d$a;->f:[B

    const/4 v0, -0x1

    iput v0, p0, Lt9/d$a;->h:I

    iput v0, p0, Lt9/d$a;->i:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
