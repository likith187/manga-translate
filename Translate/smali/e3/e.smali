.class final synthetic Le3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Le3/j;

.field private final b:Ly2/m;

.field private final c:I

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Le3/j;Ly2/m;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/e;->a:Le3/j;

    iput-object p2, p0, Le3/e;->b:Ly2/m;

    iput p3, p0, Le3/e;->c:I

    iput-object p4, p0, Le3/e;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Le3/j;Ly2/m;ILjava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Le3/e;

    invoke-direct {v0, p0, p1, p2, p3}, Le3/e;-><init>(Le3/j;Ly2/m;ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le3/e;->a:Le3/j;

    iget-object v1, p0, Le3/e;->b:Ly2/m;

    iget v2, p0, Le3/e;->c:I

    iget-object p0, p0, Le3/e;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Le3/j;->e(Le3/j;Ly2/m;ILjava/lang/Runnable;)V

    return-void
.end method
