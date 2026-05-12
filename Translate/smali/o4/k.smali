.class final synthetic Lo4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo4/v;

.field private final b:Lu4/b;


# direct methods
.method private constructor <init>(Lo4/v;Lu4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/k;->a:Lo4/v;

    iput-object p2, p0, Lo4/k;->b:Lu4/b;

    return-void
.end method

.method public static a(Lo4/v;Lu4/b;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lo4/k;

    invoke-direct {v0, p0, p1}, Lo4/k;-><init>(Lo4/v;Lu4/b;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo4/k;->a:Lo4/v;

    iget-object p0, p0, Lo4/k;->b:Lu4/b;

    invoke-static {v0, p0}, Lo4/m;->l(Lo4/v;Lu4/b;)V

    return-void
.end method
