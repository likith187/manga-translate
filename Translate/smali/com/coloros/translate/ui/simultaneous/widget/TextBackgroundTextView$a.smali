.class final Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;
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
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lb0/e;->a(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
