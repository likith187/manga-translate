.class abstract Lp7/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lp7/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp7/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp7/n;-><init>(Lp7/n$a;)V

    sput-object v0, Lp7/n$b;->a:Lp7/n;

    return-void
.end method

.method static synthetic a()Lp7/n;
    .locals 1

    sget-object v0, Lp7/n$b;->a:Lp7/n;

    return-object v0
.end method
