.class abstract Lf3/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lf3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/g;

    invoke-direct {v0}, Lf3/g;-><init>()V

    sput-object v0, Lf3/g$a;->a:Lf3/g;

    return-void
.end method

.method static synthetic a()Lf3/g;
    .locals 1

    sget-object v0, Lf3/g$a;->a:Lf3/g;

    return-object v0
.end method
