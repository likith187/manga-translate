.class abstract Lp7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lp7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp7/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp7/a;-><init>(Lp7/a$a;)V

    sput-object v0, Lp7/a$b;->a:Lp7/a;

    return-void
.end method

.method static synthetic a()Lp7/a;
    .locals 1

    sget-object v0, Lp7/a$b;->a:Lp7/a;

    return-object v0
.end method
