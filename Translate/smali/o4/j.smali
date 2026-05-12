.class final synthetic Lo4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo4/z;

.field private final b:Lu4/b;


# direct methods
.method private constructor <init>(Lo4/z;Lu4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/j;->a:Lo4/z;

    iput-object p2, p0, Lo4/j;->b:Lu4/b;

    return-void
.end method

.method public static a(Lo4/z;Lu4/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lo4/j;

    invoke-direct {v0, p0, p1}, Lo4/j;-><init>(Lo4/z;Lu4/b;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo4/j;->a:Lo4/z;

    iget-object p0, p0, Lo4/j;->b:Lu4/b;

    invoke-static {v0, p0}, Lo4/m;->k(Lo4/z;Lu4/b;)V

    return-void
.end method
