.class public Landroidx/emoji2/text/j;
.super Landroidx/emoji2/text/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/j$b;,
        Landroidx/emoji2/text/j$a;
    }
.end annotation


# static fields
.field private static final k:Landroidx/emoji2/text/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/emoji2/text/j$a;

    invoke-direct {v0}, Landroidx/emoji2/text/j$a;-><init>()V

    sput-object v0, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La0/e;)V
    .locals 2

    new-instance v0, Landroidx/emoji2/text/j$b;

    sget-object v1, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j$a;

    invoke-direct {v0, p1, p2, v1}, Landroidx/emoji2/text/j$b;-><init>(Landroid/content/Context;La0/e;Landroidx/emoji2/text/j$a;)V

    invoke-direct {p0, v0}, Landroidx/emoji2/text/e$c;-><init>(Landroidx/emoji2/text/e$h;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/Executor;)Landroidx/emoji2/text/j;
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/text/e$c;->a()Landroidx/emoji2/text/e$h;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/j$b;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/j$b;->f(Ljava/util/concurrent/Executor;)V

    return-object p0
.end method
