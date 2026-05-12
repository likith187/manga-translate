.class final synthetic Le3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Le3/n;


# direct methods
.method private constructor <init>(Le3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/l;->a:Le3/n;

    return-void
.end method

.method public static a(Le3/n;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Le3/l;

    invoke-direct {v0, p0}, Le3/l;-><init>(Le3/n;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Le3/l;->a:Le3/n;

    invoke-static {p0}, Le3/n;->c(Le3/n;)V

    return-void
.end method
