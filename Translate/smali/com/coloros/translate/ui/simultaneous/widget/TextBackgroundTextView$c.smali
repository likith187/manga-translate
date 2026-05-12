.class final Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Rect;
    .locals 0

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;->invoke()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
