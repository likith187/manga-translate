.class public abstract Lg9/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:J

.field public b:Lg9/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 4
    sget-object v2, Lg9/l;->g:Lg9/i;

    invoke-direct {p0, v0, v1, v2}, Lg9/h;-><init>(JLg9/i;)V

    return-void
.end method

.method public constructor <init>(JLg9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lg9/h;->a:J

    .line 3
    iput-object p3, p0, Lg9/h;->b:Lg9/i;

    return-void
.end method
