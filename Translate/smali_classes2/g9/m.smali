.class final Lg9/m;
.super Lkotlinx/coroutines/y;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lg9/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg9/m;

    invoke-direct {v0}, Lg9/m;-><init>()V

    sput-object v0, Lg9/m;->INSTANCE:Lg9/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/y;-><init>()V

    return-void
.end method


# virtual methods
.method public E0(I)Lkotlinx/coroutines/y;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/o;->a(I)V

    sget v0, Lg9/l;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/y;->E0(I)Lkotlinx/coroutines/y;

    move-result-object p0

    return-object p0
.end method

.method public x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Lg9/c;->INSTANCE:Lg9/c;

    sget-object p1, Lg9/l;->h:Lg9/i;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lg9/f;->G0(Ljava/lang/Runnable;Lg9/i;Z)V

    return-void
.end method
