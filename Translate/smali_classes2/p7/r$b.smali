.class abstract Lp7/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lp7/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp7/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp7/r;-><init>(Lp7/r$a;)V

    sput-object v0, Lp7/r$b;->a:Lp7/r;

    return-void
.end method

.method static synthetic a()Lp7/r;
    .locals 1

    sget-object v0, Lp7/r$b;->a:Lp7/r;

    return-object v0
.end method
