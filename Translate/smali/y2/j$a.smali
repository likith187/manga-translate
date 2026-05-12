.class abstract Ly2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Ly2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/j;

    invoke-direct {v0}, Ly2/j;-><init>()V

    sput-object v0, Ly2/j$a;->a:Ly2/j;

    return-void
.end method

.method static synthetic a()Ly2/j;
    .locals 1

    sget-object v0, Ly2/j$a;->a:Ly2/j;

    return-object v0
.end method
