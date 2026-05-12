.class final Lcom/google/android/material/textfield/h$b;
.super Lcom/google/android/material/shape/i$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final w:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Lcom/google/android/material/shape/n;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/shape/i$c;-><init>(Lcom/google/android/material/shape/n;Ld4/a;)V

    .line 4
    iput-object p2, p0, Lcom/google/android/material/textfield/h$b;->w:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/n;Landroid/graphics/RectF;Lcom/google/android/material/textfield/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/h$b;-><init>(Lcom/google/android/material/shape/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/textfield/h$b;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i$c;-><init>(Lcom/google/android/material/shape/i$c;)V

    .line 6
    iget-object p1, p1, Lcom/google/android/material/textfield/h$b;->w:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/google/android/material/textfield/h$b;->w:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/textfield/h$b;Lcom/google/android/material/textfield/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/h$b;-><init>(Lcom/google/android/material/textfield/h$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/h$b;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/h$b;->w:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/textfield/h;->u(Lcom/google/android/material/textfield/h$b;)Lcom/google/android/material/textfield/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    return-object p0
.end method
