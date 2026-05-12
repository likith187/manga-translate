.class public final Lcom/coloros/translate/screen/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/w$a;,
        Lcom/coloros/translate/screen/widget/w$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/translate/screen/widget/w$a;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Rect;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lcom/coloros/translate/screen/widget/w$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/w$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/w;->g:Lcom/coloros/translate/screen/widget/w$a;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILcom/coloros/translate/screen/widget/w$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/coloros/translate/screen/widget/w;->a:Landroid/graphics/Rect;

    .line 4
    iput-object p2, p0, Lcom/coloros/translate/screen/widget/w;->b:Landroid/graphics/Rect;

    .line 5
    iput p3, p0, Lcom/coloros/translate/screen/widget/w;->c:I

    .line 6
    iput p4, p0, Lcom/coloros/translate/screen/widget/w;->d:I

    .line 7
    iput p5, p0, Lcom/coloros/translate/screen/widget/w;->e:I

    .line 8
    iput-object p6, p0, Lcom/coloros/translate/screen/widget/w;->f:Lcom/coloros/translate/screen/widget/w$b;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILcom/coloros/translate/screen/widget/w$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/coloros/translate/screen/widget/w;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILcom/coloros/translate/screen/widget/w$b;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/translate/screen/widget/w$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/w;->f:Lcom/coloros/translate/screen/widget/w$b;

    return-object p0
.end method

.method public final b()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/w;->a:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/w;->e:I

    return p0
.end method
