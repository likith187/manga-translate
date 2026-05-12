.class public final Lm0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lm0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/h;

    invoke-direct {v0}, Lm0/h;-><init>()V

    sput-object v0, Lm0/h;->INSTANCE:Lm0/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/x0;)Ll0/a;
    .locals 0

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroidx/lifecycle/j;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/lifecycle/j;

    invoke-interface {p1}, Landroidx/lifecycle/j;->getDefaultViewModelCreationExtras()Ll0/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ll0/a$b;->INSTANCE:Ll0/a$b;

    :goto_0
    return-object p0
.end method

.method public final b(Landroidx/lifecycle/x0;)Landroidx/lifecycle/u0$c;
    .locals 0

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroidx/lifecycle/j;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/lifecycle/j;

    invoke-interface {p1}, Landroidx/lifecycle/j;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$c;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lm0/d;->INSTANCE:Lm0/d;

    :goto_0
    return-object p0
.end method

.method public final c(Lc9/c;)Ljava/lang/String;
    .locals 1

    const-string p0, "modelClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm0/a;->a(Lc9/c;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Landroidx/lifecycle/s0;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
