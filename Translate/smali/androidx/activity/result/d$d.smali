.class final Landroidx/activity/result/d$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/d;->h()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/activity/result/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/result/d$d;

    invoke-direct {v0}, Landroidx/activity/result/d$d;-><init>()V

    sput-object v0, Landroidx/activity/result/d$d;->INSTANCE:Landroidx/activity/result/d$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    .line 2
    sget-object p0, Lz8/c;->Default:Lz8/c$a;

    const/high16 v0, 0x7fff0000

    invoke-virtual {p0, v0}, Lz8/c$a;->nextInt(I)I

    move-result p0

    const/high16 v0, 0x10000

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/result/d$d;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
