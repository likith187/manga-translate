.class final Lkotlin/coroutines/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/c$a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/coroutines/c$a$a;

.field private static final serialVersionUID:J


# instance fields
.field private final elements:[Lkotlin/coroutines/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/coroutines/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/coroutines/c$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/coroutines/c$a;->Companion:Lkotlin/coroutines/c$a$a;

    return-void
.end method

.method public constructor <init>([Lkotlin/coroutines/g;)V
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/c$a;->elements:[Lkotlin/coroutines/g;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lkotlin/coroutines/c$a;->elements:[Lkotlin/coroutines/g;

    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getElements()[Lkotlin/coroutines/g;
    .locals 0

    iget-object p0, p0, Lkotlin/coroutines/c$a;->elements:[Lkotlin/coroutines/g;

    return-object p0
.end method
