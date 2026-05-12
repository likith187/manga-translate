.class final Landroidx/activity/result/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/activity/result/a;

.field private final b:Ld/a;


# direct methods
.method public constructor <init>(Landroidx/activity/result/a;Ld/a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/d$a;->a:Landroidx/activity/result/a;

    iput-object p2, p0, Landroidx/activity/result/d$a;->b:Ld/a;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/activity/result/a;
    .locals 0

    iget-object p0, p0, Landroidx/activity/result/d$a;->a:Landroidx/activity/result/a;

    return-object p0
.end method

.method public final b()Ld/a;
    .locals 0

    iget-object p0, p0, Landroidx/activity/result/d$a;->b:Ld/a;

    return-object p0
.end method
