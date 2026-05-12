.class public Lk1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ll1/i;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/res/AssetManager;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ll1/i;

    invoke-direct {p2}, Ll1/i;-><init>()V

    iput-object p2, p0, Lk1/a;->a:Ll1/i;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lk1/a;->b:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lk1/a;->c:Ljava/util/Map;

    const-string p2, ".ttf"

    iput-object p2, p0, Lk1/a;->e:Ljava/lang/String;

    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lr1/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lk1/a;->d:Landroid/content/res/AssetManager;

    return-void

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lk1/a;->d:Landroid/content/res/AssetManager;

    return-void
.end method

.method private a(Ll1/c;)Landroid/graphics/Typeface;
    .locals 2

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk1/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ll1/c;->c()Ljava/lang/String;

    invoke-virtual {p1}, Ll1/c;->b()Ljava/lang/String;

    invoke-virtual {p1}, Ll1/c;->d()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ll1/c;->d()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lk1/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p0, p0, Lk1/a;->c:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private e(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    const-string p0, "Italic"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "Bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    if-ne p2, p0, :cond_3

    return-object p1

    :cond_3
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ll1/c;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lk1/a;->a:Ll1/i;

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ll1/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ll1/i;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lk1/a;->b:Ljava/util/Map;

    iget-object v1, p0, Lk1/a;->a:Ll1/i;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lk1/a;->a(Ll1/c;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Ll1/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lk1/a;->e(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lk1/a;->b:Ljava/util/Map;

    iget-object p0, p0, Lk1/a;->a:Ll1/i;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk1/a;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Lcom/airbnb/lottie/b;)V
    .locals 0

    return-void
.end method
