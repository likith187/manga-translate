.class abstract Lf3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lf3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/f;

    invoke-direct {v0}, Lf3/f;-><init>()V

    sput-object v0, Lf3/f$a;->a:Lf3/f;

    return-void
.end method

.method static synthetic a()Lf3/f;
    .locals 1

    sget-object v0, Lf3/f$a;->a:Lf3/f;

    return-object v0
.end method
